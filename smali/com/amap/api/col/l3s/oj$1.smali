.class final Lcom/amap/api/col/l3s/oj$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/oj;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/oj;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/oj$1;->a:Lcom/amap/api/col/l3s/oj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/oj$1;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {v0}, Lcom/amap/api/col/l3s/oj;->a(Lcom/amap/api/col/l3s/oj;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/oj$1;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {v1}, Lcom/amap/api/col/l3s/oj;->b(Lcom/amap/api/col/l3s/oj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/amap/api/col/l3s/oj$1;->a:Lcom/amap/api/col/l3s/oj;

    invoke-static {p0}, Lcom/amap/api/col/l3s/oj;->c(Lcom/amap/api/col/l3s/oj;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
