class QrcodeSerializer < ActiveModel::Serializer
  attributes :id, :value
  has_one :wine
end
