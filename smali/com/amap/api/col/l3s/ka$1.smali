.class final Lcom/amap/api/col/l3s/ka$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/col/l3s/ka;->a(Lcom/amap/api/col/l3s/je;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/je;

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/col/l3s/ka;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ka;Lcom/amap/api/col/l3s/je;Z)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ka$1;->c:Lcom/amap/api/col/l3s/ka;

    iput-object p2, p0, Lcom/amap/api/col/l3s/ka$1;->a:Lcom/amap/api/col/l3s/je;

    iput-boolean p3, p0, Lcom/amap/api/col/l3s/ka$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/ka$1;->a:Lcom/amap/api/col/l3s/je;

    invoke-static {v1}, Lcom/amap/api/col/l3s/jy;->a(Lcom/amap/api/col/l3s/je;)V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/ka$1;->b:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/ka$1;->c:Lcom/amap/api/col/l3s/ka;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ka;->a(Lcom/amap/api/col/l3s/ka;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/col/l3s/kb;->a(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
