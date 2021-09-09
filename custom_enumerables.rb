module Enumerable
  DEFAULT_LAMBDA = ->(x) { x }

  def my_each
    return self unless block_given?

    for item in self
      yield item
    end
  end

  def my_each_with_index
    return self unless block_given?

    (0...length).each do |i|
      yield(self[i], i)
    end
  end

  def my_select
    return self unless block_given?

    selected = []
    my_each { |item| selected << item if yield(item) }
    selected
  end

  def my_all?(pattern = nil, &block)
    block = DEFAULT_LAMBDA unless block_given?
    block = ->(x) { pattern === x} unless pattern.nil?
    my_each { |item| return false unless block.call item }
    true
  end

  def my_any?(pattern = nil, &block)
    block = DEFAULT_LAMBDA unless block_given?
    block = ->(x) { pattern === x} unless pattern.nil?


    my_each { |item| return true if block.call item }
    false
  end

  def my_none?(pattern = nil, &block)
    block = DEFAULT_LAMBDA unless block_given?
    block = ->(x) { pattern === x} unless pattern.nil?


    my_each { |item| return false if block.call item }
    true
  end

  def my_count(obj = nil, &block)
    return length if obj.nil? && !block_given?

    block = ->(x) { x == obj } unless obj.nil?
    my_select(&block).length
  end

  def my_map(proc = nil, &block)
    return to_enum(:my_map, proc) if proc.nil? && !block_given?

    block = proc unless proc.nil?
    arr = []
    my_each { |x| arr << block.call(x) }
    arr
  end

  def my_inject(initial = nil)
    return to_enum(:my_inject, initial) unless block_given?

    if initial.nil?
      memo = self[0]
      self[1..].my_each { |item| memo = yield(memo, item) }
    else
      memo = initial
      my_each { |item| memo = yield(memo, item) }
    end
    memo
  end
end
