class ParticipantCarDriverSerializer
  def initialize(participants, car_drivers)
    @participants = participants
    @car_drivers = car_drivers
  end

  def serialize_json
    @participants.map do |participant|
      {
        "data": 
        {
          "id": "1",
          "type": "indy500",
          "attributes": 
            "car_drivers": 
              [{"driver_name": "Scott Dixon",
              "number": 9},
              {"driver_name": "Mario Andretti",
              "number": 1}],
            "particpants":
              [{"name": "Jeff Nelson"},
                {"name": "Ben H"}]
      }
}
    end
  end
end