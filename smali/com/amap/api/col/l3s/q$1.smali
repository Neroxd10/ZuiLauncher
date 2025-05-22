.class final Lcom/amap/api/col/l3s/q$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/q;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/q;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    invoke-static {}, Lcom/amap/api/col/l3s/q;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    invoke-static {p1}, Lcom/amap/api/col/l3s/q;->a(Lcom/amap/api/col/l3s/q;)Lcom/amap/api/col/l3s/q$a;

    move-result-object p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    new-instance v0, Lcom/amap/api/col/l3s/q$a;

    invoke-static {p1}, Lcom/amap/api/col/l3s/q;->b(Lcom/amap/api/col/l3s/q;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    invoke-static {v2}, Lcom/amap/api/col/l3s/q;->c(Lcom/amap/api/col/l3s/q;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    invoke-static {v2}, Lcom/amap/api/col/l3s/q;->c(Lcom/amap/api/col/l3s/q;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/q$a;-><init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/q;->a(Lcom/amap/api/col/l3s/q;Lcom/amap/api/col/l3s/q$a;)Lcom/amap/api/col/l3s/q$a;

    :cond_2
    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object p1

    iget-object p0, p0, Lcom/amap/api/col/l3s/q$1;->a:Lcom/amap/api/col/l3s/q;

    invoke-static {p0}, Lcom/amap/api/col/l3s/q;->a(Lcom/amap/api/col/l3s/q;)Lcom/amap/api/col/l3s/q$a;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V

    return-void
.end method
