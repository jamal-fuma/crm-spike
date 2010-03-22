# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
    def new_helper(template)
        @helper = ViewHelper::Helper.new(template)        
    end

    def framed_content_tag(opts = {}, &block )
        @helper.framed_content(opts,&block)
    end 
    def menu_list_tag(opts={},&block)
        @helper.menu_list_tag(opts,&block)
    end

    def copyright_tag(opts={},&block)
        @helper.copyright_tag(opts,&block)
    end


      
  def document_title
    [controller.controller_name, controller.action_name].join(' | ')
  end
  
  def page_title(t)
    content_for :page_title do
        t
    end
  end

  def propercase(s)
    s.split(/\s/).each { |el| el.capitalize! }.join(" ")
  end

 
 def title_for_page
     (((@page) && !@page.new_record?) ? @page.name : document_title)
 end

   def current_user
    user = Struct.new("User",:name,:password)
    user.class_eval do
        def logged_in?
            true
        end
    end
    user.new('me','me')
  end
  
  def logged_in?
    current_user.logged_in?
  end

end
