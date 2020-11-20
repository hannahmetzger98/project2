class AddClassesEnrolledToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :classesEnrolled, :integer
  end
end
