class RecordsController < ApplicationController

  def show
    @record = Record.find(params[:id])
  end

  def index
    @records = Record.all
  end

end
