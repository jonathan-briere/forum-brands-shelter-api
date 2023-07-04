module Api
  module V1
    class AnimalsController < BaseController
      actions :index

      private

      def collection
        @collection ||= AnimalsCollection.new(relation, filter_params).results
      end

      def relation
        @relation ||= Animal.includes(:shelter)
      end

      def filter_params
        params.permit(:animal_type)
      end
    end
  end
end
