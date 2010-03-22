require 'ruby-debug'
class PagesController < ApplicationController
   
 def index
    response_writer( :target => load_all).call
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
 def preview
    render :layout => false
 end


  # POST /pages
  # POST /pages.xml
  def create
    respond_to do |format|
      if load_from_params.save
        flash[:notice] = 'Page was successfully created.'
        format.html { redirect_to(@page) }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pages/1
  # PUT /pages/1.xml
  def update
    params[:page][:existing_section_attributes] ||= {}
    respond_to do |format|
      if load_single.update_attributes(params[:page])
        flash[:notice] = 'Page was successfully updated.'
        format.html { redirect_to(@page) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.xml
  def destroy
    load_single.destroy
    respond_to do |format|
      format.html { redirect_to(pages_url) }
      format.xml  { head :ok }
    end
  end
    def create_update_url
        page_section_url(@page,@section) 
    end

    def higher
        @page = load_single
        unless @page.nil?
            @page.send( (@page.first?) ?  :move_to_bottom  :  :move_higher) 
        else
            debugger
        end
        redirect_to pages_url
    end

    def lower
        @page = load_single
        unless @page.nil?
            @page.send( (@page.last?) ?  :move_to_top  :  :move_lower)
        else
            debugger
        end
        redirect_to pages_url
    end

private
    def load_all
        @pages = Page.find(:all, :order => :position)
    end
    # show/index/destroy
    def load_single
        @page = Page.find_by_name(params[:id])
        @page ||= Page.find(params[:id])
    end
    def load_empty
        @page = Page.new
        @page.sections.build
        @page
    end
    def load_from_params
        @page = Page.new(params[:page])
    end
end
