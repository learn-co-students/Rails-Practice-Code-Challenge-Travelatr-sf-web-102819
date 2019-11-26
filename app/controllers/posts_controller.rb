class PostsController < ApplicationController

    def index 
        @posts = Post.all
    end

    def new
        @post = Post.new 
    end 

    def create 
        # byebug
        @post = Post.new(post_params)
        if @post.valid?
            @post.save
            redirect_to post_path(@post)
        else
            render "new"
        end 
    end 

    def show
        @post = Post.find(params[:id])
        # byebug
    end

    def edit 
        @post = Post.find(params[:id])
    end

    def update 
        @post = Post.find(params[:id])
        @post.update!(post_params)
        redirect_to post_path(@post)
    end

    private 

    def post_params 
        params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
    end







end