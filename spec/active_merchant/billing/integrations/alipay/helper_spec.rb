require 'spec_helper'
describe ActiveMerchant::Billing::Integrations::Alipay::Helper do
  
  context "alipay private key" do
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY.should == "AlipayPrivateKey"
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY = "ASDFGHJKKL"
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY.should == "ASDFGHJKKL"
  end

  context 'fields' do
    params = {
      :total_fee => 0.01,
      :seller_email => "13544534667",
      :notify_url => "pay.xiangrikui.com/payment/getaway/notify",
      :"_input_charset" => 'utf-8',
      :service =>  "create_direct_pay_by_user",
      :payment_type => "2",
      :subject => "test",
      :body => "",
      :return_url => "www.baidu.com".to_s
    }
    a = ActiveMerchant::Billing::Integrations::Alipay::Helper.new("20140113","208812344321",{})
    a.query_params params
    p a.sign
    p a.fields
  end
  
end