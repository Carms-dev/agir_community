class LikesController < ApplicationController
    def create
        post = Post.find(params[:format])
        like = Like.create(post_id: post.id, user_id: current_user.id)
        like.save
        # AJAX needed
        redirect_to space_path(post.space, anchor: "post-#{post.id}")
    end
    
    def destroy
        like = Like.find_by(user_id: current_user.id, post_id: params[:id])
        like.destroy
        # AJAX needed
        redirect_to space_path(like.post.space, anchor: "post-#{like.post.id}")
    end
end
