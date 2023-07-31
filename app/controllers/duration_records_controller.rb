class DurationRecordsController < ApplicationController
  before_action :set_record, only: %w(update destroy)

  # POST /duration_records or /duration_records.json
  def create
    @duration_record = DurationRecord.new(duration_record_params)
    @duration_record.user = current_user

    respond_to do |format|
      if @duration_record.save
        @msg = 'OK'
        format.json { render :show, status: :created, location: @duration_record }
      else
        @msg = 'Failed'
        format.json { render json: @duration_record.errors, status: :unprocessable_entity }
      end
      format.html do 
        render :create
      end
      
    end
  end

  # PATCH/PUT /duration_records/1 or /duration_records/1.json
  def update
    respond_to do |format|
      if @duration_record.update(duration_record_params)
        @msg = 'OK'
        format.html { render :create }
        format.json { render :show, status: :ok, location: @duration_record }
      else
        @msg = 'Failed'
        format.html { render :create }
        format.json { render json: @duration_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duration_records/1 or /duration_records/1.json
  def destroy
    @duration_record.destroy

    respond_to do |format|
      format.html { render :destroy }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @duration_record = DurationRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def duration_record_params
      params.require(:duration_record).permit(:duration, :event_id, :exercise_id)
    end
end
