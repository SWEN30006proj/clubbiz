class Society < ActiveRecord::Base

  has_many :search
  def self.clubname(clubname)
    if clubname
      where('society_name LIKE ?', "%#{clubname}%")
    else
      nil
    end
  end


  def self.search(search)
    if search
      where('society_name LIKE ?', "%#{search}%")
    else
      nil
    end
  end
end



