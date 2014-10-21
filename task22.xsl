<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="text"/>
<xsl:template match="/">
<xsl:for-each select="//book">
<xsl:if test ="count(author)>1">
  <xsl:element name="title">
    <xsl:value-of select="concat(string(//book/title),string('*'))"/>
  </xsl:element>
</xsl:if>
<xsl:value-of select="title"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
