class User < ApplicationRecord

validates :username, :email, :bio,  presence: true


end
