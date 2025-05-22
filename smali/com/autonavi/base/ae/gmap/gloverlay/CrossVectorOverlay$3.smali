.class Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iput-boolean p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$3;->val$visible:Z

    invoke-virtual {v0, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->setVisible(Z)V

    :cond_0
    return-void
.end method
