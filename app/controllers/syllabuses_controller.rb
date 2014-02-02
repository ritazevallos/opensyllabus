class SyllabusesController < ApplicationController

  def index
    @syllabuses = Syllabus.paginate(page: params[:page], :per_page => 3)
  end

  def new
    @syllabus = Syllabus.new
  end

  def show
    @syllabus = Syllabus.find(params[:id])
  end

  def create
    @syllabus = Syllabus.new(params[syllabus_params])
    if @syllabus.save
      redirect_to @syllabus
    else
      render 'new'
    end

  end

  def destroy
    Syllabus.find(params[:id]).destroy
    flash[:success] = "Syllabus deleted."
    redirect_to root_url
  end

  def update
    @syllabus = Syllabus.find(params[:id])
    if @syllabus.update_attributes(syllabus_params)
      flash[:success] = "Syllabus updated"
      redirect_to @syllabus
    else
      redirect_to @syllabus
    end
  end

  private

    def syllabus_params
      params.require(:syllabus).permit(:url, :chnm_cache, :topic_id, :title)
    end
end
