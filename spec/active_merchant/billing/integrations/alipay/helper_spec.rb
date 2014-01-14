require 'spec_helper'
describe ActiveMerchant::Billing::Integrations::Alipay::Helper do
  
  context "alipay private key" do
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY.should == "AlipayPrivateKey"
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY = "ASDFGHJKKL"
    ActiveMerchant::Billing::Integrations::Alipay::Helper.KEY.should == "ASDFGHJKKL"
  end

  context 'fields' do
    params = {:subject=>"test", :out_trade_no=>"138968323980539", :total_fee=>"0.01", :payment_type=>"2", :seller_email=>"pay@xiangrikui.com", 
      :seller_account_name=>"test@xiangrikui.com", :_input_charset=>"utf-8", 
      :service=>"create_direct_pay_by_user", :partner=>"2088201962733496",
      :return_url=>nil, :call_back_url=>"www.baidu.com", :merchant_url=>"www.404.com", :pay_expire=>nil, :notify_url=>"http://pay.xiangrikui.com:3000/payment/transaction/alipay/notify"}
   
    a = ActiveMerchant::Billing::Integrations::Alipay::Helper.new("20140113","208812344321",{})
    ActiveMerchant::Billing::Integrations::Alipay.execute_uri(params,"rjllq1mf24igskb9y8jaeko6pucsc7g912")
    p a.sign
    p a.fields
  end
  
end