# frozen_string_literal: true

module MatPath
  module Plugin
    ##
    # Module: Methods that applied to model instance
    #
    module InstanceMethods
      def children
        self.class.where(Sequel.pg_array(:path).contains(path))
            .where(Sequel.pg_array(:path).length => path.count + 1)
            .exclude(path: Sequel.pg_array(path)).order(:created_at)
      end

      def destroy_all
        self.class.where(Sequel.pg_array(:path).contains(path)).destroy
      end

      def after_create
        path << id
        save
        super
      end
    end
  end
end
