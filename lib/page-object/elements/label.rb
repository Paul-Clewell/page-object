module PageObject
  module Elements
    class Label < Element

      protected

      def self.watir_finders
        [:class, :id, :name, :text, :index, :xpath]
      end

      def self.selenium_finders
        [:class, :id, :name, :text, :index, :xpath]
      end

    end

    ::PageObject::Elements.tag_to_class[:label] = ::PageObject::Elements::Label
  end
end