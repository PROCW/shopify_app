# frozen_string_literal: true
module ShopifyApp
  module Generators
    class ShopifyAppGenerator < Rails::Generators::Base
      def initialize(args, *options)
        @opts = options.first
        super(args, *options)
      end

      def run_all_generators
        generate("shopify_app:install #{@opts.join(' ')}")
        generate("shopify_app:shop_model")
        generate("shopify_app:authenticated_controller")
        generate("shopify_app:root_controller")
        generate("shopify_app:products_controller")
      end
    end
  end
end
