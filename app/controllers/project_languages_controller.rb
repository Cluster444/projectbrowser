class ProjectLanguagesController < ApplicationController
  # GET /project_languages
  # GET /project_languages.xml
  def index
    @project_languages = ProjectLanguage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @project_languages }
    end
  end

  # GET /project_languages/1
  # GET /project_languages/1.xml
  def show
    @project_language = ProjectLanguage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @project_language }
    end
  end

  # GET /project_languages/new
  # GET /project_languages/new.xml
  def new
    @project_language = ProjectLanguage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @project_language }
    end
  end

  # GET /project_languages/1/edit
  def edit
    @project_language = ProjectLanguage.find(params[:id])
  end

  # POST /project_languages
  # POST /project_languages.xml
  def create
    @project_language = ProjectLanguage.new(params[:project_language])

    respond_to do |format|
      if @project_language.save
        format.html { redirect_to(@project_language, :notice => 'Project language was successfully created.') }
        format.xml  { render :xml => @project_language, :status => :created, :location => @project_language }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @project_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /project_languages/1
  # PUT /project_languages/1.xml
  def update
    @project_language = ProjectLanguage.find(params[:id])

    respond_to do |format|
      if @project_language.update_attributes(params[:project_language])
        format.html { redirect_to(@project_language, :notice => 'Project language was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @project_language.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /project_languages/1
  # DELETE /project_languages/1.xml
  def destroy
    @project_language = ProjectLanguage.find(params[:id])
    @project_language.destroy

    respond_to do |format|
      format.html { redirect_to(project_languages_url) }
      format.xml  { head :ok }
    end
  end
end
