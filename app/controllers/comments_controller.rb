class CommentsController < ApplicationController
    before_action :authenticate, only: [:create]
    def index 
        comments = Comment.all
        render json: {comments: comments}, include: [:user]
    end

    def create
        comment = Comment.create(
            content: params[:content],
            dog_id: params[:dog_id],
            user_id: @user
        )
        render json: {comment: comment}
    end

end
