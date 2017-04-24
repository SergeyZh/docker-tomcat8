<?xml version="1.0" encoding="utf-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:log4j="http://jakarta.apache.org/log4j/"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xml" doctype-public="-//log4j//DTD//EN"  encoding="UTF-8" indent="yes"/>

    <!--
        Copies all existing nodes.
    -->

   <xsl:template match="/">

    <Configuration packages="com.moonlit.logfaces.appenders.log4j2">

  <xsl:copy-of select="Configuration/*[name()='Properties']"/>


    <Appenders>
	<logFaces name="LFS"
              remoteHost="replace-with-real-lfs-servers"
              port="55200"
              application="replace-with-real-app-name"
              locationInfo="true"
              backup="CONSOLE"/>

          <xsl:copy-of select="Configuration/Appenders/*"/>

    </Appenders>



  <Loggers>
    <Root level="info">
      <xsl:copy-of select="Configuration/Loggers/Root/*"/>
      <AppenderRef ref="LFS"/>
    </Root>
  <xsl:copy-of select="Configuration/Loggers/*[name()!=root]"/>

  </Loggers>

</Configuration>
   </xsl:template>


</xsl:stylesheet>
