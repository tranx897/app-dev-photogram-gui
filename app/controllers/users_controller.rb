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

end
