<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:template match="/">
		<h1>------------- AUTOD LOENDAMINE ------------</h1>
		<h2>
			MITME INIMESE PEREKONNANIMI ON Püsijainen
		</h2>
		<ul>
			<li>
				<xsl:value-of select="count(/autod/auto[omanik='Püsijainen'])"/>
			</li>
		</ul>



		<h2>
			MITME INIMESE PEREKONNANIMI ALGAB P TÄHEGA
		</h2>

		<ul>
			<li>
				<xsl:value-of select="count(/autod/auto[starts-with(omanik, 'P')])"/>
			</li>
		</ul>

		<h2>
			MITME AUTO REGISTRIMÄRGI  NUMBRITEST VIIMANE ON 6
		</h2>

		<ul>
			
			<li>
				<xsl:value-of select="count(/autod/auto[substring(registrinumber, 3, 1) = '6'])"/>
			</li>
			
		</ul>


		<h2>
			MITME AUTO REGISTRIMÄRGI NUMBRITEST VIIMANE ON 4 V 6
		</h2>

		<ul>
			<li>
				<xsl:value-of select="count(/autod/auto[(substring(registrinumber, 3, 1) = '4') or (substring(registrinumber, 3, 1) = '6')])"/>
			</li>
		</ul>
	</xsl:template>
</xsl:stylesheet>