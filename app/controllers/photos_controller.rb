class PhotosController < ApplicationController
def show

id_number=params["the_id_number"]
  p=Photo.find(id_number)
  @the_caption=p.caption
  @the_image_url=p.source
  @created_at=p.created_at
  render("show.html.erb")
end

def index
  @all_photos=Photo.all
  render("index.html.erb")
end

end
