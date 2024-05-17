Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
  post("/update_user/:path_username", { :controller => "users", :action => "update"})
  post("/delete_user/:path_username", { :controller => "users", :action => "delete"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo_id", { :controller => "photos", :action => "show"})
  post("/update_photo/:path_photo_id", { :controller => "photos", :action => "update"})
  post("/delete_photo/:path_photo_id", { :controller => "photos", :action => "delete"})

  post("/add_comment", { :controller => "comments", :action => "add"})
end
