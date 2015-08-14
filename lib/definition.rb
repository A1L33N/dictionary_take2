class Definition
  attr_reader :definition, :type
  @@all_definitions = []

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition).downcase
    @type = attributes.fetch(:type).downcase
  end

  define_singleton_method(:all) do
   @@all_definitions
  end

  define_method(:save) do
    @@all_definitions.push(self)

  end

  define_singleton_method(:clear) do
    @@all_definitions = []
  end

end
