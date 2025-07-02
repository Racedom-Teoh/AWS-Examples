# 引入所需的庫
require 'aws-sdk-s3'       # 用來與 AWS S3 進行交互
require 'pry'              # 用來調試 Ruby 程式
require 'securerandom'     # 用來生成隨機數和安全隨機字串（UUID）

# 獲取 S3 桶的名稱，這是來自環境變量 BUCKET_NAME 的值
bucket_name = ENV['BUCKET_NAME'] 

# 設定 S3 的區域
region = "ap-northeast-1"

# 初始化 S3 客戶端
client = Aws::S3::Client.new

# 創建一個新的 S3 桶
resp = client.create_bucket({
  bucket: bucket_name,  # 使用環境變量指定的桶名稱
  create_bucket_configuration: {
    location_constraint: region  # 指定區域
  }, 
})
#binding.pry #debug use 

# 隨機選擇 1 到 6 之間的數字，這個數字代表將要上傳的檔案數量
number_of_files = 1 + rand(6)

puts "number_of_files: #{number_of_files}" # 打印要上傳的檔案數量

# 迭代 number_of_files 次，創建並上傳文件
number_of_files.times.each do |i|
    puts "i: #{i}"  # 打印當前處理的檔案索引
    filename = "file_#{i}.txt" # 為每個檔案創建唯一的文件名
    output_path = "/tmp/#{filename}" # 設定檔案的輸出路徑

    # 創建一個新的檔案並寫入隨機的 UUID
    File.open(output_path, 'w') do |f|
        f.write SecureRandom.uuid
    end

    # 以二進位模式打開剛剛創建的檔案
    File.open(output_path, 'rb') do |file|  # 使用 S3 客戶端上傳檔案到指定的桶
        client.put_object(
            bucket: bucket_name,  # 使用指定的桶名稱
            key: filename,        # 設定 S3 中檔案的名稱
            body: file            # 上傳檔案的內容
        )
    end
end
