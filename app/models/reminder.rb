require "time"

class Reminder < ActiveRecord::Base
	belongs_to :user
	validates :to, presence: true, length: {in: 10..11,  wrong_length: "Phone number must be %{count} numbers long."}
	# validates :from, presence: true, message: "This phone number already has been sent the maximum number of five reminders. We apologize. You must halt one of the already existing reminders in order to create a new reminder for this phone."
	validates :text, presence: true, length: {maximum: 160}
	

	def self.send_messages
		Time.zone = 'Pacific Time (US & Canada)' 
		@current_time = Time.zone.now
		if (@current_time.hour > 12) 
			@temp_hour = @current_time.hour - 12
		else
			@temp_hour = @current_time.hour
		end
		@temp_min = (@current_time.min/10)*10
		@message=  Reminder.where(:hour=>@temp_hour).where(:minute=>@temp_min).where(:period => @current_time.strftime("%p").downcase);
		twilio_sid = "AC9607ec55d6a76b9fcfc936410fb89307"
      	twilio_token = "baafdb5273486a8a22d5c4e4518dc2d7"
      	twilio_phone_number = "+14124046650"

      	@client = Twilio::REST::Client.new twilio_sid, twilio_token
 
      	
	 	@message.each do |d|

	    	@body=d.text
	    	@to=d.to
	    	@from=d.from

	    	@client.account.sms.messages.create(
	          :body => @body,
	          :to => @to,
	          :from => twilio_phone_number
	      	)
	      
	      end

	end


	 

	
end


