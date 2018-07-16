class CreateTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :targets do |t|
      t.references :city, foreign_key: true
      t.references :profession_status, foreign_key: true

      t.timestamps
    end
  end
end
