.class final Lcom/amap/api/col/l3s/kt$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/kt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/kt;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/kt;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->a(Lcom/amap/api/col/l3s/kt;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->b(Lcom/amap/api/col/l3s/kt;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->c(Lcom/amap/api/col/l3s/kt;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {v1}, Lcom/amap/api/col/l3s/kt;->d(Lcom/amap/api/col/l3s/kt;)V

    iget-object p0, p0, Lcom/amap/api/col/l3s/kt$2;->a:Lcom/amap/api/col/l3s/kt;

    invoke-static {p0}, Lcom/amap/api/col/l3s/kt;->e(Lcom/amap/api/col/l3s/kt;)I

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/amap/api/col/l3s/kt$2;->a()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
