class Num2sController < ApplicationController
  before_action :set_num2, only: %i[ show edit update destroy ]
  before_action :authenticate_user!#, except: [:index, :show]
  before_action :correct_user, only: [:show, :edit, :destroy]

  # GET /num2s or /num2s.json
  def index
    #@num2s = current_user.num2s.all
    @num2s = Num2.all
  end

  # GET /num2s/1 or /num2s/1.json
  def show
  end

  # GET /num2s/new
  def new
    #@num2 = Num2.new
    @num2 = current_user.num2s.build
  end

  # GET /num2s/1/edit
  def edit
  end

  # POST /num2s or /num2s.json
  def create
    #@num2 = Num2.new(num2_params)
    @num2 = current_user.num2s.build(num2_params)

    respond_to do |format|
      if @num2.save
        format.html { redirect_to @num2, notice: "Contacto creado." }
        format.json { render :show, status: :created, location: @num2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @num2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /num2s/1 or /num2s/1.json
  def update
    respond_to do |format|
      if @num2.update(num2_params)
        format.html { redirect_to @num2, notice: "Contacto actualizado." }
        format.json { render :show, status: :ok, location: @num2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @num2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /num2s/1 or /num2s/1.json
  def destroy
    @num2.destroy
    respond_to do |format|
      format.html { redirect_to num2s_url, notice: "Contacto eliminado" }
      format.json { head :no_content }
    end
  end

  def correct_user
    @num2 = current_user.num2s.find_by(id: params[:id])
    redirect_to num2s_path, notice: "No autorizado" if @num2.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_num2
      @num2 = Num2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def num2_params
      params.require(:num2).permit(:person_name, :rut, :bank, :acc_type, :acc_number, :email, :user_id)
    end
end
