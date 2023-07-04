class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password, :confirm_password, :type_of_investment, :gender, :location
end
