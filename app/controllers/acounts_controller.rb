class AcountsController < ApplicationController
  def index
   @accounts = accounts.all
   @import = Accounts::Import.new

  respond_to do |format|
    format.html
    format.csv { send_data @accounts.to_csv }
  end
 end
end
