module Amxsv
  module Arrays
    class << self
      def replace(array)
        array.map { |elem| elem < 0 ? array.min : elem }
      end

      def search(array, query)
        0
      end
    end
  end
end
