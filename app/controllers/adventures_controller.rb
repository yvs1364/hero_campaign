class AdventuresController < ApplicationController
    def index
        @adventure = Adventure.all
    end
     def new
        @adventure = Adventure.new(adventure_params)
    end
    def create
        @adventure = Adventure.new(adventure_params)
        @adventure.name = "legendary"
        @adventure.user_id = current_user.id
        if @adventure.save! 
           redirect_to  adventures_path
        else
            redirect_to new_adventure_path
        end
    end
    private 
    def adventure_params
        params.permit(:name, :user_id)
    end
end
