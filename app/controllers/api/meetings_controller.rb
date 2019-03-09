class Api::MeetingsController < ApplicationController
  def index
    @meetings = Meeting.all
    render 'index.json.jbuilder'
  end

  def show
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    render "show.json.jbuilder"
  end

  def create
    @meeting = Meeting.new(
    title: params[:title],
    agenda: params[:agenda],
    time: params[:time]
      )
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def update
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    @meeting.title = params[:title] || @meeting.title
    @meeting.agenda = params[:agenda] || @meeting.agenda
    @meeting.time = params[:time] || @meeting.time
    if @meeting.save
      render 'show.json.jbuilder'
    else
      render 'errors.json.jbuilder', status: :unprocessible_entity
    end
  end

  def destroy
    the_id = params[:id]
    @meeting = Meeting.find_by(id: the_id)
    @meeting.destroy
    render 'destroy.json.jbuilder'
  end
end
