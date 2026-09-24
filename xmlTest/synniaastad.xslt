<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">

		<h2>Nimed ja sünniaastad</h2>

		<ul>
			<xsl:for-each select="//inimene">
				<li>
					<p>
						<xsl:value-of select="eesnimi"/>: 
						<xsl:value-of select="@synd"/>
					</p>
				</li>

			</xsl:for-each>
		</ul>
	</xsl:template>
</xsl:stylesheet>