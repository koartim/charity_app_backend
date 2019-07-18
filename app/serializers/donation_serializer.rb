class DonationSerializer < ActiveModel::Serializer
  attributes :id, :amount, :user_id, :charity_id
end
