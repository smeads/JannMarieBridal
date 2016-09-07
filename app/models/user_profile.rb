class UserProfile < ActiveRecord::Base
  belongs_to :user
  validates :user, presence: true
  has_attached_file :image, styles: { large: "700x500>", medium: "460x309>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
