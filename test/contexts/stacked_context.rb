MiniTest::Context.define(:stacked_context) do
  let(:first) { 1 }
end

MiniTest::Context.define(:stacked_context) do
  let(:second) { 1 }
end
