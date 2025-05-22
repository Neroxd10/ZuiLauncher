.class public Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public drawingMode:I

.field public fGlyphMetrics:Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

.field public font:Lcom/autonavi/base/ae/gmap/glyph/Font;

.field public languageArr:Ljava/lang/String;

.field public strBuffer:Ljava/lang/String;

.field public strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->font:Lcom/autonavi/base/ae/gmap/glyph/Font;

    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->drawingMode:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->strokeWidth:F

    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->fGlyphMetrics:Lcom/autonavi/base/ae/gmap/glyph/GlyphMetrics;

    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRequestParam;->languageArr:Ljava/lang/String;

    return-void
.end method
