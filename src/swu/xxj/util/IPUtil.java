package swu.xxj.util;
import java.net.InetAddress;
import java.net.UnknownHostException;
import javax.servlet.http.HttpServletRequest;
public class IPUtil {
	public static String serverIP = "0.0.0.0";
	/**
     * ��ȡ��ǰClient IP
     * @param request
     * @return
     */
    public static String getIpAddr(HttpServletRequest request){
        String ipAddress = request.getHeader("x-forwarded-for");
            if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("Proxy-Client-IP");
            }
            if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getHeader("WL-Proxy-Client-IP");
            }
            if(ipAddress == null || ipAddress.length() == 0 || "unknown".equalsIgnoreCase(ipAddress)) {
                ipAddress = request.getRemoteAddr();
                if(ipAddress.equals("127.0.0.1") || ipAddress.equals("0:0:0:0:0:0:0:1")){
                    //��������ȡ�������õ�IP
                    InetAddress inet=null;
                    try {
                        inet = InetAddress.getLocalHost();
                    } catch (UnknownHostException e) {
                        e.printStackTrace();
                    }
                    ipAddress= inet.getHostAddress();
                }
            }
            //����ͨ�����������������һ��IPΪ�ͻ�����ʵIP,���IP����','�ָ�
            if(ipAddress!=null && ipAddress.length()>15){ //"***.***.***.***".length() = 15
                if(ipAddress.indexOf(",")>0){
                    ipAddress = ipAddress.substring(0,ipAddress.indexOf(","));
                }
            }
            return ipAddress;
    }
    
    public static class TcpInfo
	{
		public String country = "";
		public String region = "";
		public String city = "";
		public String ip;
		
		public String getCityInfo()
		{
			return country + "/" + region + "/" + city; 
		}
	}
    public static class TcpInfoBackObj
	{
		public int code = 0;
		public TcpInfo data;
	}
}
