class ChildModelsController < ApplicationController
  before_action :set_child__model, only: %i[ show edit update destroy ]

  # GET /child__models or /child__models.json
  def index
    @child__models = ChildModel.all
  end

  # GET /child__models/1 or /child__models/1.json
  def show
  end

  # GET /child__models/new
  def new
    @child__model = ChildModel.new
  end

  # GET /child__models/1/edit
  def edit
  end

  # POST /child__models or /child__models.json
  def create
    @child__model = ChildModel.new(child__model_params)

    respond_to do |format|
      if @child__model.save
        format.html { redirect_to child__model_url(@child__model), notice: "Child  model was successfully created." }
        format.json { render :show, status: :created, location: @child__model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @child__model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /child__models/1 or /child__models/1.json
  def update
    respond_to do |format|
      if @child__model.update(child__model_params)
        format.html { redirect_to child__model_url(@child__model), notice: "Child  model was successfully updated." }
        format.json { render :show, status: :ok, location: @child__model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @child__model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child__models/1 or /child__models/1.json
  def destroy
    @child__model.destroy

    respond_to do |format|
      format.html { redirect_to child__models_url, notice: "Child  model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child__model
      @child__model = ChildModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def child__model_params
      params.fetch(:child__model, {})
    end
end
