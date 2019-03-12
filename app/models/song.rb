class Song < ApplicationRecord

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
  length: { minimum: 5 } 
   belongs_to :catogrie
   belongs_to :user
   validates :title, :artist, :catogrie, :url, presence: true
   mount_uploader :url, AudioUploader
end
