module Api
  module V1
    class BaseController < ApplicationController
      include BaseHandler
      include SerializerHandler

      def index
        raise ActiveRecord::RecordNotFound, controller_name.camelize.singularize if relation.blank?

        render json: serialize(collection, serializer)
      end

      protected

      def collection
        @collection ||= BaseCollection.new(relation, filter_params).results
      end

      def relation
        @relation ||= model.all
      end

      def filter_params
        params.permit
      end

      def serializer
        "#{model.name}Serializer".constantize
      end
    end
  end
end
