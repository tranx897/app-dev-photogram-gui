Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
  post("/update_user/:path_username", { :controller => "users", :action => "update"})
  post("/delete_user/:path_username", { :controller => "users", :action => "delete"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo_id", { :controller => "photos", :action => "show"})
  get("/add_photo", { :controller => "photos", :action => "add"})
  post("/update_photo/:path_photo_id", { :controller => "photos", :action => "update"})
  get("/delete_photo/:path_photo_id", { :controller => "photos", :action => "delete"})

  get("/add_comment", { :controller => "comments", :action => "add"})
end
