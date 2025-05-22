.class final Lcom/nostra13/universalimageloader/core/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/nostra13/universalimageloader/core/b;

.field private final b:Landroid/graphics/Bitmap;

.field private final c:Lcom/nostra13/universalimageloader/core/c;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/nostra13/universalimageloader/core/b;Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/e;->a:Lcom/nostra13/universalimageloader/core/b;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/e;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/nostra13/universalimageloader/core/e;->c:Lcom/nostra13/universalimageloader/core/c;

    iput-object p4, p0, Lcom/nostra13/universalimageloader/core/e;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->c:Lcom/nostra13/universalimageloader/core/c;

    iget-object v1, v1, Lcom/nostra13/universalimageloader/core/c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "PostProcess image before displaying [%s]"

    invoke-static {v1, v0}, Lcom/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->c:Lcom/nostra13/universalimageloader/core/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->getPostProcessor()Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/e;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/core/process/BitmapProcessor;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/nostra13/universalimageloader/core/a;

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->c:Lcom/nostra13/universalimageloader/core/c;

    iget-object v3, p0, Lcom/nostra13/universalimageloader/core/e;->a:Lcom/nostra13/universalimageloader/core/b;

    sget-object v4, Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/a;-><init>(Landroid/graphics/Bitmap;Lcom/nostra13/universalimageloader/core/c;Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/e;->c:Lcom/nostra13/universalimageloader/core/c;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/c;->e:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->t()Z

    move-result v0

    iget-object v2, p0, Lcom/nostra13/universalimageloader/core/e;->d:Landroid/os/Handler;

    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/e;->a:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v1, v0, v2, p0}, Lcom/nostra13/universalimageloader/core/d;->t(Ljava/lang/Runnable;ZLandroid/os/Handler;Lcom/nostra13/universalimageloader/core/b;)V

    return-void
.end method
