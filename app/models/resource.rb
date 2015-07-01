class Resource < ActiveRecord::Base
  mount_uploader :filename, FileUploader
end
