# frozen_string_literal: true

module MatPath
  module Datasets
    def roots
      where(path: Sequel.pg_array([:id])).order(:created_at)
    end
  end
end
