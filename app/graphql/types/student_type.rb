# frozen_string_literal: true

module Types
  class StudentType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :date_of_birth, GraphQL::Types::ISO8601DateTime
    field :place_of_birth, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :client_id, Integer, null: false
  end
end
