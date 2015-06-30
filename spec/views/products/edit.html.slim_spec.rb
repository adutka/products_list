require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :sku => 1,
      :name => "MyString",
      :field1 => "MyString",
      :field2 => "MyString",
      :field3 => "MyString",
      :field4 => "MyString",
      :dimension => "MyString",
      :price => "9.99"
    ))
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_sku[name=?]", "product[sku]"

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_field1[name=?]", "product[field1]"

      assert_select "input#product_field2[name=?]", "product[field2]"

      assert_select "input#product_field3[name=?]", "product[field3]"

      assert_select "input#product_field4[name=?]", "product[field4]"

      assert_select "input#product_dimension[name=?]", "product[dimension]"

      assert_select "input#product_price[name=?]", "product[price]"
    end
  end
end
