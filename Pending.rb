Pending Task :
users should be able to track status of their orders.
It should support both Authy OneTouch and Authy SoftToken (as fallback)
filters on product pages by price Done .
Order is not working properly
Send Email
Rspec


system('curl  "https://api.authy.com/protected/json/users/new" \
-d api_key="HpmjUNMXCTLRUnbIOAz74qUY7cLz6z7B" \
-d user[cellphone]="8050934252" \
-d user[email]="manav.manav.smce@gmail.com" \
-d user[country_code]="91"')


STEP: 2
curl "https://api.authy.com/onetouch/json/users/36363384/approval_requests" \
-d api_key="HpmjUNMXCTLRUnbIOAz74qUY7cLz6z7B" \
-d message="Login requested for a CapTrade Bank account." \
-d details[username]="manav.manav.smce@gmail.com" \
-d details[location]="Abc, Xyz" \
-d details[Account Number]="+918050934252" \
-d seconds_to_expire=120


STEP: 3

curl https://api.authy.com/onetouch/json/approval_requests/91736ba0-ec93-0134-ae10-0a19a44cf006?api_key=HpmjUNMXCTLRUnbIOAz74qUY7cLz6z7B

{"approval_request"=>{"uuid"=>"e56f2020-ec9f-0134-b80f-0a5fb1fd6492"}, "success"=>true}


require 'authy'

    Authy.api_key = 'HpmjUNMXCTLRUnbIOAz74qUY7cLz6z7B'
    Authy.api_uri = 'https://api.authy.com/'
    "+12015094847"

    begin
    rescue Exception => e
      Rails.logger.info "[ET] Count not send messages to user through twilio"
      AuthyJob.perform(user_contact, country_code, current_user.email)
    end
           Authy::API.request_sms(:id => result[1]["user"]["id"], :force => true).ok?
response = Authy::API.request_sms(:id => 36363384, :force => true)
response = Authy::API.verify(:id => '36363384', :token => '0837585')
