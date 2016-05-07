class Api::V1::BaseSerializer < ActiveModel::Serializer
    def dateCreated
        object.dateCreated.in_time_zone.iso8601 if object.dateCreated
    end
end
