<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">
		<h1>------------- CONDITIONALS ------------</h1>
		<h2>
			KUI NUMBER LÕPPEB 4ga
		</h2>
		<ul>
			<li>
				<xsl:if test="/autod/auto[substring(registrinumber, 3, 1) = '4']">
					Ülevaatuse kuu on Aprill.
				</xsl:if>
			</li>
		</ul>
		
		<h2>
			SISALDAB X
		</h2>

		<ul>
			
			<xsl:for-each select="/autod/auto">
				<xsl:if test="contains(omanik, 'x')">
					<li>Sisaldab X, CHURKAAAA!!!</li>
				</xsl:if>
			</xsl:for-each>
			
		</ul>

		<h2>
			EI SISALDA X
		</h2>

		<ul>

			
				<xsl:for-each select="/autod/auto">
					<xsl:if test="not (contains(omanik, 'x'))">
						<li>Ei sisalda X, norm vend</li>
					</xsl:if>
				</xsl:for-each>

		</ul>
	</xsl:template>
</xsl:stylesheet>