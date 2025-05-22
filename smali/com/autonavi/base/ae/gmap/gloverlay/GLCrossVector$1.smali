.class Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;-><init>(ILcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

.field final synthetic val$engine:I

.field final synthetic val$glMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;I)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->val$glMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iput p3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->val$engine:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->val$glMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$1;->val$engine:I

    sget-object v2, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;->AMAPOVERLAY_VECTOR:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay$EAMapOverlayTpye;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-virtual {v1, p0, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->createOverlay(II)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    return-void
.end method
