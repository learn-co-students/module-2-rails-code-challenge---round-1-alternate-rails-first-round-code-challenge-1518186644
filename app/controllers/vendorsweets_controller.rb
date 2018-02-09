class VendorsweetsController < ApplicationController

  def new
    @vendorsweet = VendorSweet.new
    @sweets = Sweet.all
    @vendors = Vendor.all
  end

  def create
    @vendorsweet = VendorSweet.create(vendorsweet_params)

  end

  private

  def vendorsweet_params
    params.require(:vendorsweet).permit(:vendor_id, :sweet_id, :comment)
  end

end
