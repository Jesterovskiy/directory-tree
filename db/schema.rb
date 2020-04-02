Sequel.migration do
  change do
    create_table(:directories) do
      primary_key :id
      column :name, "text", :null=>false
      column :path, "integer[]", :default=>Sequel::LiteralString.new("'{}'::integer[]"), :null=>false
      column :created_at, "timestamp without time zone"
      column :updated_at, "timestamp without time zone"
    end
    
    create_table(:schema_migrations) do
      column :filename, "text", :null=>false
      
      primary_key [:filename]
    end
  end
end
Sequel.migration do
  change do
    self << "SET search_path TO \"$user\", public"
    self << "INSERT INTO \"schema_migrations\" (\"filename\") VALUES ('20200401175531_create_directories.rb')"
  end
end
