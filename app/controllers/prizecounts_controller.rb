class PrizecountsController < ApplicationController
  # GET /prizecounts
  # GET /prizecounts.xml
  def index
    @prizecounts = Prizecount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @prizecounts }
    end
  end

  # GET /prizecounts/1
  # GET /prizecounts/1.xml
  def show
    @prizecount = Prizecount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prizecount }
    end
  end

  # GET /prizecounts/new
  # GET /prizecounts/new.xml
  def new
    @prizecount = Prizecount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prizecount }
    end
  end

  # GET /prizecounts/1/edit
  def edit
    @prizecount = Prizecount.find(params[:id])
  end

  # POST /prizecounts
  # POST /prizecounts.xml
  def create
    @prizecount = Prizecount.new(params[:prizecount])

    respond_to do |format|
      if @prizecount.save
        format.html { redirect_to(@prizecount, :notice => 'Prizecount was successfully created.') }
        format.xml  { render :xml => @prizecount, :status => :created, :location => @prizecount }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prizecount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /prizecounts/1
  # PUT /prizecounts/1.xml
  def update
    @prizecount = Prizecount.find(params[:id])

    respond_to do |format|
      if @prizecount.update_attributes(params[:prizecount])
        format.html { redirect_to(@prizecount, :notice => 'Prizecount was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prizecount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /prizecounts/1
  # DELETE /prizecounts/1.xml
  def destroy
    @prizecount = Prizecount.find(params[:id])
    @prizecount.destroy

    respond_to do |format|
      format.html { redirect_to(prizecounts_url) }
      format.xml  { head :ok }
    end
  end
end
