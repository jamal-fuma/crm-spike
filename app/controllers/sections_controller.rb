class SectionsController < ApplicationController
    before_filter  :load_page
   
 def index
    response_writer( :target => (@sections = @page.sections)).call
  end

  def show
    response_writer(:target => load_single).call
  end

  def new
     response_writer(:target =>load_empty).call
  end
  def edit
    response_writer(:target => load_single).call
  end

  
  # POST /sections.xml
  def create
    respond_to do |format|
      if load_from_params.save
        flash[:notice] = 'Section was successfully created.'
        format.html { create_update_url }
      else
        format.html { render :action => "new" }
      end
    end
  end

 
  # PUT /sections/1
  # PUT /sections/1.xml
  def update
    params[:section][:existing_asset_attributes] ||= {}
    respond_to do |format|
      if load_single.update_attributes(params[:section])
        flash[:notice] = 'Section was successfully updated.'
        format.html { redirect_to create_update_url }
      else
        format.html { render :action => "edit" }
      end
    end
  end

  # DELETE /sections/1
  # DELETE /sections/1.xml
  def destroy
    load_single.destroy
    respond_to do |format|
      format.html { redirect_to(page_sections_path(@page)) }
    end
  end
private
    def load_page
        @page = Page.find(params[:page_id])
    end
    # show/index/destroy
    def load_single
        @section = @page.sections.find(params[:id])
    end
    def load_empty
        @section = @page.sections.build
        @section.assets.build
        @section
    end
    def load_from_params
        @section = @page.sections.build(params[:section])
    end
    def create_update_url
        page_section_asset_url(@page,@section,@asset) 
    end
  end
