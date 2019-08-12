class Api::V1::DonationsController < ApplicationController
skip_before_action :authorized, only: [:index, :create, :show]
  def index
    @donations = Donation.all
    render json: @donations
  end

  def show
    @donation = Donation.find(params[:id])
    render json: @donation
  end

  def create
    @donation = Donation.create!(donation_params)
    render json: @donation
  end

  private

  def donation_params
    params.permit(:amount, :user_id, :charity_id )
  end

end
