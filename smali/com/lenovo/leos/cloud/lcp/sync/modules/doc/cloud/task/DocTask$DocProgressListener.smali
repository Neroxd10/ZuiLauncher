.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DocProgressListener"
.end annotation


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

.field private b:I

.field private c:Z

.field final synthetic d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->b:I

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->c:Z

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    return-void
.end method


# virtual methods
.method public isFinish()Z
    .locals 0

    iget-boolean p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->c:Z

    return p0
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->c:Z

    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 2

    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    div-long/2addr p1, p3

    long-to-int p1, p1

    iget p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->b:I

    if-le p1, p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "doc:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "progress"

    invoke-static {p3, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->b:I

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask$DocProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;

    invoke-virtual {p2, p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/task/DocTask;->notifySubProgress(Lcom/lenovo/leos/cloud/lcp/sync/modules/doc/cloud/entity/DocumentEntity;I)V

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
