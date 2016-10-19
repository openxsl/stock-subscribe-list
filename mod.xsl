<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="stock-subscribe-list">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-stock-subscribe-list" ox-mod="stock-subscribe-list">
        <ul>
            <xsl:for-each select="data/stock-subscribe-list/i">
                <li>
                    <xsl:for-each select="./*">
                        <p>
                            <label><xsl:value-of select="name(.)"/></label>
                            <xsl:value-of select="."/>
                        </p>
                            </xsl:for-each>

                </li>
            </xsl:for-each>
        </ul>
    </div>
    </xsl:template>

</xsl:stylesheet>
