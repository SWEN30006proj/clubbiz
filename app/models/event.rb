class Event < ActiveRecord::Base
  serialize :societies_shared_with
  has_many :search
  def self.event(event)
    if event
      where('title LIKE ?', "%#{event}%")
    else
      nil
    end
  end

  def self.search(search)
    if search
      where('title LIKE ?', "%#{search}%")
    else
      nil
    end
  end




end
