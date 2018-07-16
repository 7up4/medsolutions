class CreateJoinTableSpecializationsTargets < ActiveRecord::Migration[5.1]
  def change
    create_join_table :specializations, :targets do |t|
      # t.index [:specialization_id, :target_id]
      # t.index [:target_id, :specialization_id]
    end
  end
end
