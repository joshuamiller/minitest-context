MiniTest::Context.define(:before_block) do
  before do
    @subject = [1,2,3]
  end
end
