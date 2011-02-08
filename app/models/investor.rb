class Investor < ActiveRecord::Base
  belongs_to :prize
  belongs_to :prize2, :class_name => 'Prize'
  
  validates_uniqueness_of :email
  
  def set_prize(investor, email)
    
    @yournum = rand(100)
    @day = Day.find_by_id(1)
    @custom = Custom.find_by_id(1)
    @apple = Prizecount.find_by_id(1)
    #if email != nil
     # investor.last_name = email.name
    #end 
    
    if @day.number == 1
  
  
      if @yournum == 1
      investor.prize_id = 2
      elsif @yournum > 1 && @yournum <=4
      investor.prize_id = 1
      elsif @yournum > 4 && @yournum <=15
      investor.prize_id = 3
      elsif @yournum > 15 && @yournum <=100
      investor.prize_id = 4
      end
  
    elsif @day.number == 2
      
      if @yournum < 0
      investor.prize_id = 2
      elsif @yournum > 0 && @yournum <=3
      investor.prize_id = 1
      elsif @yournum > 3 && @yournum <=15
      investor.prize_id = 3
      elsif @yournum > 15 && @yournum <=100
      investor.prize_id = 4
      end
      
    elsif @day.number == 3      
      
      if @yournum <= 5
      investor.prize_id = 2
      elsif @yournum > 5 && @yournum <=8
      investor.prize_id = 1
      elsif @yournum > 8 && @yournum <= 20
      investor.prize_id = 3
      elsif @yournum > 20 && @yournum <=100
      investor.prize_id = 4
      end
          
    elsif @day.number == 4      
      
      if @yournum <= 25
      investor.prize_id = 2
      elsif @yournum > 25 && @yournum <=28
      investor.prize_id = 1
      elsif @yournum > 28 && @yournum <= 40
      investor.prize_id = 3
      elsif @yournum > 40 && @yournum <=100
      investor.prize_id = 4
      end
          
    elsif @day.number == 5      
      
      if @yournum <= 50
      investor.prize_id = 2
      elsif @yournum > 50 && @yournum <=53
      investor.prize_id = 1
      elsif @yournum > 53 && @yournum <= 65
      investor.prize_id = 3
      elsif @yournum > 65 && @yournum <=100
      investor.prize_id = 4
      end
      
    elsif @day.number == 6  
      
      if @yournum <= @custom.apple
      investor.prize_id = 2
      elsif @yournum > @custom.apple && @yournum <= @custom.bundle
      investor.prize_id = 1
      elsif @yournum > @custom.bundle && @yournum <= @custom.pickone
      investor.prize_id = 3
      elsif @yournum > @custom.pickone && @yournum <=100
      investor.prize_id = 4
      end
    
    end
    
    if investor.prize_id == 2
      @apple.prize_count = @apple.prize_count+1
      @apple.save!
      @day.number = 2
      @day.save!
    end
    
  end
  
  def set_second_prize(investor)
    
     @yournum = rand(100)
      @day = Day.find_by_id(1)
      @custom = Custom.find_by_id(1)
      @apple = Prizecount.find_by_id(1)

      if @day.number == 1


        if @yournum == 1
        investor.prize2_id = 2
        elsif @yournum > 1 && @yournum <=4
        investor.prize2_id = 1
        elsif @yournum > 4 && @yournum <=15
        investor.prize2_id = 3
        elsif @yournum > 15 && @yournum <=100
        investor.prize2_id = 4
        end

      elsif @day.number == 2

        if @yournum < 0
        investor.prize2_id = 2
        elsif @yournum > 0 && @yournum <=3
        investor.prize2_id = 1
        elsif @yournum > 3 && @yournum <=15
        investor.prize2_id = 3
        elsif @yournum > 15 && @yournum <=100
        investor.prize2_id = 4
        end

      elsif @day.number == 3      

        if @yournum <= 5
        investor.prize2_id = 2
        elsif @yournum > 5 && @yournum <=8
        investor.prize2_id = 1
        elsif @yournum > 8 && @yournum <= 20
        investor.prize2_id = 3
        elsif @yournum > 20 && @yournum <=100
        investor.prize2_id = 4
        end

      elsif @day.number == 4      

        if @yournum <= 25
        investor.prize2_id = 2
        elsif @yournum > 25 && @yournum <=28
        investor.prize2_id = 1
        elsif @yournum > 28 && @yournum <= 40
        investor.prize2_id = 3
        elsif @yournum > 40 && @yournum <=100
        investor.prize2_id = 4
        end

      elsif @day.number == 5      

        if @yournum <= 50
        investor.prize2_id = 2
        elsif @yournum > 50 && @yournum <=53
        investor.prize2_id = 1
        elsif @yournum > 53 && @yournum <= 65
        investor.prize2_id = 3
        elsif @yournum > 65 && @yournum <=100
        investor.prize2_id = 4
        end

      elsif @day.number == 6  

        if @yournum <= @custom.apple
        investor.prize2_id = 2
        elsif @yournum > @custom.apple && @yournum <= (@custom.bundle+@custom.apple)
        investor.prize2_id = 1
        elsif @yournum > (@custom.bundle+@custom.apple) && @yournum <= (@custom.pickone+@custom.bundle+@custom.apple)
        investor.prize2_id = 3
        elsif @yournum > (@custom.pickone+@custom.bundle+@custom.apple) && @yournum <=100
        investor.prize2_id = 4
        end

      end

      if investor.prize2_id == 2
        @apple.prize_count = @apple.prize_count+1
        @apple.save!
        @day.number = 2
        @day.save!
      end
    
    investor.entries = 2
    
  end
  
end
