package com.withpill.api.mail;

import java.io.UnsupportedEncodingException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.withpill.web.account.dto.FindDto;

public class Gmail {
	private static String user = ""; // 네이버일 경우 네이버 계정, gmail경우 gmail 계정
    private static String password = "";   // 패스워드
	public static void send() {

        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user, "WITHPILL"));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress("")); 

            // Subject
            message.setSubject("메일이왔어요 확인하세요"); //메일 제목을 입력

//            String content = "http://localhost:8081/survey/surveyResult.wp?surveyId=1";
            // Text
//            message.setText("http://localhost:8081/survey/SurveyResult.wp?surveyId=1");    //메일 내용을 입력
//            message.setContent(content, "text/html;charset=euc-kr");
            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
	
	public static void findPwSend(FindDto fdto) {

        // SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user, "WITHPILL"));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(fdto.getEmail())); 
            //---------------------------------------
            String genderId = "";
			if (fdto.getGenderId() == 1)
				genderId = "남";
			else
				genderId = "여";

			String mailSubject = fdto.getName() + "(" + fdto.getUserId() + ")" + "(" + genderId + ")"
					+ "님의 비밀번호를 알려드립니다.";
			String mailText = fdto.getName() + "(" + fdto.getUserId() + ")" + "(" + genderId + ")"
					+ " 님의 ★임시★비밀번호는 ↓\n" + fdto.getPassword() + "\n↑입니다";
            //-------------------------------------
            // Subject
            message.setSubject(mailSubject); //메일 제목을 입력

            // Text
            message.setText(mailText);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }

	public static void noticeSend(String content, String recipient) {
		// SMTP 서버 정보를 설정한다.
        Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user, "WITHPILL"));

            // 수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 

            // 제목
            message.setSubject("위드필 수신 동의 관련"); //메일 제목을 입력

            // Text
            message.setText(content);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public static void surveySend(String content, String recipient) {
		Properties prop = new Properties();
        prop.put("mail.smtp.host", "smtp.gmail.com"); 
        prop.put("mail.smtp.port", 465); 
        prop.put("mail.smtp.auth", "true"); 
        prop.put("mail.smtp.ssl.enable", "true"); 
        prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");
        prop.put("mail.smtp.ssl.protocols", "TLSv1.2");
        
        Session session = Session.getInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(user, password);
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(user, "WITHPILL"));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipient)); 

            // Subject
            message.setSubject("위드필에서 설문조사 결과를 보내드립니다."); //메일 제목을 입력

            // Text
//            message.setText(content);    //메일 내용을 입력
            message.setContent(content, "text/html;charset=euc-kr");
            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
