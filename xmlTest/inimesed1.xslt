<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output encoding="UTF-8" method="html" />
<xsl:template match="/">
	<h1>------------- INIMESED ------------</h1>

	<h2>KOLM ESIMEST PEREKONNANIME, SUGU, EELVIIMANE INIMESE PEREKONNANIMI</h2>
	<ul>
		<li>
			<xsl:value-of select="/inimesed/inimene[1]/perenimi"/>
			<xsl:value-of select="/inimesed/inimene[1]/sugu"/>
		</li>
		<li>
			<xsl:value-of select="/inimesed/inimene[2]/perenimi"/>
			<xsl:value-of select="/inimesed/inimene[2]/sugu"/>
		</li>
		<li>
			<xsl:value-of select="/inimesed/inimene[3]/perenimi"/>
			<xsl:value-of select="/inimesed/inimene[3]/sugu"/>
		</li>
		<li>
			<xsl:value-of select="/inimesed/inimene[last() - 1]/perenimi"/>
		</li>
	</ul>
	
	<h2>LIST FOREACH</h2>
	<ul>
		<xsl:for-each select="/inimesed/inimene">
			<li>
				<xsl:value-of select="eesnimi"/>
				<br></br>
				<xsl:value-of select="perenimi"/>
				<br></br>
				<xsl:value-of select="synd"/>
				<br></br>
				<xsl:value-of select="sugu"/>
			</li>
		</xsl:for-each>

	</ul>
</xsl:template>
</xsl:stylesheet>