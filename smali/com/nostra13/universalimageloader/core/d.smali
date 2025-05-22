.class final Lcom/nostra13/universalimageloader/core/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nostra13/universalimageloader/core/d$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/nostra13/universalimageloader/core/b;

.field private final b:Lcom/nostra13/universalimageloader/core/c;

.field private final c:Landroid/os/Handler;

.field private final d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

.field private final h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

.field final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field final k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final l:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

.field final m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

.field final n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field private final p:Z

.field private q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/c;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->b:Lcom/nostra13/universalimageloader/core/c;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d;->c:Landroid/os/Handler;

    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/b;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->p:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->s:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object p3, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->t:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    iget-object p1, p1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->q:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->d:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    iget-object p3, p2, Lcom/nostra13/universalimageloader/core/c;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/c;->g:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->t()Z

    move-result p1

    iput-boolean p1, p0, Lcom/nostra13/universalimageloader/core/d;->p:Z

    return-void
.end method

.method static synthetic a(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    return-object p0
.end method

.method private b()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->n()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$d;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/d$d;-><init>(Lcom/nostra13/universalimageloader/core/d;)V

    throw v0
.end method

.method private c()V
    .locals 0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->d()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->e()V

    return-void
.end method

.method private d()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->q()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$d;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/d$d;-><init>(Lcom/nostra13/universalimageloader/core/d;)V

    throw v0
.end method

.method private e()V
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->r()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$d;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/d$d;-><init>(Lcom/nostra13/universalimageloader/core/d;)V

    throw v0
.end method

.method private f(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getScaleType()Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v6

    new-instance v0, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/d;->l:Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->l()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v7

    iget-object v8, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-object v1, v0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {p0, v0}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private g()Z
    .locals 6

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldDelayBeforeLoading()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Delay %d ms before loading...  [%s]"

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDelayBeforeLoading()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->p()Z

    move-result p0

    return p0

    :catch_0
    new-array v0, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object p0, v0, v1

    const-string p0, "Task was interrupted [%s]"

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_0
    return v1
.end method

.method private h()Z
    .locals 3

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->l()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getExtraForDownloader()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader;->getStream(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const-string p0, "No stream for image [%s]"

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p0}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Ljava/io/InputStream;Lcom/nostra13/universalimageloader/utils/IoUtils$CopyListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/nostra13/universalimageloader/utils/IoUtils;->closeSilently(Ljava/io/Closeable;)V

    throw p0
.end method

.method private i()V
    .locals 3

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$c;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/d$c;-><init>(Lcom/nostra13/universalimageloader/core/d;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0, v1, v2, p0}, Lcom/nostra13/universalimageloader/core/d;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private j(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->n()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nostra13/universalimageloader/core/d$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/d$b;-><init>(Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0, p1, p2, p0}, Lcom/nostra13/universalimageloader/core/d;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k(II)Z
    .locals 2

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nostra13/universalimageloader/core/d$a;

    invoke-direct {v0, p0, p1, p2}, Lcom/nostra13/universalimageloader/core/d$a;-><init>(Lcom/nostra13/universalimageloader/core/d;II)V

    iget-object p1, p0, Lcom/nostra13/universalimageloader/core/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0, v1, p1, p0}, Lcom/nostra13/universalimageloader/core/d;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private l()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/b;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->f:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/b;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->g:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->e:Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    :goto_0
    return-object p0
.end method

.method private n()Z
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "Task was interrupted [%s]"

    invoke-static {p0, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private p()Z
    .locals 1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->r()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private q()Z
    .locals 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object p0, v2, v1

    const-string p0, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {p0, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :cond_0
    return v1
.end method

.method private r()Z
    .locals 3

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/b;->h(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object p0, v0, v2

    const-string p0, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {p0, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    return v2
.end method

.method private s(II)Z
    .locals 11

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v7, Lcom/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v7, p1, p2}, Lcom/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    new-instance p1, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    sget-object p2, Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;->IN_SAMPLE_INT:Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;

    invoke-virtual {p1, p2}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->imageScaleType(Lcom/nostra13/universalimageloader/core/assist/ImageScaleType;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v10

    new-instance p1, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    sget-object p2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    sget-object v8, Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->l()Lcom/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v9

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/nostra13/universalimageloader/core/assist/ImageSize;Lcom/nostra13/universalimageloader/core/assist/ViewScaleType;Lcom/nostra13/universalimageloader/core/download/ImageDownloader;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->h:Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;

    invoke-interface {p2, p1}, Lcom/nostra13/universalimageloader/core/decode/ImageDecoder;->decode(Lcom/nostra13/universalimageloader/core/decode/ImageDecodingInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v2, "Process image before cache on disk [%s]"

    invoke-static {v2, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->f:Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    invoke-interface {v0, p1}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    new-array p2, p2, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v0, p2, v1

    const-string v0, "Bitmap processor for disk cache returned null [%s]"

    invoke-static {v0, p2}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p2, p2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->save(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return v1
.end method

.method static t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p3, p0}, Lcom/nostra13/universalimageloader/core/b;->g(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private u()Z
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Cache image on disk [%s]"

    invoke-static {v2, v1}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->d:I

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v4, v4, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->e:I

    if-gtz v2, :cond_0

    if-lez v4, :cond_1

    :cond_0
    const-string v5, "Resize image in disk cache [%s]"

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v0, v3

    invoke-static {v5, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v2, v4}, Lcom/nostra13/universalimageloader/core/d;->s(II)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v3, v1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    :goto_0
    return v3
.end method

.method private v()Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    const-string v4, "Load image from disk cache [%s]"

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->DISC_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->c()V

    sget-object v4, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nostra13/universalimageloader/core/d;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/nostra13/universalimageloader/core/d$d; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-gtz v4, :cond_4

    :cond_1
    const-string v4, "Load image from network [%s]"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v5, v3, v2

    invoke-static {v4, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->NETWORK:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheOnDisk()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->u()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    invoke-interface {v3, v4}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v2, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->FILE:Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nostra13/universalimageloader/core/download/ImageDownloader$Scheme;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->c()V

    invoke-direct {p0, v2}, Lcom/nostra13/universalimageloader/core/d;->f(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-gtz v2, :cond_4

    :cond_3
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->DECODING_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/universalimageloader/core/d;->j(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/nostra13/universalimageloader/core/d$d; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_3

    :catchall_1
    move-exception v1

    :goto_1
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->UNKNOWN:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    goto :goto_4

    :catch_2
    move-exception v1

    :goto_2
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->OUT_OF_MEMORY:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    goto :goto_4

    :catch_3
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->IO_ERROR:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    :goto_4
    invoke-direct {p0, v2, v1}, Lcom/nostra13/universalimageloader/core/d;->j(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception p0

    throw p0

    :catch_5
    move-object v1, v0

    :catch_6
    sget-object v2, Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;->NETWORK_DENIED:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    invoke-direct {p0, v2, v0}, Lcom/nostra13/universalimageloader/core/d;->j(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-object v1
.end method

.method private w()Z
    .locals 6

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/b;->j()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/b;->k()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImageLoader is paused. Waiting...  [%s]"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/b;->k()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, ".. Resume loading [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v0, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    const-string v0, "Task was interrupted [%s]"

    new-array v3, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object p0, v3, v5

    invoke-static {v0, v3}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    return v2

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->p()Z

    move-result p0

    return p0
.end method


# virtual methods
.method m()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    return-object p0
.end method

.method public onBytesCopied(II)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nostra13/universalimageloader/core/d;->p:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/nostra13/universalimageloader/core/d;->k(II)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public run()V
    .locals 7

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->b:Lcom/nostra13/universalimageloader/core/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/c;->h:Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Start display image task [%s]"

    invoke-static {v3, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v3, v2, v4

    const-string v3, "Image already is loading. Waiting... [%s]"

    invoke-static {v3, v2}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->c()V

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    iput-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    const-string v3, "...Get cached bitmap from memory after waiting. [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->v()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Lcom/nostra13/universalimageloader/core/d$d; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :cond_5
    :try_start_1
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->c()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->b()V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPreProcess()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "PreProcess image before caching in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPreProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_6

    const-string v3, "Pre-processor returned null [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->isCacheInMemory()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "Cache image in memory [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->d:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v3, v3, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->n:Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    invoke-interface {v3, v5, v2}, Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    :cond_7
    :goto_1
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "PostProcess image before displaying [%s]"

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "Post-processor returned null [%s]"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/nostra13/universalimageloader/core/d;->j:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v3, v1}, Lcom/nostra13/universalimageloader/utils/L;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->c()V

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->b()V
    :try_end_1
    .catch Lcom/nostra13/universalimageloader/core/d$d; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    new-instance v0, Lcom/nostra13/universalimageloader/core/a;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->b:Lcom/nostra13/universalimageloader/core/c;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d;->q:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/nostra13/universalimageloader/core/a;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-boolean v1, p0, Lcom/nostra13/universalimageloader/core/d;->p:Z

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/d;->c:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0, v1, v2, p0}, Lcom/nostra13/universalimageloader/core/d;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :try_start_2
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/d;->i()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :goto_2
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p0
.end method
