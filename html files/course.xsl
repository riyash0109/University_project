<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<body>
				<h1 style="text-align:center">Course Management System</h1>
				<xsl:apply-templates select = "University/Course" /> 
				<table border="2" align="center">
					<tr>
						<th>Course_Id</th>
		                <th>First_name</th>
		                <th>Last_name</th>
		                <th>Age</th>
		                <th>Sex</th>
		                <th>Dept_Id</th>
		            </tr>
		            <xsl:for-each select="University/Course">
		            	<xsl:sort select="Age" order="ascending"/>
		            	<xsl:if test="Age &lt; 6000">
		                	<tr>
		                		<td>
		                			<xsl:value-of select="Course_Id"/>
		                		</td>
		                		<td>
		                			<xsl:value-of select="First_name"/>
		                        <td>
		                            <xsl:value-of select="Last_name"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Age"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Sex"/>
		                        </td>
		                        <td>
		                            <xsl:value-of select="Dept_Id"/>
		                        </td>
		                        <td>
						        </td>
					        </td>
					    </tr>
		                </xsl:if>
		            </xsl:for-each>
		        </table>
		    </body>
		</html>
</xsl:template>
        <xsl:template match = "Course"> 
        	<span style = "font-size = 22px;"> <xsl:value-of select = "." />     </span> <br/> 
        </xsl:template>  
</xsl:stylesheet>