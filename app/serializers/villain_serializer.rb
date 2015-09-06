class VillainSerializer < ActiveModel::Serializer
  attributes :id, :name, :at_large, :last_sighted
end
