class StoryboardsController < ApplicationController
  def index
    @storyboards = Storyboard.all
  end
end
