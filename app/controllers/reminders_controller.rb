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
      # twilio_sid = "AC9607ec55d6a76b9fcfc936410fb89307"
      # twilio_token = "baafdb5273486a8a22d5c4e4518dc2d7"
      # twilio_phone_number = "+14124046650"

      # @client = Twilio::REST::Client.new twilio_sid, twilio_token
 
      # @client.account.sms.messages.create(
      #     :body => @body,
      #     :to => @to,
      #     :from => twilio_phone_number
      # )
      redirect_to root_url, :flash => { :success => "Message Stored"}
    else
      render 'new'
    end

  	
 
  end

  



  def confirm

  end

  private 
    def reminder_params
      params.require(:reminder).permit(:to, :name, :text, :from, :hour, :minute, :period)
    end

end
