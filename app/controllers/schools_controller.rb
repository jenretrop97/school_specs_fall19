class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destory]
  
  # GET /schools
  def index
    @schools = @School.all
  end

  # GET /schools/1
  def show
  end

  # GET /schools/new
  def new
    @school = @School.new
  end

  # GET /schools/edit
  def edit
  end

  # POST /schools
  def create
    @school = @school.new(school_params)
    
    if @school.save
      redirect_to @school, notice: 'School is created'
    else
      render :new
    end
  end

  def update
    if @school.update(school_params)
      redirect_to @school, notice: 'School is updated'
    else
      render :edit
    end
  end

  # DELETE /schools
  def destroy
    @school.destroy
    redirect_to schools_path(@school), notice: 'School is deleted'
  end

  private
# Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def school_arqms
      params.require(:school).permit(:name, :address, :principal, :capacity, :private_school)
    end
end