require 'spec_helper'

describe 'cpanm::install' do
  it { should contain_package( 'perldoc' ) }
  it { should contain_package( 'cpanminus' ) }
end

