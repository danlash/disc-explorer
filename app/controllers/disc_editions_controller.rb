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
    
    respond_to do |format|
      if @disc_edition
        format.html { redirect_to disc_path(@disc), notice: 'Disc was successfully created.' }
        format.json { render json: @disc_edition, status: :created, location: @disc }
      else
        format.html { render action: "new" }
        format.json { render json: @disc.errors, status: :unprocessable_entity }
      end
    end
  end
end
