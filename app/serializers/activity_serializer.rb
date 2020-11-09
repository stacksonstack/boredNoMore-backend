class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :activity_type, :participants, :price, :activity_link, :accessibility
end
