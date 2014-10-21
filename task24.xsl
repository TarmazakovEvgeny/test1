<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="text"/>

<xsl:template match="/">
  <html>
  <body>
  <xsl:text>&lt;?xml version="1.0" encoding="UTF-8"?&gt;&#xa;&lt;library&gt;</xsl:text>
  <xsl:apply-templates/> 
  <xsl:text>&lt;/library&gt;</xsl:text>
  </body>
</html>
</xsl:template>

<xsl:template match="book">
  <xsl:text>&lt;book title="</xsl:text><xsl:value-of select="title"/><xsl:text>" year="</xsl:text><xsl:value-of select="year"/><xsl:text>"&gt;</xsl:text>
  <xsl:apply-templates select="author"/> 
  <xsl:text>&#xa;  &lt;/book&gt;</xsl:text>
</xsl:template>

<xsl:template match="author">
  <xsl:text>&#xa;    &lt;author name="</xsl:text><xsl:value-of select="."/><xsl:text>"&gt;</xsl:text>
  <xsl:text>&lt;/author&gt;</xsl:text>
</xsl:template>

</xsl:stylesheet>
