require 'spec_helper'

describe ActiveMerchant::Billing::Integrations::Alipay do
  context 'execute_uri' do
    params = {
      :partner => "2088201232733496",
      :total_fee => 0.01,
      :out_trade_no => "20140101311412",
      :seller_email => "pay@xiangrikui.com",
      :notify_url => "pay.xiangrikui.com/payment/getaway/notify",
      :"_input_charset" => 'utf-8',
      :service =>  "create_direct_pay_by_user",
      :payment_type => "2",
      :subject => "test",
      :body => "",
      :return_url => "www.baidu.com".to_s
    }
    key = "12345677"
    ActiveMerchant::Billing::Integrations::Alipay.execute_uri(params,key)
  end
end