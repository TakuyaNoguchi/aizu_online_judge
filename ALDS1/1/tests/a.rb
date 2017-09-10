require 'test/unit'
require_relative '../answers/a.rb'

class TestInsertionSort < Test::Unit::TestCase
  def setup
    @stdout = StringIO.new
    $stdout = @stdout
    case_num = method_name.match(/_(\d+)$/).captures.first

    input_file = StringIO.new(
      File.read(File.expand_path("#{__dir__}/../inputs/a_#{case_num}.txt"))
    )

    @n = input_file.gets.to_i
    @a = input_file.gets.split.map(&:to_i)
    InsertionSort.execute(@a, @n)
  end

  def teardown
    @stdout.close
    $stdout = STDOUT
  end

  def test_case_1
    expected = <<-EOS
5 2 4 6 1 3
2 5 4 6 1 3
2 4 5 6 1 3
2 4 5 6 1 3
1 2 4 5 6 3
1 2 3 4 5 6
    EOS

    assert_equal(expected, @stdout.string)
  end

  def test_case_2
    expected = <<-EOS
1 2 3
1 2 3
1 2 3
    EOS

    assert_equal(expected, @stdout.string)
  end
end