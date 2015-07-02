require 'rails_helper'
include ActionDispatch::TestProcess

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"

  describe "parsing csv" do
    it "valid csv should be parsed" do
      file = fixture_file_upload('files/test10strings.csv', 'text/csv')
      resource = Resource.create(filename: file)
      products = Product.load_resources! resource
      products.size.should match(10)
    end
  end
end
