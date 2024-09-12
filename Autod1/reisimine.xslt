<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
    <xsl:output method="html" indent="yes" encoding="utf-8"/>

    <xsl:template match="@* | node()">
		<style>
			body { font-family: Papyrus, fantasy; color: black; }
			h1 {
			background-color: lightcoral; /* parandatud light-red -> lightcoral */
			padding: 5px;
			border-radius: 10px;
			width: 50%;
			}

		</style>
		<h2>Works</h2>
				<xsl:for-each select="reisid[transport/tüüp = 'lennuk']">
					<h1>
						<xsl:value-of select="sihtkoht"/>
					</h1>
					<ul>
						<li>
							Alguskoht: <xsl:value-of select="alguskoht"/>
						</li>
						<li>
							Kuupäev: <xsl:value-of select="kuupäev"/>
						</li>
						<li>
							Pardalemineku aeg: <xsl:value-of select="pardaleminekuAeg"/>
						</li>
						<li>
							Transport: <xsl:value-of select="transport/tüüp"/>
						</li>
						<li style="background-color: yellow; width: 300px; border-radius: 10px; padding: 2px;">
							Firma: <xsl:value-of select="firma/nimi"/>
						</li>

						<xsl:if  test="number(hind) &gt; 500">
							<li style="background-color: red; width: 300px; border-radius: 10px; padding: 2px;">
								Hind: <xsl:value-of select="hind"/>
							</li>
						</xsl:if>
					</ul>
				</xsl:for-each>
		
		
		
				<tr>
					<td>Sum</td>
					<td>
						<xsl:value-of select="sum(reisimine/reisid/hind)" />
					</td>
				</tr>
				<tr>
					<td>Count</td>
					<td>
						<xsl:value-of select="count(reisimine/reisid/hind)" />
					</td>
				</tr>

				<tr>
					<td>Average</td>
					<td>
						<xsl:value-of
							select="sum(reisimine/reisid/hind) div count(reisimine/reisid/hind)" />
					</td>
				</tr>
		
		
		
				<table>
					<thead>
						<tr>
							<th>Reisi ID</th>
							<th>Sihtkoht</th>
							<th>Alguskoht</th>
							<th>Hind</th>
							<th>Transport</th>
							<th>Reisifirma</th>
						</tr>
					</thead>
					<tbody>
						<xsl:for-each select="reisid[transport/tüüp = 'lennuk']">
							<xsl:sort select="hind" data-type="number"/>
							<tr>
								<td>
									<xsl:value-of select="@id"/>
								</td>
								<td>
									<xsl:value-of select="sihtkoht"/>
								</td>
								<td>
									<xsl:value-of select="alguskoht"/>
								</td>
								<td>
									<xsl:value-of select="hind"/>
								</td>
								<td>
									<xsl:value-of select="transport/tüüp"/>
								</td>
								<td>
									<xsl:value-of select="firma/nimi"/>
								</td>
							</tr>
						</xsl:for-each>
					</tbody>
				</table>
    </xsl:template>
</xsl:stylesheet>
