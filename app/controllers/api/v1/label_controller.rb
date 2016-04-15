class Api::V1::LabelController < Api::V1::BaseController

	def index
	    label1 = {:customer => 123, :ticketID => 1}
		label2 = {:customer => 123, :ticketID => 2}
		
		labels = [label1, label2]

	    render(json: ActiveModel::ArraySerializer.new(labels))
	end
	
    def show
		if params[:id] != "1"
			return api_error(status: 404, errors: 'Not found')
		end
		
		label = {:customer => 123, :ticketID => 1}
        render(json: label)
    end
end
