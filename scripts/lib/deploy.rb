require 'aliyun/oss'
require 'find'

class Deploy

  attr_reader :access_key_id, :access_key_secret, :endpoint, :bucket_name

  def initialize(id, secret, params = {})
    @access_key_id     = id
    @access_key_secret = secret
    @endpoint          = params[:endpoint] || 'oss-cn-hongkong.aliyuncs.com'
    @bucket_name       = params[:bucket_name] || 'erlim'
  end

  def client
    @client ||= Aliyun::OSS::Client.new(
      endpoint: endpoint,
      access_key_id: access_key_id,
      access_key_secret: access_key_secret
    )
  end

  def buckets
    @buckets ||= client.list_buckets
  end

  def bucket
    @bucket ||= client.get_bucket(bucket_name)
  end

  # 文件列表
  def objects
    bucket.list_objects
  end

  # 远程文件列表
  def remote_objects
    objects.map(&:key)
  end

  # 本地文件列表
  def local_objects
    files = []
    Find.find('_site') { |path| files << path if File.file?(path) }
    files.compact
  end

  # 上传到远程的文件列表
  def object_diffs
    local_objects - remote_objects
  end

  # 推送本地文件到远程
  def push_object(path)
    if path.start_with?('_site')
      remote_path = path.sub('_site/', '')
    else
      remote_path = path;
    end
    bucket.put_object(remote_path, file: path)

    check_push_status(path)
  end

  def check_push_status(path)
    if remote_objects.include? path
      upload_files[:S] << path
      puts "文件上传成功：#{path}"
      true
    else
      upload_files[:F] << path
      puts "文件上传失败：#{path}"
      false
    end
  end

  def bulk_push_object(files = local_objects)
    upload_files_reload

    files.each do |file_path|
      push_object(file_path)
    end

    puts_upload_files
  end

  def upload_files
    @upload_files ||= {
      S: [],
      F: []
    }
  end

  private

  def upload_files_reload
    @upload_files = nil
  end

  def puts_upload_files
    puts '========================================'
    puts "本次上传结果：成功（#{upload_files[:S].count}），失败（#{upload_files[:F].count}）"
    failed_files = upload_files[:F].join("\n")
    puts "失败文件：\n #{failed_files}" if failed_files.size > 0
    puts '========================================'
  end

end