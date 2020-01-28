class Comment < ApplicationRecord
  belongs_to :issue
  validates :content, length: { minimum: 20 }
end
