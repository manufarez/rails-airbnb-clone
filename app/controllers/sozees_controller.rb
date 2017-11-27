class SozeesController < ApplicationController
  def  index
    @sozees = Sozee.all
  end
end
