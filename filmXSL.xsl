<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml">
	<xsl:output method="xml"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>电影数据</title>
				<style type="text/css">
						p,hr{
							line-height:5px;
						}
						div{
							background-image:url('images/background2.jpg');
							background-repeat:no-repeat;
							width:554px;
							height:500px;
							padding:30px;
							padding-top:10px;
							margin:20px;
							line-height:20px;
						}
				</style>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>
	
   	<xsl:template match="Film">
		<div>
			<p style="text-align:center">片名：<font style="color:red"><xsl:value-of select="title"/></font></p>
			<hr />
			<p><b>上映时间：</b><xsl:value-of select="releasedate"/></p>
			<p><b>国家：</b><xsl:value-of select="country"/></p>
			<p><b>类型：</b>
				<xsl:for-each select="type">
				<xsl:sort select="."/>
					<xsl:value-of select="."/>
					<xsl:if test="position()!=last()"> , </xsl:if>
				</xsl:for-each>
			</p>
			<p><b>语种：</b><xsl:value-of select="language"/></p>
			<p><b>时长：</b><xsl:value-of select="movietime"/></p>
			<p><b>导演：</b><xsl:value-of select="director"/></p>
			<p style="line-height:20px"><b>主演：</b>
				<xsl:for-each select="actor">
				<xsl:sort select="."/>
					<xsl:value-of select="."/>
					<xsl:if test="position()!=last()"> / </xsl:if>
				</xsl:for-each>
			</p>
			<p><b>评分：</b>
			<xsl:choose>
				<xsl:when test="score &gt; 8">
					<font color="red"><xsl:value-of select="score"/></font>
				</xsl:when>
				<xsl:when test="score &gt; 6">
					<font color="green"><xsl:value-of select="score"/></font>
				</xsl:when>
				<xsl:when test="score &gt; 4">
					<font color="black"><xsl:value-of select="score"/></font>
				</xsl:when>
				<xsl:otherwise>
					<font color="gray"><xsl:value-of select="score"/></font>
				</xsl:otherwise>
			</xsl:choose>
			<p><b>下载地址：</b><a href="{@download}"><xsl:value-of select="@download"/></a></p>
			</p>
			<p style="line-height:150%"><b>简介：</b><xsl:value-of select="overview"/></p>
		</div>
   </xsl:template>
</xsl:stylesheet>
