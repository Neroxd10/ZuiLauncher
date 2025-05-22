.class final Lcom/amap/api/col/l3s/q$a$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/q$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field final synthetic b:Lcom/amap/api/col/l3s/q$a;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/q$a;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/q$a$1;->b:Lcom/amap/api/col/l3s/q$a;

    iput-object p2, p0, Lcom/amap/api/col/l3s/q$a$1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a$1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a$1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setProFunctionAuthEnable(Z)V

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isUseProFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/q$a$1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setMapCustomEnable(ZZ)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a$1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->reloadMapCustomStyle()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/q$a$1;->b:Lcom/amap/api/col/l3s/q$a;

    invoke-static {v0}, Lcom/amap/api/col/l3s/q$a;->a(Lcom/amap/api/col/l3s/q$a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/q$a$1;->b:Lcom/amap/api/col/l3s/q$a;

    invoke-static {p0}, Lcom/amap/api/col/l3s/q$a;->a(Lcom/amap/api/col/l3s/q$a;)Ljava/lang/ref/WeakReference;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :goto_0
    const-string v0, "\u9274\u6743\u5931\u8d25\uff0c\u5f53\u524dkey\u6ca1\u6709\u81ea\u5b9a\u4e49\u7eb9\u7406\u7684\u4f7f\u7528\u6743\u9650\uff0c\u81ea\u5b9a\u4e49\u7eb9\u7406\u76f8\u5173\u5185\u5bb9\uff0c\u5c06\u4e0d\u4f1a\u5448\u73b0\uff01"

    invoke-static {p0, v0}, Lcom/amap/api/col/l3s/dz;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
