# frozen_string_literal: true

begin
  DB = Sequel::Model.db

  DB.extension :pg_array
  Sequel.extension :pg_array_ops
rescue Sequel::Error
end

Sequel::Model.plugin :active_model
