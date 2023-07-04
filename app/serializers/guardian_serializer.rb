class GuardianSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :country, :city, :address
end
