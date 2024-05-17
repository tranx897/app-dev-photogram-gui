class CommentsController < ApplicationController
  def add
    # query string: photo_id=785&author_id=81&comment_body=new+comment
    comment = Comment.new
    comment.photo_id = params['photo_id']
    comment.author_id = params['author_id']
    comment.body = params['comment_body']
    comment.save

    redirect_to("/photos/#{comment.photo_id}")
  end
end
