require 'couchrest_model'

module CouchRest
  module Model
    class Base
      extend OrmAdapter::ToAdapter

      class OrmAdapter < ::OrmAdapter::Base
        def column_names
          klass.properties
        end

        def get!(id)
          klass.find(wrap_key(id))
        end

        alias :get :get!

        def find_first(options = {})
          conditions, order, limit, offset = extract_conditions!(options)
          if conditions.keys.first == :id
            klass.get(conditions.values.first)
          else
            view = klass.send("by_#{conditions.keys.first}")
            view.key(conditions.values.first).limit(1).first
          end
        end

        def find_all(options = {})
          conditions, order, limit, offset = extract_conditions!(options)
          if conditions.keys.first == :id
            klass.get(conditions.values.first)
          else
            view = klass.send("by_#{conditions.keys.first}")
            view.key(conditions.values.first).all
          end
        end

        def create!(attributes = {})
          klass.create!(attributes)
        end
      end
    end
  end
end
