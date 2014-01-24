require 'spec_helper'

describe ActiveMerchant::Billing::Integrations::AlipayWap do
  context 'fields' do
    #DOTO::要保证测试通过,partner,key,seller_account_name,seller_email必须是真实的数据
    hash = {:subject=>"test", :out_trade_no=>"138968323980539", :total_fee=>"0.01", 
      :payment_type=>"2", :seller_email=>"test@xiangrikui.com", 
      :seller_account_name=>"test@xiangrikui.com", :_input_charset=>"utf-8", 
      :service=>"create_direct_pay_by_user", :partner=>"2088101962733496", 
      :call_back_url=>"www.baidu.com", :merchant_url=>"www.404.com", :pay_expire=>nil,
      :notify_url=>"http://pay.xiangrikui.com:3000/payment/transaction/alipay/notify"
    }
    key = "rjliq1mf24igskb9y8jaeko6pucsc7g9"
    url = ActiveMerchant::Billing::Integrations::AlipayWap.execute_uri(hash,key)
    url.include?("alipay.wap.auth.authAndExecute").should == true
  end
end