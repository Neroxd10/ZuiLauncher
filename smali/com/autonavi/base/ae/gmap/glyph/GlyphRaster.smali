.class public Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final PIXEL_MODE_A8:I = 0x0

.field public static final PIXEL_MODE_ARGB:I = 0x1

.field public static final PIXEL_MODE_RGB:I = 0x4

.field public static final PIXEL_MODE_RGBA:I = 0x2


# instance fields
.field public bSuccess:Z

.field public bitmapBuffer:[B

.field public bitmapHeight:I

.field public bitmapPixelMode:I

.field public bitmapSize:I

.field public bitmapWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bSuccess:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapBuffer:[B

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapSize:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapWidth:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapHeight:I

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/GlyphRaster;->bitmapPixelMode:I

    return-void
.end method
