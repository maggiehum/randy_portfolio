class PersonalsController < ApplicationController
  def index
    @personals = Personal.all
  end

  def show
    @personal = Personal.find(params[:id])
  end
end
