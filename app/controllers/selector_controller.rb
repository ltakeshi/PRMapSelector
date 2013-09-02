class SelectorController < ApplicationController
    def initialize
        super
        @map_all = Map::Map_List
        @map_rule = Map::Map_Rule
    end
  def index
      @root = Rails.root
  end
  def select
      @map_names = params[:map].select{|k,v| v == "1"}.keys
  end
  def result
      @map_rule_list = params[:map].values
  end
end
