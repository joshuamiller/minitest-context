MiniTest::Context.define(:stacked_context) do
  before do
    @number ||= 1
  end
end

MiniTest::Context.define(:stacked_context) do
  before do
    @number += 1
  end
end
