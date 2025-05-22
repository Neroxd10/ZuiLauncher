.class Lcom/nostra13/universalimageloader/core/d$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/d;->j(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

.field final synthetic b:Ljava/lang/Throwable;

.field final synthetic c:Lcom/nostra13/universalimageloader/core/d;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/d;Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d$b;->c:Lcom/nostra13/universalimageloader/core/d;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/d$b;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/d$b;->b:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d$b;->c:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnFail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d$b;->c:Lcom/nostra13/universalimageloader/core/d;

    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/d;->m:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/d;->a(Lcom/nostra13/universalimageloader/core/d;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->a:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnFail(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d$b;->c:Lcom/nostra13/universalimageloader/core/d;

    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/d;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    new-instance v3, Lcom/nostra13/universalimageloader/core/assist/FailReason;

    iget-object v4, p0, Lcom/nostra13/universalimageloader/core/d$b;->a:Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d$b;->b:Ljava/lang/Throwable;

    invoke-direct {v3, v4, p0}, Lcom/nostra13/universalimageloader/core/assist/FailReason;-><init>(Lcom/nostra13/universalimageloader/core/assist/FailReason$FailType;Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V

    return-void
.end method
