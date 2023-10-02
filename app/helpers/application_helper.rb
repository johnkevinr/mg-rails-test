module ApplicationHelper

  def order_arrow(current_order, current_sort, expected_sort)
    order_condition(current_order, "▲", "▼") if current_sort === expected_sort
  end

  def toggle_order(current_order)
    order_condition(current_order, BasketCaseController::DESC, BasketCaseController::ASC)
  end

  private

  def order_condition(order, expected_asc_value, expected_desc_value)
    order === BasketCaseController::ASC ? expected_asc_value : expected_desc_value;
  end
end
