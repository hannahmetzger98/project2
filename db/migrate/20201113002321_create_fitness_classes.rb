class CreateFitnessClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :fitness_classes do |t|

      t.timestamps
    end
  end
end
