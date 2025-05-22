.class Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setConfig(Lcom/autonavi/base/amap/mapcore/MapConfig;Ljava/lang/Float;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

.field final synthetic val$mapConfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

.field final synthetic val$zoom:Ljava/lang/Float;


# direct methods
.method constructor <init>(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;Lcom/autonavi/base/amap/mapcore/MapConfig;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->val$mapConfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->val$zoom:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->val$mapConfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$4;->val$zoom:Ljava/lang/Float;

    invoke-virtual {v0, v1, p0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->setConfig(Lcom/autonavi/base/amap/mapcore/MapConfig;Ljava/lang/Float;)V

    return-void
.end method
