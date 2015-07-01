class ResourcesController < ApplicationController
def create
    resource = Resource.create(filename: params[:file])
    resource.is_processed = true if Product.load_resources!(resource)
    resource.save!
    redirect_to products_path
  end
end