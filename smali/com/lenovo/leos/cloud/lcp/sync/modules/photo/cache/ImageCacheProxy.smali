.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

.field private static b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    return-object v0
.end method

.method private static b()V
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageMemoryCache;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;->getInstance()Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/impl/ImageFileSystemCache;

    move-result-object v0

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    return-void
.end method

.method public static getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b()V

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getFileCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b()V

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMemoryCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b()V

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->b()V

    :cond_1
    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;

    invoke-interface {v0, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCache;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;

    invoke-direct {v2, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cache/ImageCacheProxy$a;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0
.end method
