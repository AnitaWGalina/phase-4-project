class BillsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        bill=Bill.all
        render json: bill
    end

    def show
        bill = find_bill
        render json: bill
    end

    def create
        bill = Bill.create(bill_params)
        render json: bill, status: :created
    end
    
    def update
        bill = find_bill
        Bill.update(bill_params)
        render json: bill
      end
    
      def destroy
        bill = find_bill
        Bill.destroy
        head :no_content
      end

      private

    def find_bill
        Bill.find(params[:id])
    end
    
    def bill_params
        params.permit(:from, :to, :balance, :interest)
    end
    
    def render_not_found_response
        render json: { error: "Bill not found" }, status: :not_found
    end
end
