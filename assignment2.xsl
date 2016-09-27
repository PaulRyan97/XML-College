<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   
   <xsl:template match="/">
	<html>
		<body>
			<table rules = "all">
				<thead>
					<tr>
						<th>First Name</th>
						<th>Surname</th>
						<th>County</th>
					</tr>
				</thead>
				<tbody>
					<xsl:apply-templates select="database/customers/customer[confirmedIdentity = 1]">
						<xsl:sort select = "./countyName"/>
						<xsl:sort select = "./surname"/>
						<xsl:sort select = "./firstname"/>
					</xsl:apply-templates>
				</tbody>
			</table>
		</body>
	</html>


 </xsl:template>

  	<xsl:template match="customer"> 
    	<tr>
			<td><xsl:value-of select="./firstname"/></td>
			<td><xsl:value-of select="./surname"/></td>
			<td><xsl:value-of select="./countyName"/></td>
    	</tr>
    </xsl:template>
</xsl:transform>