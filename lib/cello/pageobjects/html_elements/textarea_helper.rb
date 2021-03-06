module Cello
  module PageObjects
    module TextareaHelper
      def define_extras_for_textarea(name)
        define_method "#{name}_is_enable?" do
          !(send(name).disabled?)
        end
        define_method "#{name}_clear" do
          send(name).clear
        end
        define_method "#{name}_get_text" do
          send(name).value
        end
        define_method "#{name}_fill_with" do |text|
          send(name).set text
        end
        define_method "#{name}_dont_contain" do |text|
          !(send(name).value.include? text)
        end
        define_method "#{name}_contains" do |text|
          send(name).value.include? text
        end
        define_method "#{name}_text_is" do |text|
          send(name).value == text
        end
        define_method "#{name}_is_empty?" do 
          send(name).value.empty?
        end
        define_method "#{name}_text_size" do 
          send(name).value.size
        end
      end
    end
  end
end
