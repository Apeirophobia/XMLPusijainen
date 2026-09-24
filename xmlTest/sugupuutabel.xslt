<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="UTF-8" method="html" />
	<xsl:param name="otsing">ar</xsl:param>
	<xsl:param name="pikkus">5</xsl:param>
	<xsl:template match="/">

		<h2>Sugupuu tabelina</h2>

		<table border="1">
			<tr>
				<th>Nimi</th>
				<th>Sünniaasta</th>
				<th>Lapsed</th>
				<th>Vanem</th>
				<th>Vanavanem</th>
				<th>Vanus</th>
				<th>Vanema vanus sünni hetkel</th>
			</tr>
			<xsl:for-each select="//inimene[contains(eesnimi, $otsing) or string-length(eesnimi) = $pikkus]">
				<tr style="border:1px solid black">
					<td style="border:1px solid black">
						<xsl:value-of select="eesnimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="@synd"/>
					</td>
					<td style="border:1px solid black">
						<xsl:for-each select="lapsed/inimene">
							<xsl:value-of select="eesnimi"/>
							<xsl:if test="position() != last()">, </xsl:if>
						</xsl:for-each>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="../../eesnimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="../../../../eesnimi"/>
					</td>
					<td style="border:1px solid black">
						<xsl:value-of select="2026 - @synd"/>
						<xsl:if test="count(lapsed/inimene) =  0">
							<xsl:text xml:space="preserve"> Laps</xsl:text>
						</xsl:if>
					</td>
					<td style="border:1px solid black">
						<xsl:if test="../../@synd">
							<xsl:variable name="lapseVanus" select="2026 - @synd"/>
							<xsl:variable name="vanemaVanus" select="2026 - ../../@synd"/>
							<xsl:value-of select="$vanemaVanus - $lapseVanus"/>
						</xsl:if>
					</td>
				</tr>
			</xsl:for-each>
		</table>




	</xsl:template>
</xsl:stylesheet>