.class Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->initDefaultTextureIds(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

.field final synthetic val$circleId:Ljava/lang/Integer;

.field final synthetic val$lineTextureId:Ljava/lang/Integer;

.field final synthetic val$overlayName:Ljava/lang/String;

.field final synthetic val$squareId:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$overlayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$squareId:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$circleId:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$lineTextureId:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$overlayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$squareId:Ljava/lang/Integer;

    iget-object v3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$circleId:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$6;->val$lineTextureId:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->initDefaultTextureIds(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
