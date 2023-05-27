class Api::V1::EmploymentHistoriesController < ApplicationController
  before_action :set_employment_history, only: %i[ show update destroy ]

  # GET /employment_histories
  # GET /employment_histories.json
  def index
    @employment_histories = EmploymentHistory.all

    render json: @employment_histories.to_json(only: [:id, :employee_id, :company, :start_date, :end_date])
  end

  # GET /employment_histories/1
  # GET /employment_histories/1.json
  def show
    render json: @employment_historie.to_json(only: [:id, :employee_id, :company, :start_date, :end_date])
  end

  # POST /employment_histories
  # POST /employment_histories.json
  def create
    @employment_history = EmploymentHistory.new(employment_history_params)

    if @employment_history.save
      render :show, status: :created, location: api_v1_employment_history_url(@employment_history)
    else
      render json: @employment_history.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /employment_histories/1
  # PATCH/PUT /employment_histories/1.json
  def update
    if @employment_history.update(employment_history_params)
      render :show, status: :ok, location: @employment_history
    else
      render json: @employment_history.errors, status: :unprocessable_entity
    end
  end

  # DELETE /employment_histories/1
  # DELETE /employment_histories/1.json
  def destroy
    @employment_history.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employment_history
      @employment_history = EmploymentHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employment_history_params
      params.require(:employment_history).permit(:employee_id, :company, :start_date, :end_date)
    end
end
