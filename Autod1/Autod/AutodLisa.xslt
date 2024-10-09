<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl"
>
	<xsl:output method="html" indent="yes" encoding="utf-8"/>

	<xsl:template match="/">
		<h3>Autode üldkogus xml jadaskogus</h3>
		<br/>
		Kasutame count() funktsiooni
		<xsl:value-of select="count(autod/auto)"/>

		<hr/>
		<h3>Autode üldkogus, mis on vAasta=2005</h3>
		<xsl:value-of select="count(autod/auto[vAasta=2005])"/>
		<hr/>
		<h2>1. Trüki välja (eralda komaga) auto registrinumbri numvrite osa</h2>
		<xsl:for-each select="autod/auto">
			<xsl:value-of select="substring(registriNumber, 1, 3)"/>, 
		</xsl:for-each>
		<hr/>
		<h2>2. Trüki välja (eralda komaga) omaniku nime viimane täht</h2>
		<xsl:for-each select="autod/auto">
			<xsl:value-of select="substring(omanik, string-length(omanik), 1)"/>, 
		</xsl:for-each>
		<hr/>
		<h2>3. Auto omanikud, mis sisaldavad E täht</h2>
		<xsl:for-each select="autod/auto[contains(omanik, 'E')]">
			<li>
				<xsl:value-of select="omanik"/>
			</li>
		</xsl:for-each>
		<hr/>
		<h2>4. Leia, mitme auto registrimärgi numbritest viimane on 2</h2>
		<xsl:for-each select="autod/auto">
			<xsl:if test="substring(registriNumber, 1, 1) = '2'">
				<li>
					<xsl:value-of select="registriNumber"/>
				</li>
			</xsl:if>
		</xsl:for-each>
		<hr/>
		<h2>5. Taeta iga registrinumbri puhul, millises kuus auto ülevaatus...</h2>
		<hr/>

		<h3>Auto regnumber, mis algavad 2:</h3>
		<br/>
		Kasutame starts-with funktsiooni
		<ul>
			<xsl:for-each select="autod/auto[starts-with(registriNumber, '2')]">
				<xsl:sort select="vAasta" order="descending"/>
				<li>
					<xsl:value-of select="concat(mark, ', ', registriNumber, ', ', vAasta)"/>
				</li>
			</xsl:for-each>
		</ul>

		<h2>Autod tabelina</h2>
		<table border="1">
			<tr>
				<th>Reg Number</th>
				<th>Mark</th>
				<th>Väljastamise aasta</th>
				<th>Omanik</th>
				<th>Ülevaatuse kuu</th>
			</tr>
			<xsl:for-each select="autod/auto">
				<tr>
					<td>
						<xsl:value-of select="registriNumber"/>
					</td>
					<td>
						<xsl:value-of select="mark"/>
					</td>
					<td>
						<xsl:value-of select="vAasta"/>
					</td>
					<td>
						<xsl:value-of select="omanik"/>
					</td>
					<xsl:if test="(substring(registriNumber, 3, 1) +2)>=9">
						<td bgcolor="red">
							<xsl:value-of select="substring(registriNumber, 3, 1)+2"/>
						</td>
					</xsl:if>
					<xsl:if test="(substring(registriNumber, 3, 1) +2) &lt; 9">
						<td bgcolor="green">
							<xsl:value-of select="substring(registriNumber, 3, 1)+2"/>
						</td>
					</xsl:if>
				</tr>
			</xsl:for-each>
		</table>
		
		<h2>1. Autode ja nende omanike nimekirja väljastamine mis loetleda masinate margid</h2>
        <table border="1">
            <tr>
                <th>Mark</th>
                <th>Reg Number</th>
                <th>Omanik</th>
            </tr>
            <xsl:for-each select="autod/auto">
                <tr>
                    <td><xsl:value-of select="mark"/></td>
                    <td><xsl:value-of select="registriNumber"/></td>
                    <td><xsl:value-of select="omanik"/></td>
                </tr>
            </xsl:for-each>
        </table>

		<h2>Autode arv, mille registreerimisnumbris on tähed „A“, „B“, „C“</h2>
		<table border="1">
			<tr>
				<th>Täht</th>
				<th>Autode arv</th>
			</tr>
			<tr>
				<td>A</td>
				<td>
					<xsl:value-of select="count(autod/auto[contains(registriNumber, 'A')])"/>
				</td>
			</tr>
			<tr>
				<td>B</td>
				<td>
					<xsl:value-of select="count(autod/auto[contains(registriNumber, 'B')])"/>
				</td>
			</tr>
			<tr>
				<td>C</td>
				<td>
					<xsl:value-of select="count(autod/auto[contains(registriNumber, 'C')])"/>
				</td>
			</tr>
		</table>
		
	</xsl:template>
</xsl:stylesheet>
