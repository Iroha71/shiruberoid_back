class CreateKanbans < ActiveRecord::Migration[6.0]
  def change
    create_table :kanbans do |t|
      t.string :title, null: false, limit: 50
      t.string :desc, limit: 200
      t.datetime :notify_at
      t.integer :task_num, default: 0
      t.integer :finished_task_num, default: 0
      t.date :finished_at
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
