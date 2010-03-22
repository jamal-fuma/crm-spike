class SectionsController < ApplicationController
before_filter :load_page

# standard glue forwards    
    def index ; response_writer.call @page.sections ; end
    def show  ; response_writer.call @page.sections ; end
    def new   ; response_writer.call @page.sections.build ; end
    def edit  ; end
private
    def load_page
        @page = Page.find(params[:page_id], :include => :sections)
   end
end
