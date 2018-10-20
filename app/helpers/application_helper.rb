module ApplicationHelper
    def delete_to_with_icon(text, path, classes)
        form_tag path, :method => :delete do
            button_tag(classes) do
            raw text
            end
        end
    end

    def post_to_with_icon(text, path, classes)
        form_tag path, :method => :delete do
            button_tag(classes) do
            raw text
            end
        end
    end

    def get_to_with_icon(text, path, classes)
        form_tag path, :method => :get do
            button_tag(classes) do
            raw text
            end
        end
    end
end
