.class Lcom/nostra13/universalimageloader/core/d$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/d;->k(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/nostra13/universalimageloader/core/d;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/d;II)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/d$a;->c:Lcom/nostra13/universalimageloader/core/d;

    iput p2, p0, Lcom/nostra13/universalimageloader/core/d$a;->a:I

    iput p3, p0, Lcom/nostra13/universalimageloader/core/d$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/d$a;->c:Lcom/nostra13/universalimageloader/core/d;

    iget-object v1, v0, Lcom/nostra13/universalimageloader/core/d;->o:Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    iget-object v2, v0, Lcom/nostra13/universalimageloader/core/d;->i:Ljava/lang/String;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/d;->k:Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;

    invoke-interface {v0}, Lcom/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/nostra13/universalimageloader/core/d$a;->a:I

    iget p0, p0, Lcom/nostra13/universalimageloader/core/d$a;->b:I

    invoke-interface {v1, v2, v0, v3, p0}, Lcom/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;->onProgressUpdate(Ljava/lang/String;Landroid/view/View;II)V

    return-void
.end method
