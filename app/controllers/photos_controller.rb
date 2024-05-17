class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all.order({ :created_at => :desc})
    render({ :template => "photo_templates/index"})
  end

  def show
    photo_id = params['path_photo_id']
    @photo = Photo.where({ :id => photo_id}).first
    render({ :template => "photo_templates/show"})
  end
end
