class Recipe
  attr_accessor :title, :ingredients, :directions, :prep_time, :chef

  def initialize(options)
    @title = options[:title]
    @ingredients = options[:ingredients]
    @directions = options[:directions]
    @prep_time = options[:prep_time]
    @chef = options[:chef]
  end
end
