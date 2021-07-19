class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :email2, :email_verified, :nickname, :picture, :profile_type

  def profile_type
    self.object.user.user_type
  end
end
