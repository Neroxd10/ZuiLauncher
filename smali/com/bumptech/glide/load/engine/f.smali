.class Lcom/bumptech/glide/load/engine/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;
.implements Ljava/lang/Runnable;
.implements Ljava/lang/Comparable;
.implements Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/f$h;,
        Lcom/bumptech/glide/load/engine/f$g;,
        Lcom/bumptech/glide/load/engine/f$e;,
        Lcom/bumptech/glide/load/engine/f$b;,
        Lcom/bumptech/glide/load/engine/f$d;,
        Lcom/bumptech/glide/load/engine/f$f;,
        Lcom/bumptech/glide/load/engine/f$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;",
        "Ljava/lang/Runnable;",
        "Ljava/lang/Comparable<",
        "Lcom/bumptech/glide/load/engine/f<",
        "*>;>;",
        "Lcom/bumptech/glide/util/pool/FactoryPools$Poolable;"
    }
.end annotation


# instance fields
.field private A:Lcom/bumptech/glide/load/DataSource;

.field private B:Lcom/bumptech/glide/load/data/DataFetcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

.field private volatile D:Z

.field private volatile E:Z

.field private final a:Lcom/bumptech/glide/load/engine/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/e<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/util/pool/StateVerifier;

.field private final d:Lcom/bumptech/glide/load/engine/f$e;

.field private final e:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/engine/f$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f$d<",
            "*>;"
        }
    .end annotation
.end field

.field private final g:Lcom/bumptech/glide/load/engine/f$f;

.field private h:Lcom/bumptech/glide/GlideContext;

.field private i:Lcom/bumptech/glide/load/Key;

.field private j:Lcom/bumptech/glide/Priority;

.field private k:Lcom/bumptech/glide/load/engine/i;

.field private l:I

.field private m:I

.field private n:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private o:Lcom/bumptech/glide/load/Options;

.field private p:Lcom/bumptech/glide/load/engine/f$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/f$b<",
            "TR;>;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Lcom/bumptech/glide/load/engine/f$h;

.field private s:Lcom/bumptech/glide/load/engine/f$g;

.field private t:J

.field private u:Z

.field private v:Ljava/lang/Object;

.field private w:Ljava/lang/Thread;

.field private x:Lcom/bumptech/glide/load/Key;

.field private y:Lcom/bumptech/glide/load/Key;

.field private z:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/f$e;Landroidx/core/util/Pools$Pool;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f$e;",
            "Landroidx/core/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-static {}, Lcom/bumptech/glide/util/pool/StateVerifier;->newInstance()Lcom/bumptech/glide/util/pool/StateVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->c:Lcom/bumptech/glide/util/pool/StateVerifier;

    new-instance v0, Lcom/bumptech/glide/load/engine/f$d;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/f$d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    new-instance v0, Lcom/bumptech/glide/load/engine/f$f;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/f$f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->g:Lcom/bumptech/glide/load/engine/f$f;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->d:Lcom/bumptech/glide/load/engine/f$e;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/f;->e:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method private c(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-object p0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    invoke-direct {p0, p2, p3}, Lcom/bumptech/glide/load/engine/f;->d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p2

    const-string p3, "DecodeJob"

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoded result "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0, v1}, Lcom/bumptech/glide/load/engine/f;->k(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    throw p0
.end method

.method private d(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/e;->h(Ljava/lang/Class;)Lcom/bumptech/glide/load/engine/LoadPath;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/engine/f;->w(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0

    return-object p0
.end method

.method private e()V
    .locals 4

    const-string v0, "DecodeJob"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/bumptech/glide/load/engine/f;->t:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->z:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", cache key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", fetcher: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->B:Lcom/bumptech/glide/load/data/DataFetcher;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Retrieved data"

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/bumptech/glide/load/engine/f;->l(Ljava/lang/String;JLjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->B:Lcom/bumptech/glide/load/data/DataFetcher;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->z:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->A:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v1, v2, v3}, Lcom/bumptech/glide/load/engine/f;->c(Lcom/bumptech/glide/load/data/DataFetcher;Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v0
    :try_end_0
    .catch Lcom/bumptech/glide/load/engine/GlideException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->y:Lcom/bumptech/glide/load/Key;

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->A:Lcom/bumptech/glide/load/DataSource;

    invoke-virtual {v1, v2, v3}, Lcom/bumptech/glide/load/engine/GlideException;->f(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;)V

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->A:Lcom/bumptech/glide/load/DataSource;

    invoke-direct {p0, v0, v1}, Lcom/bumptech/glide/load/engine/f;->n(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->v()V

    :goto_1
    return-void
.end method

.method private f()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/f$a;->b:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized stage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/bumptech/glide/load/engine/q;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/q;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :cond_2
    new-instance v0, Lcom/bumptech/glide/load/engine/b;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/b;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0

    :cond_3
    new-instance v0, Lcom/bumptech/glide/load/engine/n;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-direct {v0, v1, p0}, Lcom/bumptech/glide/load/engine/n;-><init>(Lcom/bumptech/glide/load/engine/e;Lcom/bumptech/glide/load/engine/DataFetcherGenerator$FetcherReadyCallback;)V

    return-object v0
.end method

.method private g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;
    .locals 2

    sget-object v0, Lcom/bumptech/glide/load/engine/f$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->n:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedResource()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/engine/f$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/bumptech/glide/load/engine/f$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/f;->g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized stage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/engine/f$h;->FINISHED:Lcom/bumptech/glide/load/engine/f$h;

    return-object p0

    :cond_3
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/f;->u:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/bumptech/glide/load/engine/f$h;->FINISHED:Lcom/bumptech/glide/load/engine/f$h;

    goto :goto_1

    :cond_4
    sget-object p0, Lcom/bumptech/glide/load/engine/f$h;->SOURCE:Lcom/bumptech/glide/load/engine/f$h;

    :goto_1
    return-object p0

    :cond_5
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->n:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->decodeCachedData()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Lcom/bumptech/glide/load/engine/f$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    goto :goto_2

    :cond_6
    sget-object p1, Lcom/bumptech/glide/load/engine/f$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/engine/f;->g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private h(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/Options;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_0

    return-object v0

    :cond_0
    sget-object v1, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/e;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/Options;->get(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    return-object v0

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/Options;

    invoke-direct {v0}, Lcom/bumptech/glide/load/Options;-><init>()V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/Options;->putAll(Lcom/bumptech/glide/load/Options;)V

    sget-object p0, Lcom/bumptech/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/bumptech/glide/load/Option;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bumptech/glide/load/Options;->set(Lcom/bumptech/glide/load/Option;Ljava/lang/Object;)Lcom/bumptech/glide/load/Options;

    return-object v0
.end method

.method private i()I
    .locals 0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->j:Lcom/bumptech/glide/Priority;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    return p0
.end method

.method private k(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/load/engine/f;->l(Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method private l(Ljava/lang/String;JLjava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", load key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->k:Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", thread: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DecodeJob"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private m(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->y()V

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/engine/f$b;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method private n(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    instance-of v0, p1, Lcom/bumptech/glide/load/engine/Initializable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/engine/Initializable;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Initializable;->initialize()V

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/engine/f$d;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/bumptech/glide/load/engine/m;->b(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/m;

    move-result-object p1

    move-object v0, p1

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/engine/f;->m(Lcom/bumptech/glide/load/engine/Resource;Lcom/bumptech/glide/load/DataSource;)V

    sget-object p1, Lcom/bumptech/glide/load/engine/f$h;->ENCODE:Lcom/bumptech/glide/load/engine/f$h;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    :try_start_0
    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/f$d;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->d:Lcom/bumptech/glide/load/engine/f$e;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    invoke-virtual {p1, p2, v1}, Lcom/bumptech/glide/load/engine/f$d;->b(Lcom/bumptech/glide/load/engine/f$e;Lcom/bumptech/glide/load/Options;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->d()V

    :cond_3
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->q()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/m;->d()V

    :cond_4
    throw p0
.end method

.method private p()V
    .locals 3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->y()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, "Failed to load resource"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/engine/f$b;->onLoadFailed(Lcom/bumptech/glide/load/engine/GlideException;)V

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->r()V

    return-void
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->g:Lcom/bumptech/glide/load/engine/f$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f$f;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->u()V

    :cond_0
    return-void
.end method

.method private r()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->g:Lcom/bumptech/glide/load/engine/f$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f$f;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->u()V

    :cond_0
    return-void
.end method

.method private u()V
    .locals 4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->g:Lcom/bumptech/glide/load/engine/f$f;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f$f;->e()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/f$d;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/e;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/f;->D:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->h:Lcom/bumptech/glide/GlideContext;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->i:Lcom/bumptech/glide/load/Key;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->j:Lcom/bumptech/glide/Priority;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->k:Lcom/bumptech/glide/load/engine/i;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->w:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->z:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->A:Lcom/bumptech/glide/load/DataSource;

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->B:Lcom/bumptech/glide/load/data/DataFetcher;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/bumptech/glide/load/engine/f;->t:J

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->v:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->e:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private v()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->w:Ljava/lang/Thread;

    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/load/engine/f;->t:J

    const/4 v0, 0x0

    :cond_0
    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/engine/f;->g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->f()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    sget-object v2, Lcom/bumptech/glide/load/engine/f$h;->SOURCE:Lcom/bumptech/glide/load/engine/f$h;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/bumptech/glide/load/engine/f;->reschedule()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    sget-object v2, Lcom/bumptech/glide/load/engine/f$h;->FINISHED:Lcom/bumptech/glide/load/engine/f$h;

    if-eq v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->p()V

    :cond_3
    return-void
.end method

.method private w(Ljava/lang/Object;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/LoadPath;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "ResourceType:",
            "Ljava/lang/Object;",
            ">(TData;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/LoadPath<",
            "TData;TResourceType;TR;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TR;>;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/engine/f;->h(Lcom/bumptech/glide/load/DataSource;)Lcom/bumptech/glide/load/Options;

    move-result-object v2

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->h:Lcom/bumptech/glide/GlideContext;

    invoke-virtual {v0}, Lcom/bumptech/glide/GlideContext;->getRegistry()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->getRewinder(Ljava/lang/Object;)Lcom/bumptech/glide/load/data/DataRewinder;

    move-result-object p1

    :try_start_0
    iget v3, p0, Lcom/bumptech/glide/load/engine/f;->l:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/f;->m:I

    new-instance v5, Lcom/bumptech/glide/load/engine/f$c;

    invoke-direct {v5, p0, p2}, Lcom/bumptech/glide/load/engine/f$c;-><init>(Lcom/bumptech/glide/load/engine/f;Lcom/bumptech/glide/load/DataSource;)V

    move-object v0, p3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bumptech/glide/load/engine/LoadPath;->load(Lcom/bumptech/glide/load/data/DataRewinder;Lcom/bumptech/glide/load/Options;IILcom/bumptech/glide/load/engine/DecodePath$a;)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Lcom/bumptech/glide/load/data/DataRewinder;->cleanup()V

    throw p0
.end method

.method private x()V
    .locals 3

    sget-object v0, Lcom/bumptech/glide/load/engine/f$a;->a:[I

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->e()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized run reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/bumptech/glide/load/engine/f$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/f;->g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->f()Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    :cond_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->v()V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->c:Lcom/bumptech/glide/util/pool/StateVerifier;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/pool/StateVerifier;->throwIfRecycled()V

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/f;->D:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/f;->D:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already notified"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->C:Lcom/bumptech/glide/load/engine/DataFetcherGenerator;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/bumptech/glide/load/engine/DataFetcherGenerator;->cancel()V

    :cond_0
    return-void
.end method

.method public b(Lcom/bumptech/glide/load/engine/f;)I
    .locals 2
    .param p1    # Lcom/bumptech/glide/load/engine/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/f<",
            "*>;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->i()I

    move-result v0

    invoke-direct {p1}, Lcom/bumptech/glide/load/engine/f;->i()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/bumptech/glide/load/engine/f;->q:I

    iget p1, p1, Lcom/bumptech/glide/load/engine/f;->q:I

    sub-int v0, p0, p1

    :cond_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/engine/f;

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/engine/f;->b(Lcom/bumptech/glide/load/engine/f;)I

    move-result p0

    return p0
.end method

.method public getVerifier()Lcom/bumptech/glide/util/pool/StateVerifier;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->c:Lcom/bumptech/glide/util/pool/StateVerifier;

    return-object p0
.end method

.method j(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/engine/i;Lcom/bumptech/glide/load/Key;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/util/Map;ZZZLcom/bumptech/glide/load/Options;Lcom/bumptech/glide/load/engine/f$b;I)Lcom/bumptech/glide/load/engine/f;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/GlideContext;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/engine/i;",
            "Lcom/bumptech/glide/load/Key;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/Transformation<",
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/Options;",
            "Lcom/bumptech/glide/load/engine/f$b<",
            "TR;>;I)",
            "Lcom/bumptech/glide/load/engine/f<",
            "TR;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    iget-object v15, v0, Lcom/bumptech/glide/load/engine/f;->d:Lcom/bumptech/glide/load/engine/f$e;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p15

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-virtual/range {v1 .. v15}, Lcom/bumptech/glide/load/engine/e;->t(Lcom/bumptech/glide/GlideContext;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/Options;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/f$e;)V

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->h:Lcom/bumptech/glide/GlideContext;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->i:Lcom/bumptech/glide/load/Key;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->j:Lcom/bumptech/glide/Priority;

    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->k:Lcom/bumptech/glide/load/engine/i;

    move/from16 v1, p5

    iput v1, v0, Lcom/bumptech/glide/load/engine/f;->l:I

    move/from16 v1, p6

    iput v1, v0, Lcom/bumptech/glide/load/engine/f;->m:I

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->n:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move/from16 v1, p14

    iput-boolean v1, v0, Lcom/bumptech/glide/load/engine/f;->u:Z

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    move/from16 v1, p17

    iput v1, v0, Lcom/bumptech/glide/load/engine/f;->q:I

    sget-object v1, Lcom/bumptech/glide/load/engine/f$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/f$g;

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/bumptech/glide/load/engine/f;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public onDataFetcherFailed(Lcom/bumptech/glide/load/Key;Ljava/lang/Exception;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    new-instance v0, Lcom/bumptech/glide/load/engine/GlideException;

    const-string v1, "Fetching data failed"

    invoke-direct {v0, v1, p2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p3}, Lcom/bumptech/glide/load/data/DataFetcher;->getDataClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p4, p2}, Lcom/bumptech/glide/load/engine/GlideException;->g(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/DataSource;Ljava/lang/Class;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/f$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/f$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/f$b;->a(Lcom/bumptech/glide/load/engine/f;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->v()V

    :goto_0
    return-void
.end method

.method public onDataFetcherReady(Lcom/bumptech/glide/load/Key;Ljava/lang/Object;Lcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/Key;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/data/DataFetcher<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/Key;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/f;->z:Ljava/lang/Object;

    iput-object p3, p0, Lcom/bumptech/glide/load/engine/f;->B:Lcom/bumptech/glide/load/data/DataFetcher;

    iput-object p4, p0, Lcom/bumptech/glide/load/engine/f;->A:Lcom/bumptech/glide/load/DataSource;

    iput-object p5, p0, Lcom/bumptech/glide/load/engine/f;->y:Lcom/bumptech/glide/load/Key;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->w:Ljava/lang/Thread;

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/bumptech/glide/load/engine/f$g;->DECODE_DATA:Lcom/bumptech/glide/load/engine/f$g;

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    iget-object p1, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/engine/f$b;->a(Lcom/bumptech/glide/load/engine/f;)V

    goto :goto_0

    :cond_0
    const-string p1, "DecodeJob.decodeFromRetrievedData"

    invoke-static {p1}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    throw p0
.end method

.method public reschedule()V
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/f$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/f$g;

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/f;->s:Lcom/bumptech/glide/load/engine/f$g;

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->p:Lcom/bumptech/glide/load/engine/f$b;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/load/engine/f$b;->a(Lcom/bumptech/glide/load/engine/f;)V

    return-void
.end method

.method public run()V
    .locals 5

    const-string v0, "DecodeJob"

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->v:Ljava/lang/Object;

    const-string v2, "DecodeJob#run(model=%s)"

    invoke-static {v2, v1}, Lcom/bumptech/glide/util/pool/GlideTrace;->beginSectionFormat(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->B:Lcom/bumptech/glide/load/data/DataFetcher;

    :try_start_0
    iget-boolean v2, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    :cond_0
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->x()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    :goto_0
    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    :cond_2
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v2

    const/4 v3, 0x3

    :try_start_2
    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DecodeJob threw unexpectedly, isCancelled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", stage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->r:Lcom/bumptech/glide/load/engine/f$h;

    sget-object v3, Lcom/bumptech/glide/load/engine/f$h;->ENCODE:Lcom/bumptech/glide/load/engine/f$h;

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->p()V

    :cond_4
    iget-boolean p0, p0, Lcom/bumptech/glide/load/engine/f;->E:Z

    if-eqz p0, :cond_5

    if-eqz v1, :cond_2

    goto :goto_0

    :goto_1
    return-void

    :cond_5
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    if-eqz v1, :cond_6

    invoke-interface {v1}, Lcom/bumptech/glide/load/data/DataFetcher;->cleanup()V

    :cond_6
    invoke-static {}, Lcom/bumptech/glide/util/pool/GlideTrace;->endSection()V

    throw p0
.end method

.method s(Lcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/Resource;
    .locals 11
    .param p2    # Lcom/bumptech/glide/load/engine/Resource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "TZ;>;"
        }
    .end annotation

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    sget-object v0, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {v0, v8}, Lcom/bumptech/glide/load/engine/e;->q(Ljava/lang/Class;)Lcom/bumptech/glide/load/Transformation;

    move-result-object v0

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->h:Lcom/bumptech/glide/GlideContext;

    iget v3, p0, Lcom/bumptech/glide/load/engine/f;->l:I

    iget v4, p0, Lcom/bumptech/glide/load/engine/f;->m:I

    invoke-interface {v0, v2, p2, v3, v4}, Lcom/bumptech/glide/load/Transformation;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/engine/Resource;II)Lcom/bumptech/glide/load/engine/Resource;

    move-result-object v2

    move-object v7, v0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v0, p2

    move-object v7, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/bumptech/glide/load/engine/Resource;->recycle()V

    :cond_1
    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/e;->u(Lcom/bumptech/glide/load/engine/Resource;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/engine/e;->m(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v1

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    invoke-interface {v1, p2}, Lcom/bumptech/glide/load/ResourceEncoder;->getEncodeStrategy(Lcom/bumptech/glide/load/Options;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p2

    goto :goto_1

    :cond_2
    sget-object p2, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    :goto_1
    move-object v10, v1

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    iget-object v2, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/load/engine/e;->w(Lcom/bumptech/glide/load/Key;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->n:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v3, v1, p1, p2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v10, :cond_5

    sget-object p1, Lcom/bumptech/glide/load/engine/f$a;->c:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p1, p1, v1

    if-eq p1, v2, :cond_4

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    new-instance p1, Lcom/bumptech/glide/load/engine/o;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->a:Lcom/bumptech/glide/load/engine/e;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/engine/e;->b()Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    iget-object v4, p0, Lcom/bumptech/glide/load/engine/f;->i:Lcom/bumptech/glide/load/Key;

    iget v5, p0, Lcom/bumptech/glide/load/engine/f;->l:I

    iget v6, p0, Lcom/bumptech/glide/load/engine/f;->m:I

    iget-object v9, p0, Lcom/bumptech/glide/load/engine/f;->o:Lcom/bumptech/glide/load/Options;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lcom/bumptech/glide/load/engine/o;-><init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/ArrayPool;Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/Transformation;Ljava/lang/Class;Lcom/bumptech/glide/load/Options;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown strategy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Lcom/bumptech/glide/load/engine/c;

    iget-object p2, p0, Lcom/bumptech/glide/load/engine/f;->x:Lcom/bumptech/glide/load/Key;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/f;->i:Lcom/bumptech/glide/load/Key;

    invoke-direct {p1, p2, v1}, Lcom/bumptech/glide/load/engine/c;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/Key;)V

    :goto_2
    invoke-static {v0}, Lcom/bumptech/glide/load/engine/m;->b(Lcom/bumptech/glide/load/engine/Resource;)Lcom/bumptech/glide/load/engine/m;

    move-result-object v0

    iget-object p0, p0, Lcom/bumptech/glide/load/engine/f;->f:Lcom/bumptech/glide/load/engine/f$d;

    invoke-virtual {p0, p1, v10, v0}, Lcom/bumptech/glide/load/engine/f$d;->d(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/ResourceEncoder;Lcom/bumptech/glide/load/engine/m;)V

    goto :goto_3

    :cond_5
    new-instance p0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw p0

    :cond_6
    :goto_3
    return-object v0
.end method

.method t(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/f;->g:Lcom/bumptech/glide/load/engine/f$f;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/f$f;->d(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bumptech/glide/load/engine/f;->u()V

    :cond_0
    return-void
.end method

.method z()Z
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/f$h;->INITIALIZE:Lcom/bumptech/glide/load/engine/f$h;

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/engine/f;->g(Lcom/bumptech/glide/load/engine/f$h;)Lcom/bumptech/glide/load/engine/f$h;

    move-result-object p0

    sget-object v0, Lcom/bumptech/glide/load/engine/f$h;->RESOURCE_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/bumptech/glide/load/engine/f$h;->DATA_CACHE:Lcom/bumptech/glide/load/engine/f$h;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
