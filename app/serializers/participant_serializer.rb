class ParticipantSerializer
  include JSONAPI::Serializer
  attributes :name, :age
end