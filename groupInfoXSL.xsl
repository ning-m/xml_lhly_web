<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>两河流域 宣传海报</title>
			</head>
			<body style="background-image:url('images/bk2.jpg');font-family:Microsoft YaHei">
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="section">
		<div style="text-align:center;width:1020px;margin:0 auto;">
		   <h4 style="font-family:'隶书';text-align:center;color:rgb(255,255,255);font-size:3em"><xsl:apply-templates select="groupName"/></h4>
		   <p style="font-size:20px;">主题：<xsl:apply-templates select="topic"/></p>
		   <p style="font-size:20px;"><a href="filmXML2.xml">数据展示</a></p>
	   </div>
	   <div style="text-align:center;">
		   <xsl:apply-templates select="members" />
	   </div>
   </xsl:template>
   
   <xsl:template match="members">
   	<div style="width:1020px;margin:0 auto">
   		<p style="font-size:20px">小组成员</p>
   		<hr/>
   	</div>
   	
   	<center>
	   <div style="text-align:center;width:1020px;margin:0 auto;">
			<xsl:apply-templates select="member[@id='no1']" />
			<xsl:apply-templates select="member[@id='no2']" />
			<xsl:apply-templates select="member[@id='no3']" />
		</div>
		</center>
   </xsl:template>
   
	<xsl:template match="member">
		<div style="background-image:url('images/bk1.png');width:300px;line-height:5px;margin:20px;float:left;border-radius:20px;">
			<p>姓名：<xsl:value-of select="name"/></p><br />
			<p>性别：<xsl:value-of select="sex"/></p><br />
			<p>学号：<xsl:value-of select="number"/></p><br />
		</div>
   </xsl:template>
</xsl:stylesheet>
