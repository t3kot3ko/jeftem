class TestResultTypesController < ApplicationController
  before_action :set_test_result_type, only: [:show, :edit, :update, :destroy]

  # GET /test_result_types
  # GET /test_result_types.json
  def index
    @test_result_types = TestResultType.all
  end

  # GET /test_result_types/1
  # GET /test_result_types/1.json
  def show
  end

  # GET /test_result_types/new
  def new
    @test_result_type = TestResultType.new
  end

  # GET /test_result_types/1/edit
  def edit
  end

  # POST /test_result_types
  # POST /test_result_types.json
  def create
    @test_result_type = TestResultType.new(test_result_type_params)

    respond_to do |format|
      if @test_result_type.save
        format.html { redirect_to @test_result_type, notice: 'Test result type was successfully created.' }
        format.json { render :show, status: :created, location: @test_result_type }
      else
        format.html { render :new }
        format.json { render json: @test_result_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_result_types/1
  # PATCH/PUT /test_result_types/1.json
  def update
    respond_to do |format|
      if @test_result_type.update(test_result_type_params)
        format.html { redirect_to @test_result_type, notice: 'Test result type was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_result_type }
      else
        format.html { render :edit }
        format.json { render json: @test_result_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_result_types/1
  # DELETE /test_result_types/1.json
  def destroy
    @test_result_type.destroy
    respond_to do |format|
      format.html { redirect_to test_result_types_url, notice: 'Test result type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_result_type
      @test_result_type = TestResultType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_result_type_params
      params.require(:test_result_type).permit(:name, :color)
    end
end
