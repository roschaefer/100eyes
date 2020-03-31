require 'view_component/test_case'

class ButtonTest < ViewComponent::TestCase
  include ComponentHelper

  test 'render content' do
    component_inline('button') { 'Button label' }
    assert_text('Button label')
  end

  test 'render primary button' do
    component_inline('button')
    assert_selector('.c-button.c-button--primary')
  end

  test 'render secondary button' do
    component_inline('button', style: 'secondary')
    assert_selector('.c-button.c-button--secondary')
  end
end
