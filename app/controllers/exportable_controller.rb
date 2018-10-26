class ExportableController < ApplicationController
    def export
        @lists = current_user.lists
        respond_to do |format|
            format.csv{ send_data @lists.to_csv,
                        filename: "export.csv",
                        type: 'application/csv',    
                        disposition: 'inline'}
            format.pdf do
                pdf = Prawn::Document.new
                #PDF content
                if !(@lists.empty?)
                    @lists.each do |list|
                        pdf.text list.title
                        if !(list.tasks.empty?)
                            data = list.tasks.collect{ |task| [ task.title, task.due_date ] }
                            pdf.table(data, :cell_style => {
                            :position => :center,
                            :width => 200,
                            :borders => [:bottom, :top]
                            })
                        else
                            pdf.text "List without tasks!", :size => 15, :align => :center
                        end
                        pdf.move_down 20
                    end
                    send_data pdf.render,
                    filename: "export.pdf",
                    type: 'application/pdf',
                    disposition: 'inline'
                end
            end
        end
    end
end
