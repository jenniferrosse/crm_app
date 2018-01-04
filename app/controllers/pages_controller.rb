class PagesController < ApplicationController
  def home
  end

  def available_units
    @available_units = Unit.where(available: true)
  end
end
