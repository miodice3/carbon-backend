class CommentsController < ApplicationController

    def create
        
        comment = Comment.new do |u|
            u.fed_id = comment_params[:id]
            u.comment = comment_params[:comment]
        end
        comment.save
    end

    def index
        # byebug
        comments = Comment.all
        render json: comments
    end

    def show
        comments = Comment.where(fed_id: params[:id])
        render json: comments
    end

    private

    def comment_params
        params.require(:comment).permit(:id, :comment)
    end

end
