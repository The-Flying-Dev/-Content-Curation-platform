class Comment < ApplicationRecord
  #field must have data
  validates :content, presence: true

  belongs_to :user
  belongs_to :content
end
