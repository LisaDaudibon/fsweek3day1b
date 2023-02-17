class Gossip < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes

  # validates :user, 
  #   length: { minimum: 2 },
  #   length: { maximum: 500 }
  # validates :comments, presence: true
end
