class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.datetime :pub_date
      t.string :tag
      t.text :context
      t.belongs_to :user ,index: true

      t.timestamps null: false
    end
  end
end
