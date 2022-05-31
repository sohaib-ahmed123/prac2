class ParentModelsController < ApplicationController
  before_action :set_parent_model, only: %i[ show edit update destroy ]

  # GET /parent_models or /parent_models.json
  def index
    @parent_models = ParentModel.all
  end

  # GET /parent_models/1 or /parent_models/1.json
  def show
  end

  # GET /parent_models/new
  def new
    @parent_model = ParentModel.new
  end

  # GET /parent_models/1/edit
  def edit
  end

  # POST /parent_models or /parent_models.json
  def create
    @parent_model = ParentModel.new(parent_model_params)

    respond_to do |format|
      if @parent_model.save
        format.html { redirect_to parent_model_url(@parent_model), notice: "Parent model was successfully created." }
        format.json { render :show, status: :created, location: @parent_model }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @parent_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parent_models/1 or /parent_models/1.json
  def update
    respond_to do |format|
      if @parent_model.update(parent_model_params)
        format.html { redirect_to parent_model_url(@parent_model), notice: "Parent model was successfully updated." }
        format.json { render :show, status: :ok, location: @parent_model }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @parent_model.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parent_models/1 or /parent_models/1.json
  def destroy
    @parent_model.destroy

    respond_to do |format|
      format.html { redirect_to parent_models_url, notice: "Parent model was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent_model
      @parent_model = ParentModel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def parent_model_params
      params.fetch(:parent_model, {})
    end
end
