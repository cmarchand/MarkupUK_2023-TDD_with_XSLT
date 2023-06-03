<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:math="http://www.w3.org/2005/xpath-functions/math"
  exclude-result-prefixes="xs math"
  version="3.0"
  xmlns:mtx="http://www.example.com/fn">
  
  <xsl:function name="mtx:isTitle1" as="xs:boolean">
    <xsl:param name="input" as="xs:string"/>
    <xsl:sequence select="$input eq '# Title 1'"/>
  </xsl:function>
  
  <xsl:template match=".[mtx:isTitle1(.)]" mode="md-to-xml">
    <title>Title 1</title>
  </xsl:template>
</xsl:stylesheet>