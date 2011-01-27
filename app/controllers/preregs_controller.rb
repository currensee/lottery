class PreregsController < ApplicationController
  # GET /preregs
  # GET /preregs.xml
  def index
    @preregs = Prereg.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @preregs }
    end
  end

  # GET /preregs/1
  # GET /preregs/1.xml
  def show
    @prereg = Prereg.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @prereg }
    end
  end

  # GET /preregs/new
  # GET /preregs/new.xml
  def new
    @prereg = Prereg.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @prereg }
    end
  end

  # GET /preregs/1/edit
  def edit
    @prereg = Prereg.find(params[:id])
  end

  # POST /preregs
  # POST /preregs.xml
  def create
    @prereg = Prereg.new(params[:prereg])
    @prereg.email = @prereg.email.downcase
    
    respond_to do |format|
      if @prereg.save
        format.html { redirect_to(@prereg, :notice => 'Prereg was successfully created.') }
        format.xml  { render :xml => @prereg, :status => :created, :location => @prereg }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @prereg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /preregs/1
  # PUT /preregs/1.xml
  def update
    @prereg = Prereg.find(params[:id])

    respond_to do |format|
      if @prereg.update_attributes(params[:prereg])
        format.html { redirect_to(@prereg, :notice => 'Prereg was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @prereg.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /preregs/1
  # DELETE /preregs/1.xml
  def destroy
    @prereg = Prereg.find(params[:id])
    @prereg.destroy

    respond_to do |format|
      format.html { redirect_to(preregs_url) }
      format.xml  { head :ok }
    end
  end
end
