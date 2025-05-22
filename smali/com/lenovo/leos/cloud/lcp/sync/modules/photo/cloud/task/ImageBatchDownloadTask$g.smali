.class Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;->download2Cloud(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->a:I

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p2, p1

    long-to-float p3, p3

    div-float/2addr p2, p3

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p2, p4

    float-to-int p2, p2

    iget p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->a:I

    if-ge p4, p2, :cond_0

    iput p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->a:I

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageBatchDownloadTask$g;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;

    const p4, 0x3f7d70a4    # 0.99f

    mul-float/2addr p1, p4

    div-float/2addr p1, p3

    invoke-virtual {p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/cloud/task/ImageTask;->broadcastProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/photo/domain/ImageInfo;F)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
