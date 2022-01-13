<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <!-- TODO: Auto-generated template -->
        <html>
            <head><style>
                th{
                    color:#ec167f;
                    padding: 10px;
                    border: 1px solid black;
      border-radius: 10px;
                }
                h1, td{
                    color: Purple;
                    padding: 10px;
                    border: 1px solid black;
      border-radius: 10px;
                }
            </style></head>
            <body>
                <xsl:apply-templates />

                <table border="2" align="center">
                    <tr color='yellow' font-style='comic sans ms'>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>SALARY</th>
                        <th>EMAIL</th>
                        <th>MobNum</th>
                        <th>Designation</th>
                        <th>Promotion</th>

                    </tr>
                    <xsl:for-each select="Company/Employee">
                        <!-- <xsl:sort select="Noofevents"></xsl:sort> -->
                        <tr>
                            <td>
                                <xsl:value-of select="Emp-id"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-name"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-age" />
                            </td>
                            <td>
                                <xsl:value-of select="Emp-salary"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-emailid"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-phonenum"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="Emp-designation"></xsl:value-of>
                            </td>
                            <td bgcolor='sky blue'>
                                <xsl:choose>
                                    <xsl:when test="Emp-age &gt; 49" >Associate Project Manager</xsl:when>
                                    <xsl:when test="Emp-age &gt; 39" >Team Leader</xsl:when>
                                    <xsl:otherwise>Developer</xsl:otherwise>
                                </xsl:choose>
                            </td>


                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Company">
        <p>
            <h1 style="text-align:center">Employment Management System</h1>
        </p>
    </xsl:template>
</xsl:stylesheet>