class SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search_result
    @model = params[:model]
    @content = params[:content]
    @method = params[:method]
    
    if @model == "User"
      @records = User.search_for(@content, @method)
    else
      @records = Book.search_for(@content, @method)
    end
  end
  
  
end
