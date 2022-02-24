class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def show
        @place = Place.find(params["id"])
    end

    def new
        @place = Place.new
    end

    def create
        @place = Pace.new(params["place"])
        @place.save
        redirect_to "/places"
    end



end

