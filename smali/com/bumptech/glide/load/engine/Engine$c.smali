.class Lcom/bumptech/glide/load/engine/Engine$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/f$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

.field private volatile b:Lcom/bumptech/glide/load/engine/cache/DiskCache;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/Engine$c;->a:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->a:Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;->build()Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;

    invoke-direct {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCacheAdapter;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    return-object p0
.end method

.method declared-synchronized b()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/Engine$c;->b:Lcom/bumptech/glide/load/engine/cache/DiskCache;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskCache;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
