class GolvesController < ApplicationController
  def index
  end

  def new
    @golf = Golf.new
  end
end