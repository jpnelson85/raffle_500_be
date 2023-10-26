class ParticipantsController < ApplicationController
  def create
    @participant = Participant.new(name: params[:name], age: params[:age])
    if @participant.save
      render json: ParticipantSerializer.new(@participant)
    else
      render json: {detail: "Participant not created"}
    end
  end

  def delete
    participate = Participant.find(params[:id])
    participate.destroy
  end
end