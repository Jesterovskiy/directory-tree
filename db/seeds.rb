# frozen_string_literal: true

Directory.create(name: 'First Parent', path: Sequel.pg_array([1]))
Directory.create(name: 'First Child', path: Sequel.pg_array([1, 2]))
Directory.create(name: 'Second Parent', path: Sequel.pg_array([3]))
Directory.create(name: 'Second Child', path: Sequel.pg_array([3, 4]))
Directory.create(name: 'Third Child', path: Sequel.pg_array([3, 5]))
Directory.create(name: 'First Child Child', path: Sequel.pg_array([3, 5, 6]))
