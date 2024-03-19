# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :clients, [Types:ClientType], null: false
    def  clients
      Client.all
    end

    field :client, Types:ClientType, null: false do
      argument :id, ID, required: true
    end
    def client(id:)
      Client.find(id)
    end
  end
end
