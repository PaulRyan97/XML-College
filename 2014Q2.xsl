<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	  <body>
	    <table rules = "all">
	      <thead>
			<tr>
		 	 <th>Singer Name</th>
		  	 <th>No. of Recordings</th>
			</tr>
	      </thead>
	      	<tbody>
	      		 <xsl:for-each select="bodhran/people[profession='singer']">
	      		 	<xsl:sort select = "./surname"/>
					<xsl:sort select = "./firstname"/>
	      		 	<xsl:variable name="pID" select="./personID"></xsl:variable>
	      		 	<xsl:variable name="counter" select="count(/bodhran/recordings[singerID=$pID])">
		  			</xsl:variable>
		  			<tr>
      					<td><xsl:value-of select="./firstname "/><xsl:value-of select="./surname"/></td>
						<td><xsl:value-of select="$counter"/></td>
   					</tr>
   				</xsl:for-each>








	      	</tbody>
	      </table>
	  </body>
	</html>
</xsl:template>
</xsl:transform>
