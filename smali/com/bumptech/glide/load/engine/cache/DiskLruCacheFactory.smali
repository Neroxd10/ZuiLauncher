.class public Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;
    }
.end annotation


# instance fields
.field private final a:J

.field private final b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->a:J

    iput-object p1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$a;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2, p3}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    new-instance v0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$b;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p3, p4}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;-><init>(Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;J)V

    return-void
.end method


# virtual methods
.method public build()Lcom/bumptech/glide/load/engine/cache/DiskCache;
    .locals 3

    iget-object v0, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->b:Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory$CacheDirectoryGetter;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-object v1

    :cond_2
    iget-wide v1, p0, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheFactory;->a:J

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/engine/cache/DiskLruCacheWrapper;->create(Ljava/io/File;J)Lcom/bumptech/glide/load/engine/cache/DiskCache;

    move-result-object p0

    return-object p0
.end method
