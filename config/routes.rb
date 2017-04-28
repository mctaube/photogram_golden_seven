Rails.application.routes.draw do

  # create
  get("/photos/new", {:controller => "photos", :action => "new_form"})
  get("/create_photo", {:controller => "photos", :action => "create_row"})

  # read
  get("/photos", {:controller => "photos", :action => "index"})
  get("/photos/:da_id", {:controller => "photos", :action => "show"})

  # update
  get("/photos/:id_edit/edit", {:controller => "photos", :action => "edit_form"})
  get("/update_photo/:id_update", {:controller => "photos", :action => "update_row"})

  # delete
  get("/delete_photo/:id", {:controller => "photos", :action => "destroy_row"})

end
