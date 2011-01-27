class Investor < ActiveRecord::Base
  belongs_to :prize
  belongs_to :prize2, :class_name => 'Prize'
  
  validates_uniqueness_of :email
  
  def set_prize(investor, email)
    
    @yournum = rand(100)
    @day = Day.find_by_id(1)
    
    #if email != nil
     # investor.last_name = email.name
    #end 
    
    if @day.number == 1
  
  
      if @yournum <= 25
      investor.prize_id = 2
      elsif @yournum > 25 && @yournum <=50
      investor.prize_id = 1
      elsif @yournum > 51 && @yournum <=75
      investor.prize_id = 3
      elsif @yournum > 76 && @yournum <=100
      investor.prize_id = 4
      end
  
    elsif @day.number == 2
      
      if @yournum <= 25
      investor.prize_id = 2
      elsif @yournum > 25 && @yournum <=50
      investor.prize_id = 1
      elsif @yournum > 51 && @yournum <=75
      investor.prize_id = 3
      elsif @yournum > 76 && @yournum <=100
      investor.prize_id = 4
      end
      
    elsif @day.number == 3      
      
      if @yournum <= 50
      investor.prize_id = 2
      elsif @yournum > 51 && @yournum <=90
      investor.prize_id = 1
      elsif @yournum > 91 && @yournum <= 95
      investor.prize_id = 3
      elsif @yournum > 96 && @yournum <=100
      investor.prize_id = 4
      end
      
    end
    
  end
  
  def set_second_prize(investor)
    
    @yournum = rand(100)
    @day = Day.find_by_id(1)
    
    if @day.number == 1
  
  
      if @yournum <= 25
      investor.prize2_id = 2
      elsif @yournum > 25 && @yournum <=50
      investor.prize2_id = 1
      elsif @yournum > 51 && @yournum <=75
      investor.prize2_id = 3
      elsif @yournum > 76 && @yournum <=100
      investor.prize2_id = 4
      end
  
    elsif @day.number == 2
      
      if @yournum <= 25
      investor.prize2_id = 2
      elsif @yournum > 25 && @yournum <=50
      investor.prize2_id = 1
      elsif @yournum > 51 && @yournum <=75
      investor.prize2_id = 3
      elsif @yournum > 76 && @yournum <=100
      investor.prize2_id = 4
      end
      
    elsif @day.number == 3      
      
      if @yournum <= 50
      investor.prize2_id = 2
      elsif @yournum > 51 && @yournum <=90
      investor.prize2_id = 1
      elsif @yournum > 91 && @yournum <= 95
      investor.prize2_id = 3
      elsif @yournum > 96 && @yournum <=100
      investor.prize2_id = 4
      end
      
    end
    
    investor.entries = 2
    
  end
  
end
