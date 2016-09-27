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
		  	 <th>No. of Sims</th>
			</tr>
	      </thead>
	      	<tbody>
		  <xsl:for-each select="database/customers/customer">
				<xsl:variable name ="cID" select="./customerID">
				</xsl:variable>
		  		<xsl:variable name="counter" select="count(/database/sims/sim[customerID=$cID])">
		  		</xsl:variable>
 		  		<xsl:if test="$counter > 1"> 
 		  			<tr>
      					<td><xsl:value-of select="./firstname"/></td>
     					 <td><xsl:value-of select="./surname"/></td>
						<td><xsl:value-of select="$counter"/></td>
   					</tr>
				</xsl:if>
		  </xsl:for-each>
	      	</tbody>
	    </table>
	  </body>
	</html>


</xsl:template>

</xsl:transform>