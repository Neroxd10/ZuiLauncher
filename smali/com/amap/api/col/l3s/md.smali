.class public abstract Lcom/amap/api/col/l3s/md;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/md$a;
    }
.end annotation


# instance fields
.field e:Lcom/amap/api/col/l3s/md$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancelTask()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/md;->e:Lcom/amap/api/col/l3s/md$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/md;->e:Lcom/amap/api/col/l3s/md$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/md$a;->b(Lcom/amap/api/col/l3s/md;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ThreadTask"

    const-string v1, "cancelTask"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/md;->runTask()V

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/md;->e:Lcom/amap/api/col/l3s/md$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/md;->e:Lcom/amap/api/col/l3s/md$a;

    invoke-interface {v0, p0}, Lcom/amap/api/col/l3s/md$a;->a(Lcom/amap/api/col/l3s/md;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    const-string v0, "ThreadTask"

    const-string v1, "run"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public abstract runTask()V
.end method
