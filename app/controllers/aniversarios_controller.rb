class AniversariosController < ApplicationController
  # GET /aniversarios
  # GET /aniversarios.xml
  def index
    @aniversarios = Aniversario.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @aniversarios }
    end
  end

  # GET /aniversarios/1
  # GET /aniversarios/1.xml
  def show
    @aniversario = Aniversario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @aniversario }
    end
  end

  # GET /aniversarios/new
  # GET /aniversarios/new.xml
  def new
    @aniversario = Aniversario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @aniversario }
    end
  end

  # GET /aniversarios/1/edit
  def edit
    @aniversario = Aniversario.find(params[:id])
  end

  # POST /aniversarios
  # POST /aniversarios.xml
  def create
    @aniversario = Aniversario.new(params[:aniversario])

    respond_to do |format|
      if @aniversario.save
        format.html { redirect_to(@aniversario, :notice => 'Aniversario was successfully created.') }
        format.xml  { render :xml => @aniversario, :status => :created, :location => @aniversario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @aniversario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /aniversarios/1
  # PUT /aniversarios/1.xml
  def update
    @aniversario = Aniversario.find(params[:id])

    respond_to do |format|
      if @aniversario.update_attributes(params[:aniversario])
        format.html { redirect_to(@aniversario, :notice => 'Aniversario was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @aniversario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /aniversarios/1
  # DELETE /aniversarios/1.xml
  def destroy
    @aniversario = Aniversario.find(params[:id])
    @aniversario.destroy

    respond_to do |format|
      format.html { redirect_to(aniversarios_url) }
      format.xml  { head :ok }
    end
  end
end
