.class final Lcom/nostra13/universalimageloader/core/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

.field private final d:Ljava/lang/String;

.field private final e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

.field private final f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private final g:Lcom/nostra13/universalimageloader/core/b;

.field private final h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->a:Landroid/graphics/Bitmap;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->b:Ljava/lang/String;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->d:Ljava/lang/String;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {p1}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object p1

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object p1, p2, Lcom/nostra13/universalimageloader/core/c;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/a;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/a;->g:Lcom/nostra13/universalimageloader/core/b;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/a;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->g:Lcom/nostra13/universalimageloader/core/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/b;->h(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/a;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->isCollected()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware was collected by GC. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->d:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "ImageAware is reused for another image. Task is cancelled. [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    aput-object v3, v0, v1

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->d:Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "Display image in ImageAware (loaded from %1$s) [%2$s]"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->e:Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/a;->h:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->g:Lcom/nostra13/universalimageloader/core/b;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/b;->d(Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/a;->f:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/a;->c:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v2}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v2

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/a;->a:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2, p0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method
