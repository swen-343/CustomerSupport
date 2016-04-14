class Api::V1::TicketController < Api::V1::BaseController

	def index
	    ticket1 = { :createdBy => "Ian", :ticketNum => 1, :phoneSerial => 1234, :transactionId => 1, :status => "open", :assignedTo => "Ian", :dateCreated => nil, :dateClosed => nil}
		ticket2 = { :createdBy => "Ian", :ticketNum => 2, :phoneSerial => 1234, :transactionId => 2, :status => "open", :assignedTo => "Ian", :dateCreated => nil, :dateClosed => nil}
		
		tickets = [ticket1, ticket2]

	    render(
	      json: ActiveModel::ArraySerializer.new(
	        tickets
	      )
	    )
	end
	
    def show
        #ticket = Ticket.find(params[:id])
		ticket = { :createdBy => "Ian", :ticketNum => 1, :phoneSerial => 1234, :transactionId => 1, :status => "open", :assignedTo => "Ian", :dateCreated => nil, :dateClosed => nil}

        render(json: Api::V1::TicketSerializer.new(ticket).to_json)
    end
end
