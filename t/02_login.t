use Test::More tests => 1;

use WWW::Domain::Registry::VeriSign;
use Data::Dumper;

my $reg = WWW::Domain::Registry::VeriSign->new;
my $res = $reg->parse_login(<<'EOD');
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
<table>
        <tr>
                <td valign="top" align="left" width="590">
                        <img border="0" src="images/wel_nsi.gif" alt="Welcome to the VeriSign NDS Registrar Tool" width="315" height="78">
                        <p><img border="0" src="images/m1.gif" alt="Administer Domains" width="393" height="42"></p>

                        <blockquote>

                        <p><font face="Arial, Helvetica, sans-serif" size="2">
                        Review, update, delete, or transfer domain names that you have registered. You can also check the availability of domain names.</font></p>
                        </blockquote>

                        <p><img border="0" src="images/m2.gif" alt="Administer Name Servers" width="393" height="42"></p>

                        <blockquote>
                        <p><font face="Arial, Helvetica, sans-serif" size="2">Initiate a query to find a specific name server, check to determine if a name server is available or review, update, or delete name servers registered by your company.</font></p>
                        </blockquote>

                        <p><img border="0" src="images/m3.gif" alt="Administer Registrar Information" width="393" height="44"></p>

                        <blockquote>
                        <p><font face="Arial, Helvetica, sans-serif" size="2">Review and update your account information here. Also add a new contact person to your account, or update contact person information to keep it current.</font></p>
                        </blockquote>

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
is($res, '1', 'login');
1
