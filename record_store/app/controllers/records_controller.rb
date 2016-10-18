class RecordsController < ApplicationController

  def show
    @record = Record.find(params[:id])
  end

  def index
    @records = Record.all
  end

  def new
    @record = Record.new
  end

  def destroy
    record = Record.find(params[:id])
    record.destroy
    redirect_to records_path
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    record = Record.find(params[:id])
    record.update(record_params)
    redirect_to record
  end

  private

  def record_params
    params.require(:record).permit(:title, :artist, :year, :cover_art, :song_count)
  end

end
