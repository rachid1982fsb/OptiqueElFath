require 'test_helper'

class ItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item = items(:one)
  end

  test "should get index" do
    get items_url
    assert_response :success
  end

  test "should get new" do
    get new_item_url
    assert_response :success
  end

  test "should create item" do
    assert_difference('Item.count') do
      post items_url, params: { item: { color: @item.color, comment: @item.comment, cost_in: @item.cost_in, d1: @item.d1, d2: @item.d2, d3: @item.d3, d4: @item.d4, name: @item.name, price_out: @item.price_out } }
    end

    assert_redirected_to item_url(Item.last)
  end

  test "should show item" do
    get item_url(@item)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_url(@item)
    assert_response :success
  end

  test "should update item" do
    patch item_url(@item), params: { item: { color: @item.color, comment: @item.comment, cost_in: @item.cost_in, d1: @item.d1, d2: @item.d2, d3: @item.d3, d4: @item.d4, name: @item.name, price_out: @item.price_out } }
    assert_redirected_to item_url(@item)
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete item_url(@item)
    end

    assert_redirected_to items_url
  end
end
