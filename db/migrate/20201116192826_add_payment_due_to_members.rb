class AddPaymentDueToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :paymentDue, :string
  end
end
