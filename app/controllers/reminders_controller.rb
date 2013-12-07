class RemindersController < ApplicationController
  def new
  	 @reminder = Reminder.new
  end

  def create
    @reminder = Reminder.new(reminder_params) 
    @reminder.from = "+14124046650"
  	@body = "#{@reminder.name}, #{@reminder.text}" ;
    @to = @reminder.to;

    if @reminder.save
      redirect_to root_url, :flash => { :success => "Message Stored"}
    else
      render 'new'
    end 
  end

  private 
    def reminder_params
      params.require(:reminder).permit(:to, :name, :text, :from, :hour, :minute, :period)
    end

end
