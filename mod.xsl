<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/root" name="stock-subscribe-list">
    <!-- className 'J_OXMod' required  -->
    <div class="J_OXMod oxmod-stock-subscribe-list" ox-mod="stock-subscribe-list">
        <ul>
            <xsl:for-each select="data/stock-subscribe-list/i">
                <li>

                        <p>
                            <label>Email</label>
                            <xsl:value-of select="email"/>
                        </p>
                        <p>
                            <label>Symbol</label>
                            <xsl:value-of select="symbol"/>
                        </p>
                        <p>
                            <label>Now</label>
                            <xsl:value-of select="now"/>
                        </p>
                        <p>
                            <label>Cost</label>
                            <xsl:value-of select="cost"/>
                        </p>
                        <p>
                            <label>Percent</label>
                            <font>
                                <xsl:attribute name="color">
                                    <xsl:choose>
                                        <xsl:when test="percent &gt; 0">red</xsl:when>
                                        <xsl:otherwise>green</xsl:otherwise>
                                    </xsl:choose>
                                </xsl:attribute>
                            <xsl:value-of select="percent"/>
                            </font>
                        </p>
                        <p>
                            <label>Time</label>
                            <xsl:value-of select="updateTime"/>
                        </p>
                        <p>
                            <label>Range</label>
                            <xsl:value-of select="lte"/>
                            &lt; = &gt;
                            <xsl:value-of select="gte"/>
                        </p>


                </li>
            </xsl:for-each>
        </ul>
    </div>
    </xsl:template>

</xsl:stylesheet>
