class Api::SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    render "show.json.jbuilder"
  end

  def create
    @speaker = Speaker.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    email: params[:email]
      )
    if @speaker.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end
  def update
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    @speaker.first_name = params[:first_name] || @speaker.first_name
    @speaker.last_name = params[:last_name] || @speaker.last_name
    @speaker.email = params[:email] || @speaker.email
    if @product.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end
  def destroy
    the_id = params[:id]
    @speaker = Speaker.find_by(id: the_id)
    @speaker.destroy
    render 'destroy.json.jbuilder'
  end
end
