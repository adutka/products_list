require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :sku => 1,
      :name => "Name",
      :field1 => "Field1",
      :field2 => "Field2",
      :field3 => "Field3",
      :field4 => "Field4",
      :dimension => "Dimension",
      :price => "9.99"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Field1/)
    expect(rendered).to match(/Field2/)
    expect(rendered).to match(/Field3/)
    expect(rendered).to match(/Field4/)
    expect(rendered).to match(/Dimension/)
    expect(rendered).to match(/9.99/)
  end
end
