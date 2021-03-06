<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:s="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:n="http://www.google.com/schemas/sitemap-news/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html xmlns="http://www.w3.org/1999/xhtml">
            <head>
                <title>XML Sitemap</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style type="text/css">
                    body {
                    font-family: Helvetica, Arial, sans-serif;
                    font-size: 13px;
                    color: #545353;
                    margin: 0 auto;
                    width: 80%;
                    min-width: 60em;
                    }
                    table {
                    border: none;
                    border-collapse: collapse;
                    }
                    tr:nth-child(odd) {
                    background-color: #eee;
                    }
                    tbody tr:hover {
                    background-color: #ccc;
                    }
                    tbody tr:hover td,
                    tbody tr:hover td a {
                    color: #000;
                    }
                    p {
                    margin: 10px 3px;
                    line-height: 1.3em;
                    }
                    a {
                    color: #da3114;
                    text-decoration: none;
                    }
                    a:visited {
                    color: #777;
                    }
                    a:hover {
                    text-decoration: underline;
                    }
                    td {
                    font-size:11px;
                    }
                    th {
                    text-align:left;
                    padding-right:30px;
                    font-size:11px;
                    }
                    thead th {
                    border-bottom: 1px solid #000;
                    }
                </style>
            </head>
            <body>
                <div id="content">
                    <h1>XML Sitemap</h1>
                    <p>
                        Generated by the <a href="http://bolt.cm/">Bolt</a> sitemap extension, this is an XML Sitemap, meant for consumption by Google.
                    </p>
                    <p>
                        You can find more information about XML News sitemaps <a href="http://www.google.com/support/webmasters/bin/answer.py?hl=en&amp;answer=74288">here</a>.
                    </p>
                    <p>
                        This sitemap contains <xsl:value-of select="count(s:urlset/s:url)"/> URLs.
                    </p>
                    <table id="sitemap" cellpadding="3">
                        <thead>
                            <tr>
                                <th width="50%">Title</th>
                                <th width="15%">Publication Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <xsl:for-each select="s:urlset/s:url">
                                <tr>
                                    <td>
                                        <xsl:variable name="itemURL">
                                            <xsl:value-of select="s:loc"/>
                                        </xsl:variable>
                                        <a href="{$itemURL}">
                                            <xsl:value-of select="s:loc"/>
                                        </a>
                                    </td>
                                    <td>
                                        <xsl:value-of select="concat(substring(s:lastmod,0,11),concat(' ', substring(s:lastmod,12,5)))"/>
                                    </td>
                                </tr>
                            </xsl:for-each>
                        </tbody>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
