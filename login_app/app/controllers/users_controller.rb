class UsersController < ApplicationController
    def login
=begin
        @user = User.all
        @u = params[:username]
        @p = params[:password]
        @en_pass = BCrypt::Password.create(@p)
        if @en_pass == @p
            @t = "true" 
        end
        @user.each do |u|
            if u.username == @u && u.password == BCrypt::Password.new(@en_pass)
                @st = "true"
            end
        end
=end
        @apple = Apple.all
        @u = params[:username]
        @p = params[:password]
        @a1 = Apple.find(7)
        @apple.each do |a|
            if a.username == @u
                @st = "true"
                @id = a.id
                @find = Apple.find(@id)
            end
        end
        #@u_find = Apple.find_by username: @u
        #@st = @u_find.authenticate(@u)
    end
    def register
        @u = params[:username]
        @p = params[:password]
        @en_pass = BCrypt::Password.create(@p)
        @st = User.create(:username=>@u,:password=>@en_pass)
    end
end