class SelectorController < ApplicationController
  def index
      @map_all = Map::Map_List
  end
  def select
      @map_all = Map::Map_List
      @map_rule = Map::Map_Rule
      @map_names = params[:map].select{|k,v| v == "1"}.keys
  end
  def result
      @map_rule_list = params[:map].values
  end
end
