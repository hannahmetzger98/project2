class AddClassNameToFitnessClasses < ActiveRecord::Migration[6.0]
  def change
    add_column :fitness_classes, :className, :string
  end
end
