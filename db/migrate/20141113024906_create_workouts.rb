class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true
      t.string :sport
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
