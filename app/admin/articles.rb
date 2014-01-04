ActiveAdmin.register Article do

  member_action :create, :method => :post do
    debugger
      # Do some CSV importing work here...
      #:notice => "Article added successfully!"
      #redirect_to {:action => :index}
    end
  
end
