class Content < ApplicationRecord
    #fields must have data
    validates :url, :descripton, :image, :title, presence: true

    belongs_to :user
    has_many :comments
end
