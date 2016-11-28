class Profile < ApplicationRecord
  belongs_to :user
  validates_associated :user

  def create(user)
    @profile = Profile.new
    @profile.user_id = user.id
    @profile.save
  end
end
