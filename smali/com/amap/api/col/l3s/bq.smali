.class public final Lcom/amap/api/col/l3s/bq;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/amap/api/col/l3s/bq;


# instance fields
.field private b:Lcom/amap/api/col/l3s/mc;

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/amap/api/col/l3s/md;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/bq;->d:Z

    :try_start_0
    invoke-static {}, Lcom/amap/api/col/l3s/mc;->a()Lcom/amap/api/col/l3s/mc;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bq;->b:Lcom/amap/api/col/l3s/mc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a()Lcom/amap/api/col/l3s/bq;
    .locals 1

    invoke-static {}, Lcom/amap/api/col/l3s/bq;->c()Lcom/amap/api/col/l3s/bq;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized c()Lcom/amap/api/col/l3s/bq;
    .locals 3

    const-class v0, Lcom/amap/api/col/l3s/bq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/amap/api/col/l3s/bq;

    invoke-direct {v1}, Lcom/amap/api/col/l3s/bq;-><init>()V

    sput-object v1, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;

    iget-object v1, v1, Lcom/amap/api/col/l3s/bq;->b:Lcom/amap/api/col/l3s/mc;

    if-nez v1, :cond_1

    sget-object v1, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;

    invoke-static {}, Lcom/amap/api/col/l3s/mc;->a()Lcom/amap/api/col/l3s/mc;

    move-result-object v2

    iput-object v2, v1, Lcom/amap/api/col/l3s/bq;->b:Lcom/amap/api/col/l3s/mc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v1, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/amap/api/col/l3s/bp;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/col/l3s/bm;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/amap/api/col/l3s/bm;->a()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final a(Lcom/amap/api/col/l3s/bp;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/col/l3s/bm;

    move-object v1, p1

    check-cast v1, Lcom/amap/api/col/l3s/cg;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/amap/api/col/l3s/bm;-><init>(Lcom/amap/api/col/l3s/cg;Landroid/content/Context;B)V

    iget-object p2, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    monitor-enter p2

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    iget-object p2, p0, Lcom/amap/api/col/l3s/bq;->b:Lcom/amap/api/col/l3s/mc;

    iget-object p0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/md;

    invoke-virtual {p2, p0}, Lcom/amap/api/col/l3s/mc;->a(Lcom/amap/api/col/l3s/md;)V

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    monitor-exit v0

    goto :goto_2

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/col/l3s/bm;

    invoke-virtual {v2}, Lcom/amap/api/col/l3s/bm;->a()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_2
    invoke-static {}, Lcom/amap/api/col/l3s/mc;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/col/l3s/bq;->b:Lcom/amap/api/col/l3s/mc;

    sput-object v0, Lcom/amap/api/col/l3s/bq;->a:Lcom/amap/api/col/l3s/bq;

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final b(Lcom/amap/api/col/l3s/bp;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/col/l3s/bm;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/col/l3s/bm;->b()V

    iget-object p0, p0, Lcom/amap/api/col/l3s/bq;->c:Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Lcom/amap/api/col/l3s/bp;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
