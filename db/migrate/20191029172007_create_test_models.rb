class CreateTestModels < ActiveRecord::Migration[6.0]
  def change
    create_table :test_models do |t|
      t.text :content
      t.integer :something

      t.timestamps
    end
  end
end
