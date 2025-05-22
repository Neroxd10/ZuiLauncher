.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    new-instance v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    const-string v3, "v5/stream/photobackup.action"

    invoke-direct {v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;)I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->b:I

    return p0
.end method

.method static synthetic b(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;I)I
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->b:I

    return p1
.end method

.method private c(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;)V
    .locals 2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamExecutor;->prepare()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool$a;

    invoke-direct {v1, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool$a;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private d(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p1, v0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    return-object p0
.end method

.method private e()V
    .locals 3

    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    invoke-virtual {v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamExecutor;->isFinish()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x7d0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addMimeItem(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->d(I)Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    move-result-object p4

    invoke-virtual {p4, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;->addMimeItem(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    invoke-virtual {p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;->getMimeItemCount()I

    move-result p1

    const/16 p2, 0x1e

    if-lt p1, p2, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->flush()I

    :cond_0
    return-void
.end method

.method public close()V
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamExecutor;->isFinish()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamExecutor;->cancel()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public flush()I
    .locals 3

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamExecutor;->isFinish()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;->getMimeItemCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-direct {p0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->c(Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderV2;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->e()V

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/contact/cloud/task/photostream/PhotoStreamUploaderPool;->b:I

    return p0
.end method
