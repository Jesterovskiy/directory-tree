# frozen_string_literal: true

module MatPath
  module Plugin
    module InstanceMethods
      def children
        self.class.where(Sequel.pg_array(:path).contains(path))
            .exclude(path: Sequel.pg_array(path))
      end

      def after_create
        path << id
        save
        super
      end
    end
  end
end
