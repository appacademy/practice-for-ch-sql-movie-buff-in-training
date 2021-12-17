class CreateActors < ActiveRecord::Migration[6.1]
  def change
    create_table :actors do |t|
      t.string :name, null: false

      # Set default value so `created_at` and `updated_at` will not be set to
      # nil when seed data is inserted with `insert_all`
      t.timestamps default: -> { 'current_timestamp' }
    end
  end
end