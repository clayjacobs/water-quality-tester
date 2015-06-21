class CreateDistributedHealths < ActiveRecord::Migration
  def change
    create_table :distributed_healths do |t|
      t.float :ph
      t.float :chlorine
      t.decimal :ph
      t.binary :magnified
      t.text :taste
      t.text :odor
      t.decimal :temperature
      t.float :mercury
      t.float :hardness
      t.float :lat
      t.float :long

      t.timestamps null: false
    end
  end
end
