.class Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->resumeMarker(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->val$bitmap:Landroid/graphics/Bitmap;

    const/16 v2, 0x3039

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->addOverlayTexture(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setArrowResId(ZI)V

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0, v2}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setCarResId(I)V

    const-string v0, "cross/crossing_nigth_bk.data"

    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    const v3, 0xd431

    invoke-virtual {v2, v0, v3, v1}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->addOverlayTexture(Landroid/graphics/Bitmap;II)V

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    check-cast p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {p0, v3}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->setBackgroundResId(I)V

    return-void
.end method
