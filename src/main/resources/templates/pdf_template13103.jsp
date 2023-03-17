<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../../inc_common.jsp" %>
<%@ include file="../../inc_doctype.jsp" %>
<jsp:useBean id="constant" scope="page" class="com.dragon.plat.common.Constant"></jsp:useBean>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>授权书</title>
    <style>
        *{font-size:12px;font-family: "SimSun";}
        body{margin:0;padding:0;}
        h2{position: relative;text-align: center;height:71px;line-height:71px;font-size:20px;font-weight:bold;margin:0;padding:0;}
        h2 img{position: absolute;left:10px;top:0px;}
        table{margin:2px;table-layout:fixed; width: 98%;}
        table{word-break:break-all; }
        table tr{height: 20px;padding: 0px;}
        td{padding: 0px;}
        .zhang{background:url(${fundsSource.companySeal});width:153px;height:105px;right:10px;bottom:10px;position: absolute;}
        .p-left{margin:3px 0;}
        .partition{text-align: center;}
        p{line-height: 16px;margin: 10px;font-size: 14px;}
        h3{margin: 2px;height: 14px;}

    </style>
</head>

<body style="width: 100%;">
<h2>授权书<!--<img width="50px;" height="50px;" src="${fundsSource.companyLogo}" />--></h2>
<p><strong>${fundsSource.companyName}（以下统称“道积公司”）：</strong></p>
<p><strong>因本人申请消费贷款服务，现对道积公司作如下授权：</strong></p>
<p>1、本人同意并授权道积公司及其合作方向中国人民银行个人信用信息基础数据库查询、获取和报送本人的个人信息、个人信用信息以及其他反映我信用状况的信息（包括不良信用记录，如有）。</p>
<p>2、本人同意并授权道积公司，出于向本人提供消费贷款及相关服务之需要（包括但不限于贷款申请的处理、各个阶段的贷款管理、账户及付款管理、预防诈骗、权利的保护及执行等），提供本人的个人信息和相关贷款信息给道积公司的关联公司以及道积公司的合作伙伴。</p>
<p>3、本人理解并同意道积公司可以将部分与消费贷款有关的服务外包给其他业务合作伙伴并且为此目的将本人相关的个信息提供给该业务合作伙伴。</p>
<p>4、本人授权并配合道积公司及其合作方出于提供消费贷款之需要，向道积公司的内关联公司、业务合作伙伴查询 并获取我的个人相关信息（包括但不限于本人身份信息、实名认证信息、微信账号相关信息、GPS位置信息、通讯录信息、百行征信有限公司相关信息等）。</p>
<p>5、本人同意并授权道积公司及其合作方向任何第三方查询并获取我的个人相关信息，不管我是否已在先授权该第三方将我的个人相关信息与任何第三方共享。本人特此授权全部合法拥有我的个人相关信息（无任何附加限制）的第三方出于对本人信用状况的评估和本人所申请的消费贷款的发放、偿还和执行有关的目的向道积公司及其合作方提供本人个人相关信息或数据库或信息系统的准入权和使用权。</p>
<p>6、本人同意并授权道积公司及其合作方使用本人的个人信息向本人推荐产品。推荐的方式包括但不限于向本人通信地址、电子邮箱、移动电话、QQ、微信、手机客户端发送商业广告。</p>
<p>7、无论消费贷款申请是否通过，本人同意道积公司及其合作方采集、妥善保存并在上述授权范围内使用本人的个人信息、指纹信息、个人征信信息以及本人提供的相关文件。</p>
<p>8、授权期限为自本人签署该授权书起至 贷款（如有）偿还完毕。</p>
<p style="margin-top:20px;margin-left: 422px;">姓&nbsp;&nbsp;&nbsp;名：${member.realName}</p>
<p style="margin-top:20px;margin-left: 422px;">授权签字：</p>
<p style="margin-top:20px;margin-left: 422px;">身份证号码：${member.memberClientele.creSn}</p>
<p style="margin-top:20px;margin-left: 422px;">日&nbsp;&nbsp;&nbsp;期：${currDate}</p>
</body>
</html>
