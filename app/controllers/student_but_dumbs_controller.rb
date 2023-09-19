class StudentButDumbsController < ApplicationController
  before_action :set_student_but_dumb, only: %i[ show edit update destroy ]

  # GET /student_but_dumbs or /student_but_dumbs.json
  def index
    @student_but_dumbs = StudentButDumb.all
  end

  # GET /student_but_dumbs/1 or /student_but_dumbs/1.json
  def show
  end

  # GET /student_but_dumbs/new
  def new
    @student_but_dumb = StudentButDumb.new
  end

  # GET /student_but_dumbs/1/edit
  def edit
  end

  # POST /student_but_dumbs or /student_but_dumbs.json
  def create
    @student_but_dumb = StudentButDumb.new(student_but_dumb_params)

    respond_to do |format|
      if @student_but_dumb.save
        format.html { redirect_to student_but_dumb_url(@student_but_dumb), notice: "Student but dumb was successfully created." }
        format.json { render :show, status: :created, location: @student_but_dumb }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_but_dumb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_but_dumbs/1 or /student_but_dumbs/1.json
  def update
    respond_to do |format|
      if @student_but_dumb.update(student_but_dumb_params)
        format.html { redirect_to student_but_dumb_url(@student_but_dumb), notice: "Student but dumb was successfully updated." }
        format.json { render :show, status: :ok, location: @student_but_dumb }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_but_dumb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_but_dumbs/1 or /student_but_dumbs/1.json
  def destroy
    @student_but_dumb.destroy

    respond_to do |format|
      format.html { redirect_to student_but_dumbs_url, notice: "Student but dumb was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_but_dumb
      @student_but_dumb = StudentButDumb.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_but_dumb_params
      params.require(:student_but_dumb).permit(:offset_from_roy, :name, :doctor_e_watching, :age, :in_syria)
    end
end
