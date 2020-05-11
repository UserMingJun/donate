package com.hmj.tool;



import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Date;
import java.util.Properties;

public class MailTool {

    // 发件人的 邮箱 和 密码（替换为自己的邮箱和密码）
    // PS: 某些邮箱服务器为了增加邮箱本身密码的安全性，给 SMTP 客户端设置了独立密码（有的邮箱称为“授权码”）,
    // 对于开启了独立密码的邮箱, 这里的邮箱密码必需使用这个独立密码（授权码）
    public static String myEmailAccount = "bzdmzdyx@163.com";
    public static String myEmailPassword = "hmj1093549470";

    // 发件人邮箱的 SMTP 服务器地址
    public static String myEmailSMTPHost = "smtp.163.com";

    public static void send(String receiveMailAccount,String userName) throws Exception {
        // 收件人邮箱（替换为自己知道的有效邮箱）
        // 1. 创建参数配置, 用于连接邮件服务器的参数配置
        Properties props = new Properties();                    // 参数配置
        props.setProperty("mail.transport.protocol", "smtp");   // 使用的协议（JavaMail规范要求）
        props.setProperty("mail.smtp.host", myEmailSMTPHost);   // 发件人的邮箱的 SMTP 服务器地址
        props.setProperty("mail.smtp.auth", "true");            // 需要请求认证
        final String smtpPort = "465";
        props.setProperty("mail.smtp.port", smtpPort);
        props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
        props.setProperty("mail.smtp.socketFactory.fallback", "false");
        props.setProperty("mail.smtp.socketFactory.port", smtpPort);

        Session session = Session.getInstance(props);
        session.setDebug(true);                                 // 设置为debug模式, 可以查看详细的发送 log

        MimeMessage message = createMimeMessage(session, myEmailAccount, receiveMailAccount,userName);

        Transport transport = session.getTransport();
        transport.connect(myEmailAccount, myEmailPassword);

        transport.sendMessage(message, message.getAllRecipients());

        transport.close();
    }

    /**
     * 创建一封只包含文本的简单邮件
     *
     * @param session 和服务器交互的会话
     * @param sendMail 发件人邮箱
     * @param receiveMail 收件人邮箱
     * @return
     * @throws Exception
     */
    public static MimeMessage createMimeMessage(Session session, String sendMail, String receiveMail,String userName) throws Exception {
        MimeMessage message = new MimeMessage(session);

        message.setFrom(new InternetAddress(sendMail, "腊排骨公益捐物慈善组织", "UTF-8"));

        message.setRecipient(MimeMessage.RecipientType.CC, new InternetAddress("bzdmzdyx@163.com", "腊排骨", "UTF-8"));
        message.setRecipient(MimeMessage.RecipientType.TO, new InternetAddress(receiveMail, "腊排骨", "UTF-8"));

        message.setSubject("腊排骨公益捐物慈善组织", "UTF-8");

        message.setContent("尊敬的"+userName+"您好：<br><br>"
                + "听说您丢失了密码我们万分痛心。但是，不用着急，腊排骨公益捐物慈善组织为您提供了找回密码功能。点击以下链接更新密码：<br><br>"
                + "http://localhost:8080/user/toUpdatePass<br><br>"
                + "谢谢<br><br>"
                + "您的好伙伴——辣排骨公益捐物慈善组织", "text/html;charset=UTF-8");

        message.setSentDate(new Date());

        message.saveChanges();

        return message;
    }

}