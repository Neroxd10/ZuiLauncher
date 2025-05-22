.class Lcom/nostra13/universalimageloader/core/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nostra13/universalimageloader/core/b;->t(Lcom/nostra13/universalimageloader/core/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/nostra13/universalimageloader/core/d;

.field final synthetic b:Lcom/nostra13/universalimageloader/core/b;


# direct methods
.method constructor <init>(Lcom/nostra13/universalimageloader/core/b;Lcom/nostra13/universalimageloader/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/nostra13/universalimageloader/core/b$a;->b:Lcom/nostra13/universalimageloader/core/b;

    iput-object p2, p0, Lcom/nostra13/universalimageloader/core/b$a;->a:Lcom/nostra13/universalimageloader/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b$a;->b:Lcom/nostra13/universalimageloader/core/b;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/b;->a:Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->o:Lcom/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b$a;->a:Lcom/nostra13/universalimageloader/core/d;

    invoke-virtual {v1}, Lcom/nostra13/universalimageloader/core/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nostra13/universalimageloader/core/b$a;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v1}, Lcom/nostra13/universalimageloader/core/b;->a(Lcom/nostra13/universalimageloader/core/b;)V

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b$a;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/b;->b(Lcom/nostra13/universalimageloader/core/b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nostra13/universalimageloader/core/b$a;->b:Lcom/nostra13/universalimageloader/core/b;

    invoke-static {v0}, Lcom/nostra13/universalimageloader/core/b;->c(Lcom/nostra13/universalimageloader/core/b;)Ljava/util/concurrent/Executor;

    move-result-object v0

    :goto_1
    iget-object p0, p0, Lcom/nostra13/universalimageloader/core/b$a;->a:Lcom/nostra13/universalimageloader/core/d;

    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
