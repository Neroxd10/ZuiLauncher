.class public Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle$GLAmapFocusHits;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GLAmapFocusHits"
.end annotation


# instance fields
.field public mHitedIndex:J

.field public mHitedTimes:J

.field public mOverlayHashCode:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle$GLAmapFocusHits;->mOverlayHashCode:J

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle$GLAmapFocusHits;->mHitedIndex:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlayBundle$GLAmapFocusHits;->mHitedTimes:J

    return-void
.end method
