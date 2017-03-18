class SearchesController < ApplicationController

  NUMBER_OF_PEOPLE = {
    '1': 4,
    '2': 8,
    '3': 12
    }.freeze

  AVAILABLE_CITIES = ['bangalore', 'mumbai']

  CAR_DETAILS = {
    HATCHBACK: {
      price: '6~8', max_people: '4', detail: 'Indica or Similar'
    },
    SEDAN: {
      price: '9~12', max_people: '4', detail: 'Mahindra Logan or Similar'
    },
    SUV: {
      price: '11~13', max_people: '7', detail: 'Innova or Similar'
    },
    VAN: {
      price: '12~16', max_people: '10', detail: 'Tempo or Similar'
    }
  }

  attr_reader :location, :types

  def create
    @location = params[:location].downcase

    if AVAILABLE_CITIES.include?(location)
      process_request
      render 'show'
    else
      flash[:error] = "We dont serve this city yet!"
      redirect_to root_path
    end
  end

  def show
  end

  private

  def process_request
    @types = Vehicle.where(region: location, available: true).map(&:vehicle_type)
  end
end
