class Educator < ApplicationRecord

  acts_as_votable

  has_attached_file :photo, styles: { large: "500X500>", medium: "300x300!", thumb: "30x30>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
