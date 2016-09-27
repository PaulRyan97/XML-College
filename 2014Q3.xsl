<?xml version="1.0"?>
<xsl:transform version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<html>
	  <body>
	    <table rules = "all">
	      <thead>
			<tr>
		 	 <th>Song Title</th>
		  	 <th>Name of Composer</th>
		  	 <th>Name of Lyricist</th>
		  	 <th>No. of Recordings</th>
			</tr>
	      </thead>
	      	<tbody>
	      		<xsl:for-each select="bodhran/songs">
	      			<xsl:sort select="./title"/>
	      			<xsl:variable name="sID" select="./songID"></xsl:variable>
	      			<xsl:variable name="cID" select="./composerID"></xsl:variable>
	      			<xsl:variable name="LID" select="./lyricistID"></xsl:variable>
	      			<xsl:variable name="counter" select="count(/bodhran/recordings[songID=$sID])">
	      			</xsl:variable>

	      			<tr>
      					<td><xsl:value-of select="./title"/></td>
      					<td><xsl:value-of select="/bodhran/people[personID=$cID]/firstname"/>
      						<xsl:value-of select="/bodhran/people[personID=$cID]/surname"/>
      					</td>
      					<td><xsl:value-of select="/bodhran/people[personID=$LID]/firstname"/>
      						<xsl:value-of select="/bodhran/people[personID=$LID]/surname"/>
      					</td>
						<td><xsl:value-of select="$counter"/></td>
   					</tr>

   				</xsl:for-each>



	      







	      	</tbody>
	      </table>
	  </body>
	</html>
</xsl:template>
</xsl:transform>
