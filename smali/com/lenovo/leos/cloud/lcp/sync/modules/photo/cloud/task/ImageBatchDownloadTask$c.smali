.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/task/CloudTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$c;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-static {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->f(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageChooser;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V

    return-void
.end method
