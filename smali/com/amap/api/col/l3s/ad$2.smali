.class final Lcom/amap/api/col/l3s/ad$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3s/ad;


# direct methods
.method constructor <init>(Lcom/amap/api/col/l3s/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/ad$2;->a:Lcom/amap/api/col/l3s/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/amap/api/col/l3s/ad$2;->a:Lcom/amap/api/col/l3s/ad;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ad;->a(Lcom/amap/api/col/l3s/ad;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/amap/api/col/l3s/ad$2;->a:Lcom/amap/api/col/l3s/ad;

    invoke-static {p0}, Lcom/amap/api/col/l3s/ad;->b(Lcom/amap/api/col/l3s/ad;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
