class Definition
  attr_reader :definition, :type

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition).downcase
    @type = attributes.fetch(:type).downcase
  end

end
