require "spec_helper"
require "netatalk-config"

describe NetatalkConfig do
  context 'no shares' do
    its('afp') { should match(/\A\s*\z/) }
  end

  shared_context 'simple share' do
    before do
      subject.shares['simple'] = {
        'path' => '/simple/path'
      }
    end
  end

  shared_context 'advanced share' do
    before do
      subject.shares['advanced'] = {
        'path' => '/advanced/path',
        'time_machine' => true
      }
    end
  end

  context 'simple share' do
    include_context 'simple share'
    its('afp') { should include("[simple]\n  path = /simple/path") }
  end

  context 'advanced shares' do
    include_context 'advanced share'
    its('afp') { should include("[advanced]\n  path = /advanced/path\n  time machine = yes") }
  end

  context 'simple + advanced shares' do
    include_context 'simple share'
    include_context 'advanced share'
    its('afp') { should include("[simple]\n  path = /simple/path") }
    its('afp') { should include("[advanced]\n  path = /advanced/path\n  time machine = yes") }
  end   
end
