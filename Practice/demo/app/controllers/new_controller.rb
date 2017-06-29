class NewController < ApplicationController
  layout false

  def index
  end
  
  def index2
    @id = params['id'].to_i
    @page = params['page'].to_i
  end
end
