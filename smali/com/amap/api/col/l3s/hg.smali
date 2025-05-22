.class final Lcom/amap/api/col/l3s/hg;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 5

    const-class v0, Lcom/amap/api/col/l3s/hg;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/amap/api/col/l3s/hg;->a:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    const-string v2, "regeo"

    new-instance v3, Lcom/amap/api/col/l3s/hj;

    const-string v4, "/geocode/regeo"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/hj;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/hi;)V

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    const-string v2, "placeAround"

    new-instance v3, Lcom/amap/api/col/l3s/hj;

    const-string v4, "/place/around"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/hj;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/hi;)V

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    const-string v2, "placeText"

    new-instance v3, Lcom/amap/api/col/l3s/hi;

    const-string v4, "/place/text"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/hi;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/hi;)V

    invoke-static {}, Lcom/amap/api/col/l3s/hh;->a()Lcom/amap/api/col/l3s/hh;

    move-result-object v1

    const-string v2, "geo"

    new-instance v3, Lcom/amap/api/col/l3s/hi;

    const-string v4, "/geocode/geo"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amap/api/col/l3s/hi;-><init>([Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/col/l3s/hh;->a(Ljava/lang/String;Lcom/amap/api/col/l3s/hi;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/amap/api/col/l3s/hg;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
