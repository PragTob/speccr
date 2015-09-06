require "../src/speccr"

Speccr::Context.new(nil, "lol").run do
  it "knows the truth" do
    expect(true).to eq true
  end

  it "knows to fail" do
    expect(true).to eq false
  end
end
