class Api::V1::TicketController < Api::V1::BaseController

	$ticket1 = { :createdBy => "Ian", :ticketNum => "1", :phoneSerial => [1234, 5678], :transactionId => 1, :status => "open", :assignedTo => "Ian", :dateCreated => nil, :dateClosed => nil}
	$ticket2 = { :createdBy => "Ian", :ticketNum => 2, :phoneSerial => 1234, :transactionId => 2, :status => "open", :assignedTo => "Ian", :dateCreated => nil, :dateClosed => nil}

	def index
		tickets = [$ticket1, $ticket2]

	    render(json: ActiveModel::ArraySerializer.new(tickets).to_json)
	end
	
    def show
		if params[:ticketNum] != "1"
			return api_error(status: 404, errors: 'Not found')
		end

        render(json: $ticket1)
    end

	def get_phones_from_ticket
		if params[:ticketNum] != "1"
			return api_error(status: 404, errors: 'Not found')
		end
		
		render(json: $ticket1[:phoneSerial].to_json)
	end
	
	def update_ticket_status
		if params[:ticketNum] != "1"
			return api_error(status: 404, errors: 'Not found')
		end
		
		$ticket1[:status] = params[:status]
		
		render(json: $ticket1)
	end
end
