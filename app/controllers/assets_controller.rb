class AssetsController < ApplicationController
before_filter :load_section

    def create
        @asset = @section.build_asset(params[:asset])
        respond_to do |format|
            if @asset.save
                flash[:notice] = 'Asset was successfully created.'
                format.html { redirect_to section_asset_path(@section) }
                format.xml  { render :xml => @asset, :status => :created, :location => @asset }
            else
                format.html { render :action => "new" }
                format.xml  { render :xml => @asset.errors, :status => :unprocessable_entity }
            end
        end
    end

    def update
        respond_to do |format|
        if @section.asset.update_attributes(params[:asset])
            flash[:notice] = 'Asset was successfully updated.'
            format.html { redirect_to section_asset_path(@section) }
            format.xml  { head :ok }
        else
            format.html { render :action => "edit" }
            format.xml  { render :xml => @section.asset.errors, :status => :unprocessable_entity }
            end
        end
    end

    def destroy
    @section.asset.destroy
        respond_to do |format|
            format.html { redirect_to section_path(@section) }
            format.xml  { head :ok }
        end
    end

# standard glue forwards    
    def index ; response_writer.call @section ; end
    def show  ; response_writer.call @section ; end
    def new   ; response_writer.call @section ; end
    def edit  ; end

private
    def load_section
        @section = Section.find(params[:section_id], :include => :assets)
    end

end


