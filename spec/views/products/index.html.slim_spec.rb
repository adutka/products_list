require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :sku => 1,
        :name => "Name",
        :field1 => "Field1",
        :field2 => "Field2",
        :field3 => "Field3",
        :field4 => "Field4",
        :dimension => "Dimension",
        :price => "9.99"
      ),
      Product.create!(
        :sku => 1,
        :name => "Name",
        :field1 => "Field1",
        :field2 => "Field2",
        :field3 => "Field3",
        :field4 => "Field4",
        :dimension => "Dimension",
        :price => "9.99"
      )
    ])
  end

  it "renders a list of products" do
    allow(view).to receive_messages(:will_paginate => nil)
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Field1".to_s, :count => 2
    assert_select "tr>td", :text => "Field2".to_s, :count => 2
    assert_select "tr>td", :text => "Field3".to_s, :count => 2
    assert_select "tr>td", :text => "Field4".to_s, :count => 2
    assert_select "tr>td", :text => "Dimension".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
