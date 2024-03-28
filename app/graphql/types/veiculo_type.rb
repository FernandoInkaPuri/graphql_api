module Types
  class VeiculosType < Types::BaseObject
    # Precisa de id?
    field :marca, String
    field :modelo, String
    field :ano, Int
    field :placa, String
  end
end
