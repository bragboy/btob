class Entry < ActiveRecord::Base
  attr_accessible :message, :person, :local_time

  after_create :localify

  def localify
  	self.update_attribute(:local_time, self.created_at)
  end

  def local_time
  	# Need to change this logic later
  	(self.read_attribute(:created_at).getlocal + 5.hour + 30.minute).strftime("%I:%M %p")
  end


end
