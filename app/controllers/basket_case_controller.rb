class BasketCaseController < ApplicationController
  before_action :set_fruits
  before_action :set_items

  NAME = "name"
  AMOUNT = "amount"

  def index
    @list_items = @list_items.sort_by { |name, amount| eval(params[:sort] || NAME) }.to_h
    render 'basket_case/index'
  end

  private
    def set_fruits
      @fruits = {
        oranges: 5,
        apples: 9,
        grapes: 3,
        watermelons: 2
      }
    end

    def set_items
      @list_items = @fruits
    end
end
