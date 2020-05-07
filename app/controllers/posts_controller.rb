class PostsController < ApplicationController
    before_action :find_post, only: [ :show, :edit, :update, :destroy]
    def show
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new(post_params)
        @space = Space.find(params[:space_id])
        @post.space = @space
        @post.user = current_user
        
        if @post.save
            redirect_to space_path(@space)
        else
            render "spaces/show"
        end
    end
    
    def edit
    end
    
    def update
        if @post.update(post_params)
            redirect_to post_path(@post)
        else
            render "spaces/show"
        end
    end
    
    def destroy
        @post.destroy

        redirect_to space_path(@post.space)
    end

    private

    def post_params
        params.require(:post).permit(:title, :content, photos: [])
    end

    def find_post
        @post = Post.find(params[:id])
    end
    
end
