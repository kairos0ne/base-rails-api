class User < ApplicationRecord
validates_uniqueness_of :username, :message => "Username already taken, please user a different username"
validates_uniqueness_of :email, :message => "That email is already taken, please reset your password to get an email with reset instructions"
validates_length_of :password, :within => 8..20, :too_long => "Password needs to be between 8 and 20 characters.", :too_short => "Password needs to be between 8 and 20 characters."
validates_confirmation_of :password, :message => "Your password should match" 
    has_secure_password
    has_many :clients, :dependent => :delete_all
end
