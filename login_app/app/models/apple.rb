class Apple < ApplicationRecord
    attr_accessor :password

    before_validation(on: :create) do
        encrypt_password
    end

    def authenticate(password)
        password_hash == BCrypt::Engine.hash_secret(password,password_salt)
    end

    private
    
    def encrypt_password
        self.password_salt = BCrypt::Engine.generate_salt
        self.password_hash = BCrypt::Engine.hash_secret(password,password_salt)
    end
end