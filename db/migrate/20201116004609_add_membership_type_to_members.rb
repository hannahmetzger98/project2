class AddMembershipTypeToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :membershipType, :string
  end
end
