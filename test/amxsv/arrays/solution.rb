module Amxsv
  module Arrays
    class << self
      def replace(array)
        array.map { |elem| elem < 0 ? array.min : elem }
      end

      def search(array, query, to=0, from=array.length-1)
        if array.empty?
          return -1
        end

        if to == from
          array.include?(query) ? (return from) : (return -1)
        end

        mid = to + (from - to) / 2

        if query > array[mid]
          search(array, query, mid + 1, from)
        else
          search(array, query, to, mid)
        end
      end
    end
  end
end
