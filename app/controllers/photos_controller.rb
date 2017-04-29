class PhotosController < ApplicationController

  def new_form
    render("photos/new_form.html.erb")
  end

  def create_row
    url = params[:da_source]
    cap = params[:da_caption]
    new_photo= Photo.new
    new_photo.source = url
    new_photo.caption = cap
    new_photo.save
    # render("photos/create_row.html.erb")
    redirect_to("/photos")
  end

  def index
    @list_of_all_my_photos = Photo.all
    render("photos/index.html.erb")
  end

  def show
    the_id = params[:da_id]
    @my_photo = Photo.find(the_id)
    render("photos/show.html.erb")
  end

  def edit_form
    the_id_edit = params[:id_edit]
    @my_photo_to_edit = Photo.find(the_id_edit)
    render("photos/edit_form.html.erb")
  end

  def update_row
    the_id_update = params[:id_update]
    my_photo_to_update = Photo.find(the_id_update)
    my_photo_to_update.caption = params[:da_caption_update]
    my_photo_to_update.source = params[:da_source_update]
    my_photo_to_update.save
    redirect_to("/photos/#{my_photo_to_update.id}")
    # render("photos/update_row.html.erb")
  end

  def destroy_row
    id_delete = params[:id_delete]
    del_photo = Photo.find(id_delete)
    del_photo.destroy
    redirect_to("/photos")
    # render("photos/destroy_row.html.erb")
  end

end
