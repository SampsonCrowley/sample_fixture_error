class CreateUniques < ActiveRecord::Migration[6.0]
  def change
    create_table :uniques do |t|
      t.integer :value

      t.index [ :value ], unique: true

      t.timestamps
    end
  end
end
