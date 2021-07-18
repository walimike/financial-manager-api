class CustomerSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :tin_no, :email, :phone_number, :owner

  def owner
    {
      owner_id: self.object.user.id,
      owner_email: self.object.user.email
    }
  end
end
