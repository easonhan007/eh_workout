class RepsOnlyRecordsController < ApplicationController
  before_action :set_record, only: %w(update destroy)

  # POST /duration_records or /duration_records.json
  def create
    @reps_only_record = RepsOnlyRecord.new(reps_only_params)
    @reps_only_record.user = current_user

    respond_to do |format|
      if @reps_only_record.save
        @msg = 'OK'
        format.json { render :show, status: :created, location: @reps_only_record }
      else
        @msg = 'Failed'
        format.json { render json: @reps_only_record.errors, status: :unprocessable_entity }
      end
      format.html do 
        render :create
      end
      
    end
  end

  # PATCH/PUT /duration_records/1 or /duration_records/1.json
  def update
    respond_to do |format|
      if @reps_only_record.update(reps_only_params)
        @msg = 'OK'
        format.html { render :create }
        format.json { render :show, status: :ok, location: @reps_only_record }
      else
        @msg = 'Failed'
        format.html { render :create }
        format.json { render json: @reps_only_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /duration_records/1 or /duration_records/1.json
  def destroy
    @reps_only_record.destroy

    respond_to do |format|
      format.html { render :destroy }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_record
      @reps_only_record = RepsOnlyRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reps_only_params
      params.require(:reps_only_record).permit(:reps, :event_id, :exercise_id)
    end
end
