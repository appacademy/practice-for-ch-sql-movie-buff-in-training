class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false, index: true
      t.integer :yr, null: false, index: true
      t.float :score, null: false
      t.integer :votes, null: false
      t.bigint :director_id, null: false, index: true

      # Set default value so `created_at` and `updated_at` will not be set to
      # nil when seed data is inserted with `insert_all`
      t.timestamps default: -> { 'current_timestamp' }
    end
  end
end