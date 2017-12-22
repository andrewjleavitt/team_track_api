class CreateTeamAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :team_assignments do |t|
      t.references :team, foreign_key: true
      t.references :member, foreign_key: true
      t.date :effective_date
      t.date :termination_date

      t.timestamps
    end
  end
end
