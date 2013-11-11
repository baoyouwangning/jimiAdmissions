class CourseDescriptionAndPricesController < ApplicationController
  before_action :set_course_description_and_price, only: [:show, :edit, :update, :destroy]

  # GET /course_description_and_prices
  # GET /course_description_and_prices.json
  def index
    @course_description_and_prices = CourseDescriptionAndPrice.all
  end

  # GET /course_description_and_prices/1
  # GET /course_description_and_prices/1.json
  def show
  end

  # GET /course_description_and_prices/new
  def new
    @course_description_and_price = CourseDescriptionAndPrice.new
  end

  # GET /course_description_and_prices/1/edit
  def edit
  end

  # POST /course_description_and_prices
  # POST /course_description_and_prices.json
  def create
    @course_description_and_price = CourseDescriptionAndPrice.new(course_description_and_price_params)

    respond_to do |format|
      if @course_description_and_price.save
        format.html { redirect_to @course_description_and_price, notice: 'Course description and price was successfully created.' }
        format.json { render action: 'show', status: :created, location: @course_description_and_price }
      else
        format.html { render action: 'new' }
        format.json { render json: @course_description_and_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_description_and_prices/1
  # PATCH/PUT /course_description_and_prices/1.json
  def update
    respond_to do |format|
      if @course_description_and_price.update(course_description_and_price_params)
        format.html { redirect_to @course_description_and_price, notice: 'Course description and price was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @course_description_and_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_description_and_prices/1
  # DELETE /course_description_and_prices/1.json
  def destroy
    @course_description_and_price.destroy
    respond_to do |format|
      format.html { redirect_to course_description_and_prices_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_description_and_price
      @course_description_and_price = CourseDescriptionAndPrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_description_and_price_params
      params.require(:course_description_and_price).permit(:course_name, :course_hour, :course_price, :course_teacher)
    end
end
