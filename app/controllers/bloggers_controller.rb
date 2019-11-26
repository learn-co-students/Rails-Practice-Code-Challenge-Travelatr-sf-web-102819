class BloggersController < ApplicationController

    def index 
        @bloggers = Blogger.all 
    end

    def new 
        @blogger = Blogger.new
    end

    def edit 
        @blogger = Blogger.find(params[:id])
    end

    def update 
        @blogger = Blogger.find(params[:id])
        @blogger.update!(blog_params)
        redirect_to blogger_path(@blogger)
    end


    def show
        @blogger = Blogger.find(params[:id])
    end 

    def create 
        @blogger = Blogger.new(blog_params)
        @blogger.save
        redirect_to bloggers_path
    end
        
    private 

    def blog_params
        params.require(:blogger).permit(:name, :bio, :age)
      end



end