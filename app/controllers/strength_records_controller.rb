class StrengthRecordsController < ApplicationController
  before_action :set_record, only: %w(update destroy)

  # POST /strength_records or /strength_records.json
  def create
    @strength_record = StrengthRecord.new(strength_record_params)
    @strength_record.user = current_user

    respond_to do |format|
      if @strength_record.save
        @msg = "OK"
        format.json { render :show, status: :created, location: @strength_record }
      else
        @msg = "Failed"
        format.json { render json: @strength_record.errors, status: :unprocessable_entity }
      end
      format.html do 
        render :create
      end
      
    end
  end

  # PATCH/PUT /strength_records/1 or /strength_records/1.json
  def update
    respond_to do |format|
      if @strength_record.update(strength_record_params)
        @msg = "OK"
        format.html { render :create }
        format.json { render :show, status: :ok, location: @strength_record }
      else
        @msg = "Failed"
        format.html { render :create }
        format.json { render json: @strength_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /strength_records/1 or /strength_records/1.json
  def destroy
    @strength_record.destroy

    respond_to do |format|
      format.html { render :destroy }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @strength_record = StrengthRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def strength_record_params
      params.require(:strength_record).permit(:weight, :reps, :event_id, :exercise_id)
    end
end
