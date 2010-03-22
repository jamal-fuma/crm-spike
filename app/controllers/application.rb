# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.
module ContentSystem
    PaginatedViewRows = 8       # Number of result lines in a paginated view
    ContentTypes      = ["png","gif","jpeg"].map { |t| "image/#{t}" }
    ContentMask       = ContentTypes.join(",")
 
    # attachment_fu options for image upload
    AttachmentOpts = {
        :content_type   => ContentTypes,
        :resize_to      => "320x160",
        # this doesn't stop the upload just the save, meh
        :max_size       => 3.megabytes,
        :path_prefix    => "public/assets/files",
        :storage        => :file_system,
        :thumbnails     => {:thumb => "<40x80>" }
    }
  end

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery  :secret => 'f8f5f0c041a663ec3c5188a31f680ee7'
  
  # filter_parameter_logging :password
    def response_writer(opts = {})
        Proc.new {             
          respond_to do |format|
              format.html
              format.xml  { render :xml => opts[:target] }
         end
        }
    end

    def create_response_writer(opts = {:error_redirect_to => Proc.new{ render :action => "new" }})
        Proc.new {
            respond_to do |format|
              if opts[:predicate].call
                flash[:notice] = opts[:notice]
                format.html(opts[:redirect_to])
              else
                format.html(opts[:error_redirect_to])
              end
            end
        }
    end
    
end
