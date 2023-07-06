class ShareSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :from, :to, :balance, :interest
end
