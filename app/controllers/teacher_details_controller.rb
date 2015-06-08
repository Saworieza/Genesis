class TeacherDetailsController < ApplicationController
  before_action :set_teacher_detail, only: [:show, :edit, :update, :destroy]

  # GET /teacher_details
  # GET /teacher_details.json
  def index
    @teacher_details = TeacherDetail.all
  end

  # GET /teacher_details/1
  # GET /teacher_details/1.json
  def show
  end

  # GET /teacher_details/new
  def new
    @teacher_detail = TeacherDetail.new
  end

  # GET /teacher_details/1/edit
  def edit
  end

  # POST /teacher_details
  # POST /teacher_details.json
  def create
    @teacher_detail = TeacherDetail.new(teacher_detail_params)

    respond_to do |format|
      if @teacher_detail.save
        format.html { redirect_to @teacher_detail, notice: 'Teacher detail was successfully created.' }
        format.json { render :show, status: :created, location: @teacher_detail }
      else
        format.html { render :new }
        format.json { render json: @teacher_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /teacher_details/1
  # PATCH/PUT /teacher_details/1.json
  def update
    respond_to do |format|
      if @teacher_detail.update(teacher_detail_params)
        format.html { redirect_to @teacher_detail, notice: 'Teacher detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @teacher_detail }
      else
        format.html { render :edit }
        format.json { render json: @teacher_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teacher_details/1
  # DELETE /teacher_details/1.json
  def destroy
    @teacher_detail.destroy
    respond_to do |format|
      format.html { redirect_to teacher_details_url, notice: 'Teacher detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_teacher_detail
      @teacher_detail = TeacherDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def teacher_detail_params
      params.require(:teacher_detail).permit(:gender, :image, :employer, :employee_number, :employment_date, :full_name, :birth_date, :marital_status, :nationality, :home_address, :phone_1, :phone_2, :email, :town, :county, :education, :certifications, :subjects)
    end
end
