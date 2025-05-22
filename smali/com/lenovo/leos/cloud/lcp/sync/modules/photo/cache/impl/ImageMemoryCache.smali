.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;


# static fields
.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;


# instance fields
.field private a:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a:Landroidx/collection/LruCache;

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a()V

    return-void
.end method

.method private a()V
    .locals 4

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    div-long/2addr v0, v2

    long-to-int v0, v0

    div-int/lit8 v0, v0, 0x8

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache$a;

    invoke-direct {v1, p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;I)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a:Landroidx/collection/LruCache;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;
    .locals 2

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;

    if-nez v1, :cond_0

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;-><init>()V

    sput-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;

    :cond_0
    sget-object v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hit Bitmap from First MemoryCache : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImageCache"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_1
    return-object v0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a:Landroidx/collection/LruCache;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->a:Landroidx/collection/LruCache;

    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ImageCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put Bitmap to MemoryCache : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",size:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result p2

    mul-int/2addr p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method
