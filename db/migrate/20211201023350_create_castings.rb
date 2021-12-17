class CreateCastings < ActiveRecord::Migration[6.1]
  def change
    create_table :castings do |t|
      t.bigint :movie_id, null: false, index: true
      t.bigint :actor_id, null: false, index: true
      t.integer :ord, null: false

      # Set default value so `created_at` and `updated_at` will not be set to
      # nil when seed data is inserted with `insert_all`
      t.timestamps default: -> { 'current_timestamp' }
    end
  end
end