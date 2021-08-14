class ClicksController < ApplicationController
  def show
    # get city
    city = request.location.city || 'Mars'
    # find or create
    @click = Click.find_or_create_by(city: city)
  end

  def update
    @click = Click.find(params[:id])
    @click.update!(click: @click.click + 1)
  end
end