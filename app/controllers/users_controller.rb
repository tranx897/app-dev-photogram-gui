class UsersController < ApplicationController
  def index
    matching_users = User.all
    @list_of_users = matching_users.order({ :username => :asc})
    render({ :template => "user_templates/index"})
  end

  def show
    @username = params['path_username']
    @user = User.where({ :username => @username})[0]

    if @user == nil
      redirect_to("/404")
    else
      render({ :template => "user_templates/show" })
    end
  end

  def update
    user_id = params['path_id']
    user = User.where({ :id => user_id}).first

    user.username = params['username']
    user.save

    redirect_to("/users/#{user.username}")
  
  end

end
