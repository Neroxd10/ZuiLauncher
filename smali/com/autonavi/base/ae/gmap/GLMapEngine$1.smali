.class Lcom/autonavi/base/ae/gmap/GLMapEngine$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/GLMapEngine;->requireMapDataAsyn(I[B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

.field final synthetic val$mapLoader:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/GLMapEngine;Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$1;->this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iput-object p2, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$1;->val$mapLoader:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$1;->this$0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-boolean v0, v0, Lcom/autonavi/base/ae/gmap/GLMapEngine;->mRequestDestroy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$1;->val$mapLoader:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/autonavi/base/ae/gmap/GLMapEngine$1;->val$mapLoader:Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;

    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/maploader/AMapLoader;->doRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "download Thread"

    const-string v1, "AMapLoader doRequest"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/amap/api/col/l3s/ex;->a(Ljava/lang/Throwable;)V

    return-void
.end method
