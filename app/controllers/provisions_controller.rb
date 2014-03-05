class ProvisionsController < ApplicationController

  def index
    @provisions = Provision.all.shuffle
    @categories = Category.all
  end

end