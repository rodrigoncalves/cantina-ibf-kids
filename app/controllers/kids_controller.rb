class KidsController < ApplicationController
  before_action :set_kid, only: [:show, :edit, :update, :destroy]

  # GET /acampantes
  # GET /acampantes.json
  def index
    @kids = Kid.all
  end

  # GET /acampantes/1
  # GET /acampantes/1.json
  def show
  end

  # GET /acampantes/novo
  def new
    @kid = Kid.new
    @teams = Team.all
  end

  # GET /acampantes/1/edit
  def edit
    @teams = Team.all
  end

  # POST /acampantes
  # POST /acampantes.json
  def create
    @kid = Kid.new(kid_params)

    respond_to do |format|
      if @kid.save
        format.html { redirect_to @kid, notice: 'Acampante criado com sucesso.' }
        format.json { render :show, status: :created, location: @kid }
      else
        format.html { render :new }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acampantes/1
  # PATCH/PUT /acampantes/1.json
  def update
    respond_to do |format|
      if @kid.update(kid_params)
        format.html { redirect_to @kid, notice: 'Acampante atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @kid }
      else
        format.html { render :edit }
        format.json { render json: @kid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acampantes/1
  # DELETE /acampantes/1.json
  def destroy
    @kid.destroy
    respond_to do |format|
      format.html { redirect_to kids_url, notice: 'Acampante apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kid
      @kid = Kid.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kid_params
      params.require(:kid).permit(:name, :amount, :team_id)
    end
end
