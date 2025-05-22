.class Lcom/nostra13/universalimageloader/core/d$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/d;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/d;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d$c;->a:Lcom/nostra13/universalimageloader/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d$c;->a:Lcom/nostra13/universalimageloader/core/d;

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d;->n:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {p0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
