class UsersController < ApplicationController

    before_action :find_article, only: [:edit, :update, :show]

    def new
        @user = User.new
    end
    
    def index
        @users = User.all
    end
    
    def create  
        @user = User.create(user:params[:user][:user],password:params[:user][:password],name:params[:user][:name],
         secondname:params[:user][:secondname],lastname:params[:user][:lastname],sec_lastname:params[:user][:sec_lastname],
         identification:params[:user][:identification],number_identification:params[:user][:number_identification],
         age:params[:user][:age])
         redirect_to @user
     end

    def update
        @user.update(user:params[:user][:user],password:params[:user][:password],name:params[:user][:name],
            secondname:params[:user][:secondname],lastname:params[:user][:lastname],sec_lastname:params[:user][:sec_lastname],
            identification:params[:user][:identification],number_identification:params[:user][:number_identification],
            age:params[:user][:age])
            redirect_to @user
    end
    
    def find_article
        @user = User.find(params[:id]) 
    end
    
end
