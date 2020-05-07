class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:format])
        @space = @post.space
        @comment = Comment.new(post_id: @post.id, user_id: current_user.id)

        if @comment.save
            redirect_to space_path(@space, anchor: "post-#{@post.id}")
        else
            render "spaces/show"
        end
    end
end
