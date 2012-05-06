class Entry < ActiveRecord::Base
  attr_accessible :message, :person, :local_time

  after_create :localify

  def localify
  	self.update_attribute(:local_time, self.created_at)
  end

  def local_time
  	self.read_attribute(:created_at).getlocal.strftime("%I:%M %p")
  end


end
