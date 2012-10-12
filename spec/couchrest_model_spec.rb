require 'spec_helper'
require 'example_app_shared'

if !defined?(CouchRest::Model)
  puts "** require 'couchrest_model' to run the specs in #{__FILE__}"
else

  module CouchrestModelOrmSpec
    class User < CouchRest::Model::Base
      use_database CouchRest.database!("http://127.0.0.1:5984/orm_adapter_spec")

      property :name
      design do
        view :by_name
      end
    end

    class Note < CouchRest::Model::Base
      use_database CouchRest.database!("http://127.0.0.1:5984/orm_adapter_spec")

      property :body
      design do
        view :by_body
      end
    end

    # here be the specs!
    describe CouchRest::Model::Base::OrmAdapter do
      let(:default_database) { CouchRest.database!("http://127.0.0.1:5984/orm_adapter_spec") }

      before do
        default_database.recreate!
      end

      it_should_behave_like "example app with orm_adapter" do
        let(:user_class) { User }
        let(:note_class) { Note }
      end
    end
  end
end
