class DonationSerializer < ActiveModel::Serializer
  attributes :id, :amount, :user_id, :charity_id, :charity

  def charity
    return Charity.find(object.charity_id)
  end
end
