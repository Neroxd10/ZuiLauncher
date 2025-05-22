.class Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->initTextureCallback(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

.field final synthetic val$crossVectorOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

.field final synthetic val$isImageMode:Z


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;Z)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->val$crossVectorOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iput-boolean p3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->val$isImageMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-wide v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->val$crossVectorOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-boolean p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$3;->val$isImageMode:Z

    invoke-static {v0, v1, v2, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->access$100(JLjava/lang/Object;Z)V

    return-void
.end method
