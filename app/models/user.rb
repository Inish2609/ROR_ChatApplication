class User < ApplicationRecord
    validates :username,presence:true,uniqueness:{case_sensitive:false}
    has_secure_password
    has_many :messages
end