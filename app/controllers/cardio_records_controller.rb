class CardioRecordsController < ApplicationController
  before_action :set_record, only: %w(update destroy)

  # POST /cardio_records or /cardio_records.json
  def create
    @cardio_record = CardioRecord.new(cardio_record_params)
    @cardio_record.user = current_user

    respond_to do |format|
      if @cardio_record.save
        @msg = 'OK'
        format.json { render :show, status: :created, location: @cardio_record }
      else
        @msg = 'Failed'
        format.json { render json: @cardio_record.errors, status: :unprocessable_entity }
      end
      format.html do 
        render :create
      end
      
    end
  end

  # PATCH/PUT /cardio_records/1 or /cardio_records/1.json
  def update
    respond_to do |format|
      if @cardio_record.update(cardio_record_params)
        @msg = 'OK'
        format.html { render :create, notice: "Record was successfully updated." }
        format.json { render :show, status: :ok, location: @cardio_record }
      else
        @msg = 'Failed'
        format.html { render :create, notice: "Can not update this record." }
        format.json { render json: @cardio_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cardio_records/1 or /cardio_records/1.json
  def destroy
    @cardio_record.destroy

    respond_to do |format|
      format.html { render :destroy, notice: "CardioRecord was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @cardio_record = CardioRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cardio_record_params
      params.require(:cardio_record).permit(:distance, :duration, :event_id)
    end
end
