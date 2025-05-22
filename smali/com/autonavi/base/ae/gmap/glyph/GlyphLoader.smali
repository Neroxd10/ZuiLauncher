.class public Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createGlyphLoader()J
    .locals 2

    invoke-static {}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->nativeCreateGlyphLoader()J

    move-result-wide v0

    return-wide v0
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeUnicode(S)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static destroyGlyphLoader(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->nativeDestroyGlyphLoader(J)V

    return-void
.end method

.method private static genFontMetricsParam([B)Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;
    .locals 5

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3a83126f    # 0.001f

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->fFontSize:F

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    iput v2, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->nFontStyleCode:I

    const/16 v2, 0x8

    invoke-static {p0, v2}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    invoke-static {p0, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    new-instance v3, Ljava/lang/String;

    const/16 v4, 0x10

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v3, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->strName:Ljava/lang/String;

    add-int/lit8 v3, v2, 0x10

    :cond_0
    invoke-static {p0, v3}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    add-int/2addr v3, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0, v3, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->languageArr:Ljava/lang/String;

    return-object v0
.end method

.method private static genGlyphRequestParam([B)Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;
    .locals 7

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;-><init>()V

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    add-int/2addr v1, v3

    new-instance v2, Lcom/autonavi/base/ae/gmap/glyph/Font;

    invoke-direct {v2}, Lcom/autonavi/base/ae/gmap/glyph/Font;-><init>()V

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    iput v4, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontStyleCode:I

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    iput v4, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontSize:I

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    add-int/2addr v1, v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, v1, v4}, Ljava/lang/String;-><init>([BII)V

    iput-object v5, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->strName:Ljava/lang/String;

    add-int/2addr v1, v4

    new-instance v4, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;

    invoke-direct {v4}, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;-><init>()V

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    add-int/2addr v1, v3

    int-to-float v5, v5

    const v6, 0x3a83126f    # 0.001f

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fAscent:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    add-int/2addr v1, v3

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fDescent:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    add-int/2addr v1, v3

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fLeading:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v5

    add-int/2addr v1, v3

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fHeight:F

    iput-object v4, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->fontMetrics:Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    iput v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->drawingMode:I

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    add-int/2addr v1, v3

    int-to-float v2, v2

    mul-float/2addr v2, v6

    iput v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strokeWidth:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    add-int/2addr v1, v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p0, v1, v2}, Ljava/lang/String;-><init>([BII)V

    iput-object v4, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->languageArr:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v2

    add-int/2addr v1, v3

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    new-instance v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

    invoke-direct {v2}, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;-><init>()V

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    iput v4, v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->nWidth:I

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    iput v4, v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->nHeight:I

    add-int/2addr v1, v3

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    add-int/2addr v1, v3

    int-to-float v4, v4

    mul-float/2addr v4, v6

    iput v4, v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fLeft:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result v4

    add-int/2addr v1, v3

    int-to-float v3, v4

    mul-float/2addr v3, v6

    iput v3, v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fTop:F

    invoke-static {p0, v1}, Lcom/autonavi/base/amap/mapcore/tools/GLConvertUtil;->getInt([BI)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v6

    iput p0, v2, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fAdvance:F

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->fGlyphMetrics:Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

    :cond_0
    return-object v0
.end method

.method private static getFontMetrics([B)Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;
    .locals 4

    invoke-static {p0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->genFontMetricsParam([B)Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;

    move-result-object p0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    iget v1, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->nFontStyleCode:I

    invoke-direct {v0, v1}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(I)V

    iget v1, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->fFontSize:F

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetricsRequestParam;->languageArr:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, p0, v2, v3}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->newTextPaint(Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->bSuccess:Z

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fAscent:F

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fDescent:F

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fLeading:F

    iget v1, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v1, p0

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fHeight:F

    return-object v0
.end method

.method private static getGlyphMetrics([B)Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;
    .locals 6

    invoke-static {p0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->genGlyphRequestParam([B)Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;

    move-result-object p0

    new-instance v1, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    iget v0, v0, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontStyleCode:I

    invoke-direct {v1, v0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(I)V

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->drawingMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    iget v2, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->languageArr:Ljava/lang/String;

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strokeWidth:F

    invoke-static/range {v0 .. v5}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->loadGlyphMetrics(Ljava/lang/String;Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

    move-result-object p0

    return-object p0
.end method

.method private static getGlyphRaster([B)Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;
    .locals 6

    invoke-static {p0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->genGlyphRequestParam([B)Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;

    move-result-object p0

    new-instance v1, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    iget v0, v0, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontStyleCode:I

    invoke-direct {v1, v0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(I)V

    iget v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->drawingMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    iget v2, v2, Lcom/autonavi/base/ae/gmap/glyph/Font;->nFontSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->languageArr:Ljava/lang/String;

    iget v5, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strokeWidth:F

    invoke-static/range {v0 .. v5}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->loadGlyphRaster(Ljava/lang/String;Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;

    move-result-object p0

    return-object p0
.end method

.method private static loadGlyphMetrics(Ljava/lang/String;Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;
    .locals 5

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->newTextPaint(Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p0, v1, p3, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-nez p3, :cond_2

    const-string p3, " "

    invoke-virtual {p1, p3, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p3

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    iput v1, p2, Landroid/graphics/Rect;->top:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    float-to-int p3, v3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-eqz p4, :cond_3

    const/4 p3, 0x0

    cmpl-float p3, p5, p3

    if-lez p3, :cond_3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p5, p3

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    sub-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    add-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    iput-boolean v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->bSuccess:Z

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iput p3, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fLeft:F

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p3

    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    iget p4, p2, Landroid/graphics/Rect;->top:I

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p3, p4

    iput p3, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fTop:F

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    iput p3, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->nWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->nHeight:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    iput p0, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->fAdvance:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;->bSuccess:Z

    :goto_0
    return-object v0
.end method

.method private static loadGlyphRaster(Ljava/lang/String;Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;
    .locals 5

    new-instance v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;

    invoke-direct {v0}, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/base/ae/gmap/glyph/GlyphLoader;->newTextPaint(Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    move-result-object p1

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p1, p0, v1, p3, p2}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    const/4 v2, 0x1

    if-nez p3, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p3

    if-nez p3, :cond_2

    const-string p3, " "

    invoke-virtual {p1, p3, v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;II)F

    move-result p3

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float/2addr v3, v4

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    float-to-int p3, v3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    iput v1, p2, Landroid/graphics/Rect;->left:I

    iput v1, p2, Landroid/graphics/Rect;->top:I

    :cond_2
    if-eqz p4, :cond_3

    const/4 p3, 0x0

    cmpl-float p3, p5, p3

    if-lez p3, :cond_3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p5, p3

    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    sub-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->top:I

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->left:I

    iget p3, p2, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    add-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->right:I

    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p3, p3

    add-float/2addr p3, p5

    float-to-int p3, p3

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    sget-object p5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p3

    new-instance p4, Landroid/graphics/Canvas;

    invoke-direct {p4, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget p5, p2, Landroid/graphics/Rect;->left:I

    rsub-int/lit8 p5, p5, 0x0

    int-to-float p5, p5

    iget v3, p2, Landroid/graphics/Rect;->top:I

    rsub-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    invoke-virtual {p4, p0, p5, v3, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p1

    mul-int/2addr p0, p1

    new-array p1, p0, [B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p4

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p5

    iput p5, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapWidth:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iput p2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapHeight:I

    iput v1, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapPixelMode:I

    iput p0, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapSize:I

    invoke-virtual {p3, p4}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    iput-object p1, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapBuffer:[B

    iput-boolean v2, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-boolean v1, v0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bSuccess:Z

    :cond_4
    :goto_0
    return-object v0
.end method

.method private static native nativeCreateGlyphLoader()J
.end method

.method private static native nativeDestroyGlyphLoader(J)V
.end method

.method private static newTextPaint(Lcom/autonavi/base/ae/gmap/glyph/FontStyle;FLjava/lang/String;ZF)Landroid/text/TextPaint;
    .locals 2

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    if-eqz p3, :cond_1

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    goto :goto_0

    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->getSlant()I

    move-result p1

    const/4 p3, 0x2

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, p3, :cond_2

    goto :goto_1

    :cond_2
    move p1, v1

    goto :goto_2

    :cond_3
    :goto_1
    move p1, p4

    :goto_2
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->getWeight()I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    move p0, v1

    goto :goto_4

    :goto_3
    :sswitch_1
    move p0, p4

    :goto_4
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    goto :goto_5

    :cond_4
    if-eqz p0, :cond_5

    goto :goto_5

    :cond_5
    if-eqz p1, :cond_6

    move v1, p3

    goto :goto_5

    :cond_6
    move v1, p4

    :goto_5
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p0

    goto :goto_6

    :cond_7
    invoke-static {p2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p0

    :goto_6
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_0
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
