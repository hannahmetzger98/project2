class AddSignedUpToFitnessClasses < ActiveRecord::Migration[6.0]
  def change
    add_column :fitness_classes, :signedUp, :integer
  end
end
