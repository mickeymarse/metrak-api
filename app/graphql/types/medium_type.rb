# frozen_string_literal: true

module Types
  class MediumType < Types::BaseObject
    field :title, String
    field :type, String
    field :rating, Float
    field :genre, String
    field :review, String
  end
end
