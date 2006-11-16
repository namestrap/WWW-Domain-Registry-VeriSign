use Test::More tests => 1;

use WWW::Domain::Registry::VeriSign;
use Data::Dumper;

my $reg = WWW::Domain::Registry::VeriSign->new;
my $res = $reg->parse_query_regr(<<'EOD');
<!---
/****************************************************************************
 *      VeriSign GRS PROPRIETARY AND CONFIDENTIAL                                    *
 *                                                                          *
 * This  information  includes  trade  secrets  and confidential commercial *
 * and/or financial information belonging to VeriSign, Inc.. *
 * It is exempt  from  disclosure  under  the  Freedom  of Information Act. *
 * Unauthorized  disclosure  and/or  use of  this  information  without the *
 * express  written  consent of  VeriSign, Inc. is  prohibited and *
 * may   result  in  criminal   prosecution  and   penalties   pursuant  to *
 * 18 U.S.C. section 1905.                                                  *
 *                                                                          *
 *              COPYRIGHT VeriSign, Inc. (Unpublished Work)        *
 ***************************************************************************/
--->











<html>
<head>
  <title>
    
    Production Registrar Tool
  </title>

  <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
  <meta name="GENERATOR" content="Microsoft FrontPage 4.0">
  <meta name="ProgId" content="FrontPage.Editor.Document">
</head>

<body bgcolor="#FFFFFF">

<div align="left">
<table border="0" cellpadding="0" cellspacing="0" width="770">
<tr>
<td><img border="0" src="images/in_logo.gif" alt="VeriSign Naming and Directory Services" width="160" height="78"><img border="0" src="images/curve.gif" width="219" height="78"><img border="0" src="images/h_reg.gif" width="380" height="78">
</td>
</tr>
</table>

</div>





<table cellspacing="0" cellpadding="0" border="0">
  <tr valign="top">

    
    <td valign="top" align="right" width="160">
        
  

  <a href="main.jsp?contentPage=main_files/new_user_info.jsp">
  <img border="0" src="images/newuser2.gif" alt="New User welcome center" width="160" height="68"></a>

  

  <a href="main.jsp?contentPage=main_files/domain/domain_admin.jsp">
  <img border="0" src="images/domain_admin2.gif" alt="Domain Administration" width="143" height="27"></a><br>

  <font face="Arial, Helvetica, sans-serif" size="2">
  <a href="main.jsp?contentPage=main_files/domain/query_domain.jsp">Query Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/check_domain.jsp">Check Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/update_domain.jsp">Update Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/renew_domain.jsp">Renew Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>

  <a href="main.jsp?contentPage=main_files/domain/transfer_domain.jsp">Transfer Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/delete_domain.jsp">Delete Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/query_domain_for_sync.jsp">Sync Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/query_domain_for_restore.jsp">Restore Domain</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/domain/query_domain_for_restrp.jsp">Submit Restore Report</a><img border="0" src="images/smspace.gif" width="5" height="2"></p>

  

  <p><a href="main.jsp?contentPage=main_files/nameserver/ns_admin.jsp">

  <img border="0" src="images/nameserver_admin2.gif" alt="Name Server Administration" width="143" height="27"></a><br>

  <a href="main.jsp?contentPage=main_files/nameserver/query_ns.jsp">Query Name Server</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/nameserver/check_ns.jsp">Check Name Server</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/nameserver/update_ns.jsp">Update Name Server</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/nameserver/add_ns.jsp">Add Name Server</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/nameserver/delete_ns.jsp">Delete Name Server</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>

  <a href="main.jsp?contentPage=main_files/nameserver/query_ip.jsp">Query IP Address</a><img border="0" src="images/smspace.gif" width="5" height="2"></p>

  

  <p><a href="main.jsp?contentPage=main_files/registrar/registrar_admin.jsp">
  <img border="0" src="images/registrar_admin2.gif" alt="Registrar Administration" width="143" height="27"></a><br>

  <a href="query_regr.do">Query Registrar Account</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="query_regr_for_update.do">Update Registrar Account</a><img border="0" src="images/smspace.gif" width="5" height="2"><br>
  <a href="main.jsp?contentPage=main_files/registrar/add_contact.jsp">Add Registrar Contact</a><img border="0" src="images/smspace.gif" width="5" height="2"></p>

  </font>

  
  


<p>

<FONT color=#275700 face=Arial size=2>
<b>registrar</b>
Logged In&nbsp;
</FONT>
<img border="0" src="images/arrow2.gif" alt="right arrow" width="41" height="23"><BR>


<form name="logonForm" method="post" action="/registrartool/logout.do">

  
  <input type="image" name="goButtonValue" src="images/home2.gif" border="0" alt="Log out">
</form>


    </td>

    
    <td valign="top" align="left" width="10">
      <img border="0" src="images/smspace.gif" width="10" height="5">&nbsp;
    </td>


     
     <td valign="top" align="left" width="590">

      <table cellpadding=5 cellspacing=5 width=100% border=0>
        <tr>
          <td valign=top>



  <img border="0" src="images/blank3.gif" width="160" height="23"><br>
  <img src="images/que_reg.gif" alt="Query Registrar" border="0" width="141" height="69">
  <p>
  <img src="images/spacer.gif" width="406" height="1"></p>

  <p>
  <font face="Arial, Helvetica, sans-serif" size="2">The following information is what we have listed for your account. If you would like to make any changes to the account information, please use the <a href="query_regr_for_update.do">Update Registrar Account</a> function to do it. If you need to add or update information on a contact person listed here, please use the <a href="main.jsp?contentPage=main_files/registrar/add_contact.jsp">Add Registrar Contact</a> or click on the link(at the bottom of this page) to update.</font></p>





  

  <table border=0 cellPadding=10 cellSpacing=0 width=588>

    <tr>
      <tr>
        <td width="100%" colspan="3">
        <font face=arial,helvetica size=2>
        <li><b>Logon Name:</b>
          registrar</li><br>
        <li><b>Registrar Name:</b>

          example Co.,Ltd.</li><br>
        <li><b>Registrar Id:</b>
          1234</li><br>
        <li><b>Status:</b>
          ACTIVE<br>
        <li><b>Security Phrase:</b>

           Domain Registrar<br>

        <li><b>Registrar TLD Privileges:</b>
                 
        
        NET
        
        COM
        
        
        

  </li><br>
        <li><b>Poll Queue Notification:</b>
          EMAIL ONLY<br>

        <li><b>Grace Period:</b>
           5<br>
        <li><b>Auto Renew Grace Period:</b>
           45<br>
        <li><b>Explicit Renew Grace Period:</b>
           5<br>

        <li><b>Transfer Grace Period:</b>
           5<br>
        <li><b>Credit Limit:</b>
           $1,000.00<br>
        <li><b>Available Credit:</b>
            $2,345.25<br>

        <li><b>Lower Limit Percent:</b>
            0.3<br>
        <li><b>Whois Server:</b>
            
            
              
                <dd>whois.example.com</li>
              
            
        <li><b>Whois URL:</b>
            
            
              
                <dd>whois.example.com</li>

              
            
        <li><b>Address:</b>
             1-2-3 Kabukicho
             
             Shibuya-ku<br>
        <li><b>City:</b>
             Tokyo<br>
        <li><b>State:</b>
             Japan<br>

        <li><b>Postal Code:</b>
             100-0001<br>
        <li><b>Country Code:</b>
             JP<br>
        <li><b>Fax Number:</b>
             81 3 1234 5678<br>

        <li><b>Phone Number:</b>
             81 3 2345 6789<br>
        <li><b>Email:</b>
             registry@example.com<br>
        <li><b>BILLING CONTACT</b></li><br>
           
            
              
                <dd><a href="query_contact.do?contactDef.name=Bill,.,Contact">Bill,.,Contact</a></li>

              
            
        <li><b>TECH CONTACT</b></li><br>
           
            
              
                <dd><a href="query_contact.do?contactDef.name=Tech,.,Contact">Tech,.,Contact</a></li>
              
            
        <li><b>ADMIN CONTACT</b></li><br>
           
            
              
                <dd><a href="query_contact.do?contactDef.name=K,.,K">K,.,K</a></li>
              
                <dd><a href="query_contact.do?contactDef.name=Bill,.,Contact">Bill,.,Contact</a></li>
              
                <dd><a href="query_contact.do?contactDef.name=Foo,.,Bar">Foo,.,Bar</a></li>

              
            
        </font>
        </td>
      </tr>
  </table>



</td>
        </tr>
      </table>
     </td>

  </tr>
</table>



<center><!-- Title: Registrar Tool CopyRight Information -->


<font color="#000000" face="Arial, Helvetica, sans-serif" size="1">Copyright &#169; 2006 VeriSign, Inc. All Rights Reserved.<BR>
<A HREF="http://www.verisign.com/legalNotice.html" target=_blank>Legal Notices</A></font>
</body>
</html>

</center>
EOD
;

is($res->{'whois url'}, 'whois.example.com', 'query_regr');
1
