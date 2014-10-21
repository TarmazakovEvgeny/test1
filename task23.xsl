<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:for-each select="//book">
	<xsl:value-of select="title"/>  
	<xsl:if test ="price &gt; 30">
	<xsl:text> &gt;30 </xsl:text>
	</xsl:if>
	<xsl:if test ="price &lt; 30">
	<xsl:text> &lt;30 </xsl:text>
	</xsl:if>
	<xsl:if test ="price = 30">
	<xsl:text> =30 </xsl:text>
	</xsl:if>
<xsl:text>
</xsl:text>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
