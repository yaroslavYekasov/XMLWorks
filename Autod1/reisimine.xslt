<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<!-- Sorteeri reisid majutuskulude järgi -->
	<xsl:template match="/">
		<h3>
			Kuvada iga reisi sihtkoht pealkirjana, kasutades h1. <br/>
			Komponendid peavad olema kuvatud täpploeteluna (ul). <br/>
			Kolmanda taseme struktuuri andmed tuleb kuvada kollasel taustal. <br/>
			Oma tingimus, hind on kõrgem kui 2000€ on punane. <br/>
			Kuva iga reisi kogumaksumuse. <br/>
			Filtreeri ja kuva ainult need reisid, mille transport on taxi. <br/>
			Sorteeri kõik reisid hinna järgi.<br/>
			Kuva kõik xml andmed tabelina, kus read on üle rea erineva värviga.
		</h3>
		
		<xsl:apply-templates select="Reisid/Reis">
			<xsl:sort select="Majutus/@Hind" data-type="number" order="ascending"/>
		</xsl:apply-templates>
	</xsl:template>

	<!-- Iga reisi peamine mall -->
	<xsl:template match="Reis">
		<h1>
			<xsl:value-of select="Sihtkoht"/>
		</h1>

		<ul>
			<li>
				Transport:
				<ul>
					<li>
						Lennujaam: <span style="background-color: yellow;">
							<xsl:value-of select="Transport/Lennujaam"/>
						</span>
					</li>
					<li>
						Viis: <span style="background-color: yellow;">
							<xsl:value-of select="Transport/Viis"/>
						</span>
					</li>
				</ul>
			</li>
			<li>
				Majutus: <xsl:value-of select="Majutus"/> (Hind: <xsl:value-of select="Majutus/@Hind"/> €)
			</li>
			<li>
				Kestus: <xsl:value-of select="Kestus"/> päeva
			</li>
			<li>
				Tegevused: <xsl:value-of select="Tegevused"/>
			</li>
		</ul>

		<xsl:choose>
			<xsl:when test="Majutus/@Hind &gt; 2000">
				<p style="color: red;">Kallis Reis: Selle reisi hind on kõrgem kui 2000€</p>
			</xsl:when>
		</xsl:choose>

		<p>
			Kogumaksumus: <xsl:value-of select="Majutus/@Hind"/> €
		</p>
	</xsl:template>

	<!-- Filter: Näita ainult reise, mille transpordiks on takso -->
	<xsl:template match="/">
		<h2>Trips with Taxi</h2>
		<table border="1" cellspacing="0" cellpadding="5">
			<thead>
				<tr style="background-color: lightgray;">
					<th>Sihtkoht</th>
					<th>Lennujaam</th>
					<th>Viis</th>
					<th>Majutus</th>
					<th>Hind (€)</th>
					<th>Kestus (päeva)</th>
					<th>Tegevused</th>
				</tr>
			</thead>
			<tbody>
				<xsl:apply-templates select="Reisid/Reis[contains(Transport/Viis, 'Taxi')]">
					<xsl:sort select="Majutus/@Hind" data-type="number" order="ascending"/>
				</xsl:apply-templates>
			</tbody>
		</table>
	</xsl:template>

	<!-- Vahelduvad reavärvid tabelis -->
	<xsl:template match="Reis">
		<xsl:variable name="rowColor" select="position() mod 2 = 0"/>
		<tr>
			<xsl:attribute name="style">
				<xsl:choose>
					<xsl:when test="$rowColor">background-color: lightyellow;</xsl:when>
					<xsl:otherwise>background-color: white;</xsl:otherwise>
				</xsl:choose>
			</xsl:attribute>
			<td>
				<xsl:value-of select="Sihtkoht"/>
			</td>
			<td>
				<xsl:value-of select="Transport/Lennujaam"/>
			</td>
			<td>
				<xsl:value-of select="Transport/Viis"/>
			</td>
			<td>
				<xsl:value-of select="Majutus"/>
			</td>
			<td>
				<xsl:value-of select="Majutus/@Hind"/>
			</td>
			<td>
				<xsl:value-of select="Kestus"/>
			</td>
			<td>
				<xsl:value-of select="Tegevused"/>
			</td>
		</tr>
	</xsl:template>



</xsl:stylesheet>
