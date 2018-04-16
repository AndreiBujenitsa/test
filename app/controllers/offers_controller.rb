class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]

  def index
    @offers = Offer.all
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)

    respond_to do |format|
      format.html do 
        if @offer.save
          redirect_to offers_path, notice: 'Offer was successfully created.'
        else
         render :new
        end
      end
    end
  end

  def update
    respond_to do |format|
      if @offer.update(offer_params)
        format.html { redirect_to offers_path, notice: 'Offer was successfully updated.' }
        format.json { render :show, status: :ok, location: @offer }
      else
        format.html { render :edit }
        format.json { render json: @offer.errors.full_messages, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @offer.destroy
    respond_to do |format|
      format.html { redirect_to offers_url, notice: 'Offer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_offer
      @offer = Offer.find(params[:id])
    end

    def offer_params
      params.require(:offer).permit(:name, :advertiser, :payout)
    end
end
