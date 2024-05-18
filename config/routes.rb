Rails.application.routes.draw do

  get("/", { :controller => "users", :action => "index"})

  get("/users", { :controller => "users", :action => "index"})
  get("/users/:path_username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "add"} )
  post("/update_user/:path_id", { :controller => "users", :action => "update"})

  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_photo_id", { :controller => "photos", :action => "show"})
  get("/delete_photo/:path_photo_id", { :controller => "photos", :action => "delete"})
  post("/add_photo", { :controller => "photos", :action => "add"})
  post("/update_photo/:path_photo_id", { :controller => "photos", :action => "update"})

  post("/add_comment", { :controller => "comments", :action => "add"})
end
