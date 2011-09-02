module PageObject
  module NestedElements

    def link_element(identifier)
      @platform.link_for(identifier)
    end

    def button_element(identifier)
      @platform.button_for(identifier)
    end

    def text_field_element(identifier)
      @platform.text_field_for(identifier)
    end
  end
end
