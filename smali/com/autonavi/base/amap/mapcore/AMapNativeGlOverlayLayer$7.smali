.class Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->initDefaultBitmapSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

.field final synthetic val$circleSymbol:Ljava/lang/String;

.field final synthetic val$lineSymbol:Ljava/lang/String;

.field final synthetic val$lineThinSymbol:Ljava/lang/String;

.field final synthetic val$squareSymbol:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iput-object p2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$squareSymbol:Ljava/lang/String;

    iput-object p3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$circleSymbol:Ljava/lang/String;

    iput-object p4, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$lineSymbol:Ljava/lang/String;

    iput-object p5, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$lineThinSymbol:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->this$0:Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;

    iget-object v1, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$squareSymbol:Ljava/lang/String;

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$circleSymbol:Ljava/lang/String;

    iget-object v3, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$lineSymbol:Ljava/lang/String;

    iget-object p0, p0, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer$7;->val$lineThinSymbol:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/autonavi/base/amap/mapcore/AMapNativeGlOverlayLayer;->initDefaultBitmapSymbols(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
