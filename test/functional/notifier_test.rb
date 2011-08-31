require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "order_received" do
    mail = Notifier.order_received
    assert_equal "Order received", mail.subject
    assert_equal ["Deks@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
   # assert_match "Hi", mail.body.encoded
    assert_match /1 x Programming Ruby 1.9/, mail.body.encoded
  end

  test "order_shipped" do
    mail = Notifier.order_shipped
    assert_equal "Order shipped", mail.subject
    assert_equal ["Deks@example.org"], mail.to
    assert_equal ["depot@example.com"], mail.from
  #  assert_match "Hi", mail.body.encoded
    assert_match /<td>1&times;<\/td>\s*<td>Programming Ruby 1.9<\/td>/,
    mail.body.encoded
  end

end
