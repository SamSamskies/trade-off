class ProvisionsController < ApplicationController

  def index
    @provisions = Provision.all.shuffle
  end

end