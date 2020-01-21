class GrudgesController < ApplicationController
    def index
        @grudges = Grudge.all
        render json: @grudges
    end

    def create
        Grudge.create grudge_params
    end

    private 

    def grudge_params
        params.require(:grudge).permit([:offender, :offense, :description])
    end
end
