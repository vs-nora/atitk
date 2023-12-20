class AddBaseModels < ActiveRecord::Migration[7.0]
  def change
    create_table :sections do |t|
      t.string :name
      t.boolean :default, null: false, default: false
    end

    create_table :profiles

    create_table :profile_sections do |t|
      t.references :profile
      t.references :section
      t.text :value
    end
  end
end
