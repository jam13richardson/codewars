# For this exercise you will be strengthening your page-fu mastery.
# You will complete the PaginationHelper class, which is a utility class helpful for querying paging information related to an array.

# The class is designed to take in an array of values and an integer indicating how many items will be allowed per each page.
# The types of values contained within the collection/array are not relevant.

# TODO: complete this class



  class PaginationHelper
    def initialize(collection, items_per_page)
      @collection = collection
      @items_per_page = items_per_page
    end
  
    def item_count
      @collection.count
    end
  
    def page_count
      (item_count.to_f / @items_per_page).ceil
    end
  
    def page_item_count(page_index)
      return -1 if page_index < 0 || page_index >= page_count
  
      remaining_items = item_count - page_index * @items_per_page
      [remaining_items, @items_per_page].min
    end
  
    def page_index(item_index)
      return -1 if item_index < 0 || item_index >= item_count
  
      item_index / @items_per_page
    end
  end

helper = PaginationHelper.new(['a','b','c','d','e','f'], 6)
p helper.item_count
p helper.page_count
p helper.page_item_count(1)
p helper.page_index(1)