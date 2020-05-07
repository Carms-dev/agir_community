class SavesController < ApplicationController

    def create
        post = Post.find(params[:format])
        save = Save.new(user_id: current_user.id, post_id: post.id)
        save.save
        # AJAX needed
        
        redirect_to space_path(post.space, anchor: "post-#{post.id}")
    end
    
    def destroy
        # save = Save.find(params[:id])
        save = Save.find_by(user_id: current_user.id, post_id: params[:id])
        save.destroy
        # AJAX needed

        redirect_to space_path(save.post.space, anchor: "post-#{save.post.id}")
    end
    
end
