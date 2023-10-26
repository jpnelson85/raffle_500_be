class CarDriverSerializer
  include JSONAPI::Serializer
  attributes :driver_name, :number, :start_pos, :car_type, :previous_winner
end