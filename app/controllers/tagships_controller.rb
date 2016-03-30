class TagshipsController < ApplicationController
  before_action :set_tagship, only: [:show, :edit, :update, :destroy]

  # GET /tagships
  # GET /tagships.json
  def index
    @tagships = Tagship.all
  end

  # GET /tagships/1
  # GET /tagships/1.json
  def show
  end

  # GET /tagships/new
  def new
    @tagship = Tagship.new
  end

  # GET /tagships/1/edit
  def edit
  end

  # POST /tagships
  # POST /tagships.json
  def create
    @tagship = Tagship.new(tagship_params)

    respond_to do |format|
      if @tagship.save
        format.html { redirect_to @tagship, notice: 'Tagship was successfully created.' }
        format.json { render :show, status: :created, location: @tagship }
      else
        format.html { render :new }
        format.json { render json: @tagship.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tagships/1
  # PATCH/PUT /tagships/1.json
  def update
    respond_to do |format|
      if @tagship.update(tagship_params)
        format.html { redirect_to @tagship, notice: 'Tagship was successfully updated.' }
        format.json { render :show, status: :ok, location: @tagship }
      else
        format.html { render :edit }
        format.json { render json: @tagship.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tagships/1
  # DELETE /tagships/1.json
  def destroy
    @tagship.destroy
    respond_to do |format|
      format.html { redirect_to tagships_url, notice: 'Tagship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tagship
      @tagship = Tagship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tagship_params
      params.require(:tagship).permit(:post_id, :tag_id)
    end
end
