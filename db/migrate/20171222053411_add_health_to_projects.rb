class AddHealthToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :health, :string
  end
end
