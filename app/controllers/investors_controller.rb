class InvestorsController < ApplicationController
  # GET /investors
  # GET /investors.xml
  def index
    @investors = Investor.all
    @day = Day.find_by_id(1)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @investors }
    end
  end

  # GET /investors/1
  # GET /investors/1.xml
  def show
    @investor = Investor.find(params[:id])
    @day = Day.find_by_id(1)

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @investor }
    end
  end

  # GET /investors/new
  # GET /investors/new.xml
  def new
    @investor = Investor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @investor }
    end
  end

  # GET /investors/1/edit
  def edit
    @investor = Investor.find(params[:id])
  end

  # POST /investors
  # POST /investors.xml
  def create
    @investor = Investor.new(params[:investor])
    @yournum = rand(100)
    @day = Day.find_by_id(1)
    @prereg = Prereg.find_by_email(@investor.email)
    @investor.last_name = @prereg.name

    if @day.number == 1
  
  
      if @yournum <= 25
      @investor.prize_id = 2
      elsif @yournum > 25 && @yournum <=50
      @investor.prize_id = 1
      elsif @yournum > 51 && @yournum <=75
      @investor.prize_id = 3
      elsif @yournum > 76 && @yournum <=100
      @investor.prize_id = 4
      end
  
    elsif @day.number == 2
      
      if @yournum <= 25
      @investor.prize_id = 2
      elsif @yournum > 25 && @yournum <=50
      @investor.prize_id = 1
      elsif @yournum > 51 && @yournum <=75
      @investor.prize_id = 3
      elsif @yournum > 76 && @yournum <=100
      @investor.prize_id = 4
      end
      
    elsif @day.number == 3      
      
      if @yournum <= 50
      @investor.prize_id = 2
      elsif @yournum > 51 && @yournum <=90
      @investor.prize_id = 1
      elsif @yournum > 91 && @yournum <= 95
      @investor.prize_id = 3
      elsif @yournum > 96 && @yournum <=100
      @investor.prize_id = 4
      end
      
    end
    
    @investor.save
    redirect_to @investor
    
  end

  # PUT /investors/1
  # PUT /investors/1.xml
  def update
    @investor = Investor.find(params[:id])

    respond_to do |format|
      if @investor.update_attributes(params[:investor])
        format.html { redirect_to(@investor, :notice => 'Investor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @investor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /investors/1
  # DELETE /investors/1.xml
  def destroy
    @investor = Investor.find(params[:id])
    @investor.destroy

    respond_to do |format|
      format.html { redirect_to(investors_url) }
      format.xml  { head :ok }
    end
  end
end
