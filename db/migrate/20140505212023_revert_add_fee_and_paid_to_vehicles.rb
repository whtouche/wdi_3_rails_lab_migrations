require_relative '20140505211340_add_fee_and_paid_to_vehicles'

class RevertAddFeeAndPaidToVehicles < ActiveRecord::Migration
  def change
    revert AddFeeAndPaidToVehicles
  end
end
