class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order({ :created_at => :desc})
    render({ :template => "photo_templates/index"})
  end

  def show
    
  end
end
