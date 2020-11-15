class CreateMembershipPkgs < ActiveRecord::Migration[6.0]
  def change
    create_table :membership_pkgs do |t|
      t.string :name
      t.integer :price
      t.text :amenities

      t.timestamps
    end
  end
end
