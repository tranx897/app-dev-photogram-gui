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

  def add
    # Query String format: image_url=https%3A%2F%2Frobohash.org%2Fdolorehicincidunt.png%3Fsize%3D300x300%26set%3Dset1&image_caption=New+photo&image_owner=81
    photo = Photo.new

    photo.image = params['image_url']
    photo.caption = params['image_caption']
    photo.owner_id = params['image_owner']

    photo.save

    redirect_to("/photos/#{photo.id}")
  end

  def delete
    photo_id = params['path_photo_id']
    photo = Photo.where({ :id => photo_id}).first
    photo.destroy

    redirect_to("/photos")
  end
end
