class Product < ActiveRecord::Base
  validates :sku, presence: true

  def self.load_resources! resource
    all_lines = SmarterCSV.process(resource.filename.path)
    Product.create(all_lines)
  end
end
