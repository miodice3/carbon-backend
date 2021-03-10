class CommentsController < ApplicationController

    def create
        byebug
        comment = Comment.create(comment_params)
    end

    def index
        byebug
        comments = Comment.all
        render json: comments
    end

    # def show
    # end

    private

    def comment_params
        byebug
        params.require(:comment).permit(:fedid, :comment)
    end

end
