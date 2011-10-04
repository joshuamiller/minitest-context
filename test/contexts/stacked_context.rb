MiniTest::Context.define(:stacked_context) do
  before do
    @subject = 1
  end
end

MiniTest::Context.define(:stacked_context) do
  before do
    @subject += 1
  end
end
