class WineSerializer < ActiveModel::Serializer
    attributes :id, :name, :drink_date, :foods, :vintages, :types, :countries, :wineries
  end
  