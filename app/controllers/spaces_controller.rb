class SpacesController < ApplicationController
    before_action :find_space, only: [ :show, :edit, :update, :destroy ]

    def index
        @spaces = Space.all.sort
    end

    def show
        @post = Post.new
    end
    
    def new
        @space = Space.new
    end
    
    def create
        @space = Space.new(space_params)

        if @space.save
            redirect_to space_path(@space)
        else
            render :new
        end
    end
    
    def edit
    end
    
    def update
        if @space.update(space_params)
            redirect_to space_path(@space)
        else
            render :edit
        end
    end
    
    def destroy
        @space.destroy

        redirect_to spaces_path
    end
    
    private
    
    def space_params
        params.require(:space).permit(:name, :description, :icon)
    end
    
    def find_space
        @space = Space.find(params[:id])
    end
end
