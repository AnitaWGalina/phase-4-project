class SharesController < ApplicationController 
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        share=Share.all
        render json: share
    end

    def show
        share = find_share
        render json: share
    end

    def create
        share = Share.create(share_params)
        render json: share, status: :created
    end
    
    def update
        share = find_share
        Share.update(share_params)
        render json: share
      end
    
      
    
      def destroy
        share = find_share
        Share.destroy
        head :no_content
      end

      private

    def find_share
        Share.find(params[:id])
    end
    
    def share_params
        params.permit(:from, :to, :balance, :interest)
    end
    
    def render_not_found_response
        render json: { error: "Share not found" }, status: :not_found
    end
end
