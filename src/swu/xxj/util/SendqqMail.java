package swu.xxj.util;

import java.security.GeneralSecurityException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.mail.util.MailSSLSocketFactory;

public class SendqqMail {
	public static void send(String people,String password,String title) throws AddressException, MessagingException, GeneralSecurityException {
        Properties props = new Properties();
        props.setProperty("mail.host", "smtp.qq.com");
        props.setProperty("mail.smtp.auth", "true");
        //QQ�����SSL���ܡ�
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        props.put("mail.smtp.ssl.enable", "true");
        props.put("mail.smtp.ssl.socketFactory", sf);
        //authenticator��������¼�Լ��������ʺ����룬
        Authenticator authenticator = new Authenticator() {
            @Override
            public PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("1640085377@qq.com","rkqzdwcdqjoncjhf");
            }
        };        
        Session session = Session.getDefaultInstance(props, authenticator);                     
        //2�����͵����ݶ���Mesage
        Message message = new MimeMessage(session);
        //2.1����������˭
        message.setFrom(new InternetAddress("1640085377@qq.com"));
        // 2.2  , to:�ռ��� ; cc:���� ; bcc :����.
        /**
         * �ռ�����˭��
         *         ��һ��������
         *             RecipientType.TO    �����ռ��� 
         *             RecipientType.CC    ����
         *             RecipientType.BCC    ����
         *         ����AҪ��B���ʼ�������A�����б�Ҫ��Ҫ��CҲ���������ݣ����ڸ�B���ʼ�ʱ��
         *         ���ʼ����ݳ��͸�C����ôCҲ�ܿ����������ˣ�����BҲ��֪��A��C���͹��÷��ʼ�
         *         ������ǰ���(����)��C�Ļ�����ôB�Ͳ�֪��A��C���͹��÷��ʼ���
         *     �ڶ�������
         *         �ռ��˵ĵ�ַ��������һ��Address[]������װ���ͻ��߰����˵���������������Ⱥ����
         */
        message.setRecipient(RecipientType.TO, new InternetAddress(people));
        // 2.3 ���⣨���⣩
        message.setSubject(title);
        // 2.4 ����
        String str =password;
        message.setContent(str, "text/html;charset=UTF-8");
        //3������
        Transport.send(message);
    }
}
