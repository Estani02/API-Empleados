class Api::V1::TrainingsController < ApplicationController
  before_action :set_training, only: %i[ show update destroy ]

  # GET /trainings
  # GET /trainings.json
  def index
    @trainings = Training.all

    render json: @trainings.to_json(only: [:id, :name, :description, :employee_id])
  end

  # GET /trainings/1
  # GET /trainings/1.json
  def show
    render json: @training.to_json(only: [:id, :name, :description, :employee_id])
  end

  # POST /trainings
  # POST /trainings.json
  def create
    @training = Training.new(training_params)

    if @training.save
      render :show, status: :created, location: api_v1_trainings_url(@trainings)
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainings/1
  # PATCH/PUT /trainings/1.json
  def update
    if @training.update(training_params)
      render :show, status: :ok, location: @training
    else
      render json: @training.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainings/1
  # DELETE /trainings/1.json
  def destroy
    @training.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_training
      @training = Training.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def training_params
      params.require(:training).permit(:employee_id, :name, :description)
    end
end
