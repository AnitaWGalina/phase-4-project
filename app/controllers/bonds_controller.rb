class BondsController < ApplicationController 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        bond=Bond.all
        render json: bond
    end

    def show
        bond = find_bond
        render json: bond
    end

    def create
        bond = Bond.create(bond_params)
        render json: bond, status: :created
    end
    
    def update
        bond = find_bond
        Bond.update(bond_params)
        render json: bond
      end
    
      def destroy
        bond = find_bond
        Bond.destroy
        head :no_content
      end

      private

    def find_bond
        Bond.find(params[:id])
    end
    
    def bond_params
        params.permit(:from, :to, :balance, :interest)
    end
    
    def render_not_found_response
        render json: { error: "Bond not found" }, status: :not_found
    end
end
