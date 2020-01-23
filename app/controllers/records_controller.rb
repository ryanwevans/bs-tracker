class RecordsController < ApplicationController
    before_action :set_record, only: [:show, :edit, :update, :destroy]
    include RecordsHelper

    def index
        @records = Record.all.sorted_desc
    end


    def show

    end


    def new
        @record = Record.new
    end


    def create
        @record = Record.create(record_params)
        if @record.save!
            redirect_to records_path
        else
            render :new
        end
    end


    def edit

    end


    def update
        if @record.update(record_params)
            redirect_to @record
        else
            render :edit
        end
    end


    def destroy
        @record.destroy
        redirect_to records_path
    end



    private

    def record_params
        params.require(:record).permit(:user_id, :date, :time, :reading, :dose)
    end

    
    def set_record
        @record = Record.find_by(id: params[:id])
    end
end
