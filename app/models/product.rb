class Product < ActiveRecord::Base
  def self.load_resources! resource
    all_lines = SmarterCSV.process(resource.filename.path)
    Product.create(all_lines)
  end
end
