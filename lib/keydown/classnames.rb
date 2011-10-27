module Keydown
  class Classnames

    def initialize(names = '')
      @names = []
      add(names)
    end

    def add(names)
      @names += names.split(" ")
      @names.uniq!
    end

    def as_hash
      @names.empty? ? {} : { :class => @names.join(' ') }
    end
  end
end