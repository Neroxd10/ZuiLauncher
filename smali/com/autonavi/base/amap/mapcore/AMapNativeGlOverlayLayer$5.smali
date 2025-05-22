.class Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->updateOptions(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

.field final synthetic val$option:Lcom/amap/api/maps/model/BaseOptions;

.field final synthetic val$overlayName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->val$overlayName:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->val$option:Lcom/amap/api/maps/model/BaseOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->val$overlayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->val$option:Lcom/amap/api/maps/model/BaseOptions;

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->updateOptions(Ljava/lang/String;Lcom/amap/api/maps/model/BaseOptions;)V

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$5;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->access$000(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;Z)V

    return-void
.end method
