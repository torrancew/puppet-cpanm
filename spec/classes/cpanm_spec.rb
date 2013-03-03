require 'spec_helper'

describe 'cpanm' do
  it { should include_class( 'cpanm::install' ) }
end

