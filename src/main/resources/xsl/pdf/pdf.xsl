<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version='1.0' xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:fo="http://www.w3.org/1999/XSL/Format">

  <xsl:import href="urn:docbkx:stylesheet" />
  <xsl:param name="paper.type">A4</xsl:param>

<!--#####################################################
                 フォント設定
#########################################################-->
  <xsl:param name="title.font.family">mplus-1c-regular</xsl:param>
  <xsl:param name="body.font.family">mplus-1c-regular</xsl:param>
  <xsl:param name="monospace.font.family">mplus-1c-regular</xsl:param>

  <!-- 段落インデント -->
  <xsl:attribute-set name="normal.para.spacing">
    <xsl:attribute name="text-indent">1em</xsl:attribute>
  </xsl:attribute-set>


<!--#####################################################
                    図，表
#########################################################-->
  <!-- タイトルの位置 -->
  <xsl:param name="formal.title.placement">
    figure after
    example before
    equation after
    table before
    procedure before
  </xsl:param>

  <!-- センタリング -->
  <xsl:attribute-set name="figure.properties">
    <xsl:attribute name="text-align">center</xsl:attribute>
  </xsl:attribute-set>


  <!-- タイトルのプロパティ -->
  <xsl:attribute-set name="formal.title.properties">
    <xsl:attribute name="text-align">center</xsl:attribute>
    <xsl:attribute name="font-size">
      <xsl:value-of select="$body.font.master"/><xsl:text>pt</xsl:text>
    </xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="table.table.properties">
    <xsl:attribute name="text-indent">0em</xsl:attribute>
  </xsl:attribute-set>


<!--###################################################
                Programlistings
###################################################-->
  <xsl:attribute-set name="monospace.verbatim.properties">
    <xsl:attribute name="font-family">mplus-1mn-regular</xsl:attribute>
  </xsl:attribute-set>

  <xsl:attribute-set name="verbatim.properties">
    <xsl:attribute name="space-before.minimum">1em</xsl:attribute>
    <xsl:attribute name="space-before.optimum">1em</xsl:attribute>
    <xsl:attribute name="space-before.maximum">1em</xsl:attribute>
    <xsl:attribute name="border-color">#444444</xsl:attribute>
    <xsl:attribute name="border-style">solid</xsl:attribute>
    <xsl:attribute name="border-width">0.1pt</xsl:attribute>
    <xsl:attribute name="padding-top">0.5em</xsl:attribute>
    <xsl:attribute name="padding-left">0.5em</xsl:attribute>
    <xsl:attribute name="padding-right">0.5em</xsl:attribute>
    <xsl:attribute name="padding-bottom">0.5em</xsl:attribute>
    <xsl:attribute name="margin-left">0.5em</xsl:attribute>
    <xsl:attribute name="margin-right">0.5em</xsl:attribute>
  </xsl:attribute-set>

  <xsl:param name="shade.verbatim">1</xsl:param>
  <xsl:attribute-set name="shade.verbatim.style">
    <xsl:attribute name="background-color">#EEEEEE</xsl:attribute>
    <xsl:attribute name="border-color">#CCCCCC</xsl:attribute>
  </xsl:attribute-set>
</xsl:stylesheet>
