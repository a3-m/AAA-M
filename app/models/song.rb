class Song < ApplicationRecord
   belongs_to :catogrie
   belongs_to :user
   has_many :likes
   validates :title, :artist, :catogrie, :url, presence: true
   mount_uploader :url, AudioUploader
end
