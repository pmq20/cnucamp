# -*- encoding : utf-8 -*-
require 'rest_client'

  class Webservice
    class << self
      def check_if_name_is_okay(q)
        begin
          okay = false
          resource = RestClient::Resource.new('http://reg.renren.com/AjaxRegisterAuth.do', :open_timeout => 1, :timeout => 1)
          res = resource.post("authType"=>"name","rndval"=>Time.now.to_i.to_s,"t"=>Time.now.to_i.to_s,"value"=>q)
          Util.ws_pp res
          okay ||= ('OKNAME'==res)
          return okay
        rescue => e
          Util.ws_pp e
          return true
        end
      end
    end
  end

