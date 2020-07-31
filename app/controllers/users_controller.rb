class UsersController < ApplicationController
    
  configure do
        enable :sessions
        set :session_secret, "thesecret"
      end

      get '/signup' do
        if !logged_in? #if not logged in
            erb :'users/signup'
        else #if logged in
            @user == current_user
            redirect to '/entries'
        end
     end

      post '/signup' do
          @user = User.new(:username => params[:username], :email => params[:email], :password => params[:password])
            if @user.save
              session[:user_id] = @user.id
              redirect to '/entries'
            else
              flash[:error] = @user.errors.full_messages.join(". ")
              redirect to '/signup'
            end
      end

      get '/users/edit_user' do
        erb :'users/edit_user'
      end

      patch '/users/edit_user' do
        @user = User.find_by(:username => params[:username])
        # binding.pry
            if @user && logged_in?
                @user.update(username: params[:username], email: params[:email], password: params[:password])
                if @user.save
                  redirect to "users/edit_user"
                else
                  flash[:error] = @user.errors.full_messages.join(". ")
                  redirect to "users/edit_user"
                end
            end
        end




end