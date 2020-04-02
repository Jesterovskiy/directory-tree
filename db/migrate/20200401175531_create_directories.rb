# frozen_string_literal: true

Sequel.migration do
  up do
    create_table :directories do
      primary_key :id

      column :name, :text, null: false, default: nil
      column :path, :'integer[]', null: false, default: Sequel.pg_array([], :integer)

      index :path

      column :created_at, :timestamp
      column :updated_at, :timestamp
    end

    pgt_created_at :directories, :created_at
    pgt_updated_at :directories, :updated_at
  end

  down do
    drop_table :directories
    drop_function :pgt_ca_directories__created_at
    drop_function :pgt_ua_directories__updated_at
  end
end
