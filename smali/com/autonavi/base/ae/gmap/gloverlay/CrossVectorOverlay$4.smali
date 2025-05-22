.class Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setData([B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

.field final synthetic val$data:[B


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;[B)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->val$data:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$100(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v1, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->attr:Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->val$data:[B

    array-length v3, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;[BI)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {p0, v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$200(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$300(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;-><init>()V

    iput v0, v1, Lcom/amap/api/maps/model/CrossOverlay$UpdateItem;->dataUpdateFlag:I

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$4;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {p0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$300(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Lcom/amap/api/maps/model/CrossOverlay$OnCrossVectorUpdateListener;->onUpdate(ILcom/amap/api/maps/model/CrossOverlay$UpdateItem;)V

    :cond_1
    return-void
.end method
