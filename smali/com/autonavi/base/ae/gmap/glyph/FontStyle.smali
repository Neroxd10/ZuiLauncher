.class public Lcom/autonavi/base/ae/gmap/glyph/FontStyle;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SLANT_ITALIC:I = 0x1

.field public static final SLANT_OBLIQUE:I = 0x2

.field public static final SLANT_UPRIGHT:I = 0x0

.field public static final WEIGHT_BLACK:I = 0x384

.field public static final WEIGHT_BOLD:I = 0x2bc

.field public static final WEIGHT_EXTRA_BLACK:I = 0x3e8

.field public static final WEIGHT_EXTRA_BOLD:I = 0x320

.field public static final WEIGHT_EXTRA_LIGHT:I = 0xc8

.field public static final WEIGHT_INVISIBLE:I = 0x0

.field public static final WEIGHT_LIGHT:I = 0x12c

.field public static final WEIGHT_MEDIUM:I = 0x1f4

.field public static final WEIGHT_NORMAL:I = 0x190

.field public static final WEIGHT_SEMI_BOLD:I = 0x258

.field public static final WEIGHT_THIN:I = 0x64

.field public static final WIDTH_CONDENSED:I = 0x3

.field public static final WIDTH_EXPANDED:I = 0x7

.field public static final WIDTH_EXTRA_CONDENSED:I = 0x2

.field public static final WIDTH_EXTRA_EXPANDED:I = 0x8

.field public static final WIDTH_NORMAL:I = 0x5

.field public static final WIDTH_SEMI_CONDENSED:I = 0x4

.field public static final WIDTH_SEMI_EXPANDED:I = 0x6

.field public static final WIDTH_ULTRA_CONDENSED:I = 0x1

.field public static final WIDTH_ULTRA_EXPANDED:I = 0x9


# instance fields
.field private nFontStyleCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x50190

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    add-int/2addr p1, p2

    shl-int/lit8 p2, p3, 0x18

    add-int/lit8 p2, p2, 0x10

    shl-int/2addr p1, p2

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    return-void
.end method


# virtual methods
.method Bold()Lcom/autonavi/base/ae/gmap/glyph/FontStyle;
    .locals 3

    new-instance p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    const/16 v0, 0x2bc

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(III)V

    return-object p0
.end method

.method BoldItalic()Lcom/autonavi/base/ae/gmap/glyph/FontStyle;
    .locals 3

    new-instance p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    const/16 v0, 0x2bc

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(III)V

    return-object p0
.end method

.method Italic()Lcom/autonavi/base/ae/gmap/glyph/FontStyle;
    .locals 3

    new-instance p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    const/16 v0, 0x190

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(III)V

    return-object p0
.end method

.method Normal()Lcom/autonavi/base/ae/gmap/glyph/FontStyle;
    .locals 3

    new-instance p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;

    const/16 v0, 0x190

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;-><init>(III)V

    return-object p0
.end method

.method getCode()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    return p0
.end method

.method public getSlant()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public getWeight()I
    .locals 1

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->nFontStyleCode:I

    shr-int/lit8 p0, p0, 0x10

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method isBold()Z
    .locals 1

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->getWeight()I

    move-result p0

    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isItalic()Z
    .locals 0

    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glyph/FontStyle;->getSlant()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
