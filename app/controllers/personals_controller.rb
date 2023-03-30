class PersonalsController < ApplicationController
  def index
    @personals = Personal.all
  end
end
