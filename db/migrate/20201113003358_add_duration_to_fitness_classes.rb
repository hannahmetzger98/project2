class AddDurationToFitnessClasses < ActiveRecord::Migration[6.0]
  def change
    add_column :fitness_classes, :duration, :integer
  end
end
