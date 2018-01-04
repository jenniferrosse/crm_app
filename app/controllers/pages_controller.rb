class PagesController < ApplicationController
  def home
  end

  def available_units
    @available_units = Unit.where(available: true).includes(:property).order('properties.name DESC, unit_number ASC')
    respond_to do |format|
      format.html
      format.csv { render text: @available_units.to_csv }
      format.xls { send_data @available_units.to_csv(col_sep: "\t") }
    end
  end
end
