class RequestsController < ApplicationController
  before_action :find_request, only: [:show, :edit, :update, :destroy]
  before_action :authenticate
  # before_action :authenticate, except: [:new, :create]

    def index
      @requests = Request.all
    end

    def show
  # byebug
    end

    def new
      @request = Request.new
    end

    def create

      @request = Request.create(request_params)
      redirect_to @request
    end

    def edit

    end

    def update
      @request.update(request_params)
      redirect_to @request
    end

    def destroy
      @request.destroy
      redirect_to requests_path
    end



  private

    def find_request
      @request = Request.find(params[:id])
    end

    def request_params
      params.require(:request).permit(:owner_id, :sitter_id, :status, :price, :details, :title)
    end
end
