class CreateJoinTableNewsTargets < ActiveRecord::Migration[5.1]
  def change
    create_join_table :news, :targets do |t|
      # t.index [:news_id, :target_id]
      # t.index [:target_id, :news_id]
    end
  end
end
