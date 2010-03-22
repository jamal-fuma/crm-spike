ActionController::Routing::Routes.draw do |map|
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  map.root :controller => "pages"
  map.resources(:pages, :has_many => [ :sections ], :member => { :higher =>:put, :lower =>:put, :preview => :post} ) do|pages|
    pages.resources(:sections , :has_many => [:assets]) do |sections|
        sections.resources do |assets|
            assets.resources
        end
    end
    end

# any named page
    map.connect ":id", :controller => "pages", :action => "show"
    map.connect ":id.html", :controller => "pages", :action => "show"
end
