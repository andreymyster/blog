require 'spec_helper'

describe Comment do
  it { should belong_to :article }

  it { should allow_value(qwerty_string(4000)).for(:body) }
  it { should_not allow_value(qwerty_string(4001)).for(:body) }
end
