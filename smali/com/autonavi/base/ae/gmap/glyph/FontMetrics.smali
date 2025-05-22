.class public Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public bSuccess:Z

.field public fAscent:F

.field public fDescent:F

.field public fHeight:F

.field public fLeading:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->bSuccess:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fAscent:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fDescent:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fLeading:F

    iput v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fHeight:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->bSuccess:Z

    iput p1, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fAscent:F

    iput p2, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fDescent:F

    iput p3, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fLeading:F

    iput p4, p0, Lcom/autonavi/base/ae/gmap/glyph/FontMetrics;->fHeight:F

    return-void
.end method
