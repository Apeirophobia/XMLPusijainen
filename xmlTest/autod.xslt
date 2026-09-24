<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">
		<h1>------------- AUTOD ------------</h1>


		<h2>
			AUTO REGISTRINUMBER
		</h2>
		<ul>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:value-of select="registrinumber"/>
				</li>
			</xsl:for-each>
		</ul>
			
		
		
		<h2>
			AUTO REGISTRINUMBRI NUMBRID
		</h2>

		<ul>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:value-of select="substring(registrinumber, 1, 3)"/>
				</li>
			</xsl:for-each>
		</ul>
		
		<h2>
			AUTO REGISTRINUMBERI TÄHED
		</h2>

		<ul>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:value-of select="substring(registrinumber, 3, 3)"/>

				</li>
			</xsl:for-each>
		</ul>
		
		
		<h2>
			OMANIKU ESIMENE TÄHT
		</h2>

		<ul>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:value-of select="substring(omanik, 1, 1)"/>

				</li>
			</xsl:for-each>
		</ul>
		
		<h2>
			OMANIKU VIIMANE TÄHT
		</h2>

		<ul>
			<xsl:for-each select="autod/auto">
				<li>
					<xsl:value-of select="substring(omanik, string-length(omanik), 1)"/>

				</li>
			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>