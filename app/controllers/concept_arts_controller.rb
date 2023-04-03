class ConceptArtsController < ApplicationController
  def index
    @concepts = ConceptArt.all
  end
end
