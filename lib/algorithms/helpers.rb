##
# merge sort helpers
##
def add_to_and_remove_from!(add_to, remove_from)
  add_to.push(remove_from[0])
  remove_from.slice!(0)
end

def drain_to_from!(drain_to, drain_from)
  while not_empty?(drain_from)
    add_to_and_remove_from!(drain_to, drain_from)
  end
end

def merge(first_list, second_list)
  sorted = []

  while not_empty?(first_list) && not_empty?(second_list)
    if first_list[0] <= second_list[0]
      add_to_and_remove_from!(sorted, first_list)
    else
      add_to_and_remove_from!(sorted, second_list)
    end
  end

  drain_to_from!(sorted, first_list)
  drain_to_from!(sorted, second_list)

  return sorted
end

def not_empty?(list)
  return ! list.empty?
end

##
# quick sort helper
##
def partition(list, low, high)
  pivot_value = list[low] # use low; to optimize choose median of low, mid, high
  left_index = low + 1
  right_index = high

  while true
    while left_index <= right_index && list[left_index] <= pivot_value
      left_index += 1
    end

    while right_index >= left_index && list[right_index] >= pivot_value
      right_index -= 1
    end

    if right_index < left_index
      break
    else
      list[left_index], list[right_index] = list[right_index], list[left_index]
    end
  end

  list[low], list[right_index] = list[right_index], list[low]
  return right_index
end
