.class Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->addVectorItem(Lcom/autonavi/ae/gmap/gloverlay/AVectorCrossAttr;[BI)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

.field final synthetic val$crossAttrArray:[I

.field final synthetic val$link:[B


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;[I[B)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->val$crossAttrArray:[I

    iput-object p3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->val$link:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    iget-wide v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->mNativeInstance:J

    iget-object v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->val$crossAttrArray:[I

    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector$2;->val$link:[B

    invoke-static {v0, v1, v2, p0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;->access$000(J[I[B)I

    return-void
.end method
