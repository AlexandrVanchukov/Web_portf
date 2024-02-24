<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta name="author" content="Alexander Vanchukov" />
            </head>
            <body>
            <h3><a href="https://alexandrvanchukov.github.io/Web_portf/">Back</a></h3>
            <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
   <xsl:template match="графика">
        <svg>
            <xsl:apply-templates select="@*|node()" />
        </svg>
    </xsl:template>

    <xsl:template match="графика/@ширина">
        <xsl:attribute name="width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="графика/@высота">
        <xsl:attribute name="height">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>    

    <xsl:template match="эллипс">
        <ellipse>
            <xsl:apply-templates select="@*|node()" />
        </ellipse>
    </xsl:template>

    <xsl:template match="эллипс/@заливка">
        <xsl:attribute name="fill">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@ободок">
        <xsl:attribute name="stroke">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@ширина-ободка">
        <xsl:attribute name="stroke-width">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@cx">
        <xsl:attribute name="cx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@cy">
        <xsl:attribute name="cy">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@rx">
        <xsl:attribute name="rx">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template> 

    <xsl:template match="эллипс/@ry">
        <xsl:attribute name="ry">
            <xsl:value-of select="." />
        </xsl:attribute>
    </xsl:template>
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()" />
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>