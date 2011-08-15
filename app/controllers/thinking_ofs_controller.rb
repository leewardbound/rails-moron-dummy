class ThinkingOfsController < ApplicationController
  # GET /thinking_ofs
  # GET /thinking_ofs.xml
  def index
    @thinking_ofs = ThinkingOf.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @thinking_ofs }
    end
  end

  # GET /thinking_ofs/1
  # GET /thinking_ofs/1.xml
  def show
    @thinking_of = ThinkingOf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @thinking_of }
    end
  end

  # GET /thinking_ofs/new
  # GET /thinking_ofs/new.xml
  def new
    @thinking_of = ThinkingOf.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @thinking_of }
    end
  end

  # GET /thinking_ofs/1/edit
  def edit
    @thinking_of = ThinkingOf.find(params[:id])
  end

  # POST /thinking_ofs
  # POST /thinking_ofs.xml
  def create
    @thinking_of = ThinkingOf.new(params[:thinking_of])

    respond_to do |format|
      if @thinking_of.save
        format.html { redirect_to(@thinking_of, :notice => 'Thinking of was successfully created.') }
        format.xml  { render :xml => @thinking_of, :status => :created, :location => @thinking_of }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @thinking_of.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /thinking_ofs/1
  # PUT /thinking_ofs/1.xml
  def update
    @thinking_of = ThinkingOf.find(params[:id])

    respond_to do |format|
      if @thinking_of.update_attributes(params[:thinking_of])
        format.html { redirect_to(@thinking_of, :notice => 'Thinking of was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @thinking_of.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /thinking_ofs/1
  # DELETE /thinking_ofs/1.xml
  def destroy
    @thinking_of = ThinkingOf.find(params[:id])
    @thinking_of.destroy

    respond_to do |format|
      format.html { redirect_to(thinking_ofs_url) }
      format.xml  { head :ok }
    end
  end
end
