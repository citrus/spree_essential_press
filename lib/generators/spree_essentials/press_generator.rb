require 'generators/essentials_base'

module SpreeEssentials
  module Generators
    class PressGenerator < SpreeEssentials::Generators::EssentialsBase
      
      desc "Installs required migrations for spree_essential_press"
      source_root File.expand_path("../../templates/db/migrate", __FILE__)
      
      def copy_migrations
        migration_template "create_press.rb", "db/migrate/create_press.rb"
      end

    end
  end
end