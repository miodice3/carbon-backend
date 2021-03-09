class CommentsController < ApplicationController

    def create
        byebug
        comment = Comment.create(comment_params)
    end

    def index
        comments = Comment.all
        render json: comments
    end

    # def show
    # end

    private

    def comment_params
        params.require(:comment).permit(:fedid, :comment)
    end

end
