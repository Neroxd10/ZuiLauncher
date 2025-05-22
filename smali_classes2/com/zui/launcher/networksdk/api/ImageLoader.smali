.class public Lcom/zui/launcher/networksdk/api/ImageLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/networksdk/api/ImageLoader$b;,
        Lcom/zui/launcher/networksdk/api/ImageLoader$c;,
        Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "ImageLoader"

.field private static f:Lcom/zui/launcher/networksdk/api/ImageLoader;

.field private static g:Landroid/content/Context;


# instance fields
.field private a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zui/launcher/networksdk/api/ImageLoader$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Landroid/os/Handler;

.field public mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

.field public mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->c:I

    new-instance v0, Lcom/zui/launcher/networksdk/api/ImageLoader$a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/api/ImageLoader$a;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;)V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->d:Landroid/os/Handler;

    new-instance v0, Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    invoke-direct {v0}, Lcom/zui/launcher/networksdk/cache/BitmapLruCache;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    const-string v0, "lelauncherthumb"

    invoke-static {p1, v0}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-wide/32 v1, 0x2000000

    invoke-static {p1, v0, v1, v2}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->openCache(Landroid/content/Context;Ljava/io/File;J)Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    invoke-static {}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->getInstance()Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/networksdk/api/ImageLoader;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->d:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/zui/launcher/networksdk/api/ImageLoader;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/networksdk/api/ImageLoader;)Lcom/zui/launcher/networksdk/download/DownloadTaskManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/networksdk/api/ImageLoader;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->j(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/zui/launcher/networksdk/api/ImageLoader;Lcom/zui/launcher/networksdk/api/ImageLoader$b;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->i(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/zui/launcher/networksdk/api/ImageLoader;
    .locals 1

    sget-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->f:Lcom/zui/launcher/networksdk/api/ImageLoader;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/networksdk/api/ImageLoader;->k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-void
.end method

.method private i(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    int-to-double v2, v1

    const-wide v4, 0x4133333333333333L    # 1258291.2

    cmpl-double v2, v2, v4

    const/4 v3, 0x2

    if-lez v2, :cond_0

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    :cond_0
    const v2, 0x124f80

    div-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget v0, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->e:I

    if-eqz v0, :cond_2

    iget v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->f:I

    if-eqz v1, :cond_2

    invoke-static {p2, v0, v1, v3}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_4

    iget-object v0, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->e:I

    if-eqz v0, :cond_3

    iget v0, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->f:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->f:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    iget-object v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    iget-object p1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    :goto_1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p2
.end method

.method public static init(Landroid/content/Context;)Lcom/zui/launcher/networksdk/api/ImageLoader;
    .locals 2

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->f:Lcom/zui/launcher/networksdk/api/ImageLoader;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->g:Landroid/content/Context;

    new-instance v0, Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-direct {v0, p0}, Lcom/zui/launcher/networksdk/api/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->f:Lcom/zui/launcher/networksdk/api/ImageLoader;

    :cond_0
    sget-object p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->f:Lcom/zui/launcher/networksdk/api/ImageLoader;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot instantiate outside UI thread."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "need one context!!!."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private j(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->removeTaskIdSet(Ljava/lang/String;)Z

    return-void
.end method

.method private k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object p3

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object v1

    iget-object v1, v1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-interface {p3, p1, p2, v1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object p1

    invoke-interface {p1, p4, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->c()Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->d()Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-result-object p1

    iget-object p1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->j(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    new-instance p0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 p3, 0x2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    const/4 p4, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x106000d

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v0, p3, p4

    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v0, Lcom/zui/launcher/networksdk/api/ImageLoader;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p4, v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 p2, 0x1

    aput-object p4, p3, p2

    invoke-direct {p0, p3}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x12c

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelImageLoad(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->j(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/networksdk/download/Downloader;->deleteAll()V

    :cond_0
    return-void
.end method

.method public createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->g(Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    iget-object p2, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Lcom/zui/launcher/networksdk/api/ImageLoader$c;

    iget v5, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->c:I

    iget-object v6, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->d:Ljava/lang/String;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;Lcom/zui/launcher/networksdk/api/ImageLoader$b;ILjava/lang/String;)V

    iget-object p2, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->b:Ljava/util/HashMap;

    iget-object p1, p1, Lcom/zui/launcher/networksdk/api/ImageLoader$b;->b:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$c;->b()Lcom/zui/launcher/networksdk/download/Downloader;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->a:Lcom/zui/launcher/networksdk/download/DownloadTaskManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/download/DownloadTaskManager;->addDownloadTask(Lcom/zui/launcher/networksdk/download/Downloader;)V

    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;IIILcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 11

    move-object v8, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p6

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ltz v5, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    if-eqz v3, :cond_8

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, v8, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v0, v1, v3}, Lcom/zui/launcher/networksdk/api/ImageLoader;->k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, v8, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez v9, :cond_5

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v9, p1, v0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {v9, p2, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface/range {p6 .. p6}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    :goto_0
    return-void

    :cond_6
    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->urlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    return-void

    :cond_7
    new-instance v10, Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$b;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {p0, v10, v9}, Lcom/zui/launcher/networksdk/api/ImageLoader;->createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public displayImage(Landroid/widget/ImageView;Ljava/lang/String;ILcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-ltz p3, :cond_3

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    if-eqz p2, :cond_9

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    invoke-virtual {v0, p2}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez p4, :cond_6

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->k(Landroid/widget/ImageView;Landroid/graphics/Bitmap;ZLjava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-interface {p4, p1, v0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p4, p2, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p4}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    :goto_0
    return-void

    :cond_7
    invoke-virtual {p0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->urlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    return-void

    :cond_8
    new-instance v0, Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$b;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p4}, Lcom/zui/launcher/networksdk/api/ImageLoader;->createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 8

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2, v1, v0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2, v1, v0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->urlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v2, v0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$b;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getImage(Ljava/lang/String;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;II)V
    .locals 8

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2, v1, v0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p2, v1, p3, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p2, p1, p3}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p2}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->urlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    return-void

    :cond_3
    new-instance p3, Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    const/4 v4, 0x0

    const/4 v7, -0x1

    move-object v2, p3

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/networksdk/api/ImageLoader$b;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0, p3, p2}, Lcom/zui/launcher/networksdk/api/ImageLoader;->createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public getImage(Ljava/lang/String;Ljava/lang/String;ZLcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V
    .locals 7

    if-eqz p4, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mMemoryCache:Lcom/zui/launcher/networksdk/cache/BitmapLruCache;

    invoke-virtual {p3, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-interface {p4, v1, p3, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p4, p1, p3}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p4}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_1
    iget-object p3, p0, Lcom/zui/launcher/networksdk/api/ImageLoader;->mDiskCache:Lcom/zui/launcher/networksdk/cache/DiskLruCache;

    invoke-virtual {p3, p1}, Lcom/zui/launcher/networksdk/cache/DiskLruCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-interface {p4, v1, p3, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->handlerImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    invoke-interface {p4, p1, p3}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onSucess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    invoke-interface {p4}, Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;->onFinish()V

    return-void

    :cond_2
    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/zui/launcher/networksdk/api/ImageLoader;->urlToFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :goto_0
    move-object v5, p2

    move v6, v0

    if-nez v5, :cond_4

    return-void

    :cond_4
    new-instance p2, Lcom/zui/launcher/networksdk/api/ImageLoader$b;

    const/4 v3, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/networksdk/api/ImageLoader$b;-><init>(Lcom/zui/launcher/networksdk/api/ImageLoader;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, p2, p4}, Lcom/zui/launcher/networksdk/api/ImageLoader;->createImageTask(Lcom/zui/launcher/networksdk/api/ImageLoader$b;Lcom/zui/launcher/networksdk/api/ImageLoader$ImageHandler;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public urlToFilePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/zui/launcher/networksdk/api/ImageLoader;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/zui/launcher/networksdk/MD5Util;->md5To16(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
