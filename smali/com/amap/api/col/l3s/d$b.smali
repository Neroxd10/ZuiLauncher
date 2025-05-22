.class final Lcom/amap/api/col/l3s/d$b;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/amap/api/col/l3s/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/col/l3s/d;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    iput-object p2, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    iget-object v0, v0, Lcom/amap/api/col/l3s/d;->h:Lcom/amap/api/col/l3s/i;

    invoke-virtual {v0}, Lcom/amap/api/col/l3s/i;->a()V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v0}, Lcom/amap/api/col/l3s/d;->a(Lcom/amap/api/col/l3s/d;)V

    invoke-static {}, Lcom/amap/api/col/l3s/oj;->j()I

    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v0}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v0}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ov;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/amap/api/col/l3s/d$b;->a:Lcom/amap/api/col/l3s/d;

    invoke-static {v0}, Lcom/amap/api/col/l3s/d;->b(Lcom/amap/api/col/l3s/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/col/l3s/ov;->a(Landroid/content/Context;)V

    :cond_0
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final run()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
