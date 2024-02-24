<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta name="author" content="Alexander Vanchukov" />
            </head>
            <body>
            <h3><a href="https://alexandrvanchukov.github.io/Web_portf/">Back</a></h3>
                <math>
                    <xsl:apply-templates />
                </math>
            </body>
        </html>
    </xsl:template>

     <xsl:template match="строка">
            <mrow>
                <xsl:apply-templates />
            </mrow>
        </xsl:template>

        <xsl:template match="операнд">
            <mi>
                <xsl:apply-templates />
            </mi>
        </xsl:template>

        <xsl:template match="оператор">
            <mo>
                <xsl:apply-templates />
            </mo>
        </xsl:template>

        <xsl:template match="корень">
            <msqrt>
                <xsl:apply-templates />
            </msqrt>
        </xsl:template>

        <xsl:template match="число">
            <mn>
                <xsl:value-of select="." />
            </mn>
        </xsl:template>

        <xsl:template match="дробь">
            <mfrac>
                <xsl:apply-templates />
            </mfrac>
        </xsl:template>

        <xsl:template match="верх">
            <msup>
                <xsl:apply-templates />
            </msup>
        </xsl:template>

        <xsl:template match="низверх">
            <munderover>
                <xsl:apply-templates />
            </munderover>
        </xsl:template>

        <xsl:template match="низ">
            <msub>
                <xsl:apply-templates />
            </msub>
        </xsl:template>

</xsl:stylesheet>