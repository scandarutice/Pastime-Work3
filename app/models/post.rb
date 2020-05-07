class Post < ApplicationRecord
  validates_presence_of :content
  belongs_to :user

  validates :content, presence: true, unless: :image?
  mount_uploader :image, ImageUploader
end
