class DiscEditionsController < ApplicationController
  def new
    @disc = Disc.find(params[:disc_id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @disc }
    end
  end

  def create
  	@disc = Disc.find(params[:disc_id])
    @disc_edition = @disc.disc_editions.create(params[:disc_edition])
    redirect_to disc_path(@disc)
  end
end
