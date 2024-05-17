Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
  post("/update_user/:path_username", { :controller => "users", :action => "update"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo_id", { :controller => "photos", :action => "show"})
  get("/add_photo", { :controller => "photos", :action => "add"})
  get("/delete_photo/:path_photo_id", { :controller => "photos", :action => "delete"})
  post("/update_photo/:path_photo_id", { :controller => "photos", :action => "update"})

  get("/add_comment", { :controller => "comments", :action => "add"})
end
