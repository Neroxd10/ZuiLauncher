.class public Lcom/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/ImageLoader$b;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static volatile d:Lcom/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private b:Lcom/nostra13/universalimageloader/core/b;

.field private c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ImageLoader must be init with configuration before using"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 2

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->t()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p0, v1, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    const-class v0, Lcom/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v1, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/nostra13/universalimageloader/core/ImageLoader;->d:Lcom/nostra13/universalimageloader/core/ImageLoader;

    return-object v0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 1

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/b;->d(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public cancelDisplayTask(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->d(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    return-void
.end method

.method public clearDiscCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    return-void
.end method

.method public clearDiskCache()V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->clear()V

    return-void
.end method

.method public clearMemoryCache()V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {p0}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    return-void
.end method

.method public denyNetworkDownloads(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->f(Z)V

    return-void
.end method

.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Destroy ImageLoader"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->stop()V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)V
    .locals 7

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 9

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    if-eqz p2, :cond_b

    if-nez p5, :cond_0

    iget-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    :cond_0
    move-object v6, p5

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p4, p2}, Lcom/nostra13/universalimageloader/core/b;->d(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result p4

    if-eqz p4, :cond_2

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, p0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    :goto_0
    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v6, p1, p0, v0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    return-void

    :cond_3
    if-nez p4, :cond_4

    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {p4}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p4

    :cond_4
    move-object v3, p4

    invoke-static {p1, v3}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v4

    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p4, p2, v4}, Lcom/nostra13/universalimageloader/core/b;->q(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p4

    invoke-interface {v6, p1, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, p4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {p4, v4}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p5

    if-nez p5, :cond_7

    const/4 p5, 0x1

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v4, p5, v0

    const-string v0, "Load image from memory cache [%s]"

    invoke-static {v0, p5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result p5

    if-eqz p5, :cond_6

    new-instance p5, Lcom/nostra13/universalimageloader/core/c;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v0, p1}, Lcom/nostra13/universalimageloader/core/b;->i(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, p5

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/c;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance p1, Lcom/nostra13/universalimageloader/core/e;

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object p6

    invoke-direct {p1, p2, p4, p5, p6}, Lcom/nostra13/universalimageloader/core/e;-><init>(Lcom/nostra13/universalimageloader/core/b;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c;Landroid/os/Handler;)V

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->t()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/e;->run()V

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->u(Lcom/nostra13/universalimageloader/core/e;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object p0

    sget-object p3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {p0, p4, p2, p3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    invoke-interface {p2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v6, p1, p0, p4}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result p4

    if-eqz p4, :cond_8

    iget-object p4, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p4, p4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a:Landroid/content/res/Resources;

    invoke-virtual {p3, p4}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-interface {p2, p4}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    :cond_8
    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result p4

    if-eqz p4, :cond_9

    invoke-interface {p2, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    :cond_9
    :goto_1
    new-instance p4, Lcom/nostra13/universalimageloader/core/c;

    iget-object p5, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p5, p1}, Lcom/nostra13/universalimageloader/core/b;->i(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/nostra13/universalimageloader/core/c;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    new-instance p1, Lcom/nostra13/universalimageloader/core/d;

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {p3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->b(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object p5

    invoke-direct {p1, p2, p4, p5}, Lcom/nostra13/universalimageloader/core/d;-><init>(Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/c;Landroid/os/Handler;)V

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->t()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/d;->run()V

    goto :goto_2

    :cond_a
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->t(Lcom/nostra13/universalimageloader/core/d;)V

    :goto_2
    return-void

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public getDiscCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object p0

    return-object p0
.end method

.method public getDiskCache()Lcom/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object p0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    new-instance v0, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/b;->h(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLoadingUriForView(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->h(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMemoryCache()Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object p0
.end method

.method public handleSlowNetwork(Z)V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0, p1}, Lcom/nostra13/universalimageloader/core/b;->l(Z)V

    return-void
.end method

.method public declared-synchronized init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Initialize ImageLoader with configuration"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/nostra13/universalimageloader/core/b;

    invoke-direct {v0, p1}, Lcom/nostra13/universalimageloader/core/b;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    goto :goto_0

    :cond_0
    const-string p1, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ImageLoader configuration can not be initialized with null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public isInited()Z
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->a()V

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {p2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a()Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    :cond_0
    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_1
    move-object v3, p3

    new-instance v2, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object p3, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, p3}, Lcom/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 2

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->r:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v0, p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->t(Z)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-virtual {p3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoader$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoader$b;-><init>(Lcom/nostra13/universalimageloader/core/ImageLoader$a;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoader$b;->a()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public pause()V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/b;->p()V

    return-void
.end method

.method public resume()V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/b;->r()V

    return-void
.end method

.method public setDefaultLoadingListener(Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->c:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    return-void
.end method

.method public stop()V
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/ImageLoader;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {p0}, Lcom/nostra13/universalimageloader/core/b;->s()V

    return-void
.end method
