class User < ActiveRecord::Base
    has_secure_password
    validates :username, presence: true
    validates :email, presence: true
    validates :username, uniqueness: true
    # authenticate
    # auto validate that your have typed in a password
    # validates that the password_confirmation and password match IF you included password_confirmation as a param
    # password recovery
    # password=

    # def password=(string)
    #     password_digest = hashing_algorithm(string + randomly generated salt)
    # end
end