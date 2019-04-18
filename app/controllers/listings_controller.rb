class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
    @breeds = Breed.all
    @sexes = Listing.sexes.keys
  end

  def create
    #whitelisted params as new_params
    @listing = Listing.create(listing_params)
    byebug
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end

  private

  def set_listing
    id = params[:id]
    @listing = Listing.find(id)
  end

  def listing_params
    params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
  end
end