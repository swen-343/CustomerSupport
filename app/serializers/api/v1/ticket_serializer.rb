class Api::V1::TicketSerializer < Api::V1::BaseSerializer
    attributes :ticketNum, :createdBy, :phoneSerial, :transactionId, :status, :assignedTo, :dateCreated, :dateClosed

    has_many :labels

    def dateCreated
        object.dateCreated.in_time_zone.iso8601 if object.dateCreated
    end

end
