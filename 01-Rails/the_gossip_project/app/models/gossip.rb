class Gossip < ApplicationRecord
	validates :anonymous_author, :content, presence: true
end
