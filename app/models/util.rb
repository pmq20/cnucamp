# -*- encoding : utf-8 -*-
  class Util
    class << self
    
      def js_strlen(str)
        len=0
        i=0
        while i<str.length
          if str[i].ord>255
            len+=2
          else
            len+=1
          end
          i+=1
        end
        return len
      end
    
      def js_chinese(str)
        ret=0
        i=0
        while i<str.length
          if str[i].ord>255
            ret+=1
          end
          i+=1
        end
        return ret
      end
    
      def ws_pp(msg)
        unless $KTV_NO_WS_PP
          if caller[1] =~ /in `([^`']+)'/
            pp "[Webservice]{#{$1}} #{msg}"
          else
            pp "[Webservice] #{msg}"
          end
        end
      end
    
    end
  end

