class DistributedHealth
	include Mongoid::Document
	field :ph, type: Float
	field :chlorine, type: Float
	field :magnified_Link, type: String
    field :taste, type: String
    field :odor, type: String
    field :temperature, type: Float
    field :mercury, type: Float
    field :hardness, type: Float
    field :lat, type: Float
    field :long, type: Float
end
