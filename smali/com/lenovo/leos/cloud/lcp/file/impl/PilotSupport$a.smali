.class final Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(JLcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->a:J

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->b:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method


# virtual methods
.method public onFinish(Landroid/os/Bundle;)V
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->c:J

    iget-wide v2, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->b:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 6

    cmp-long v0, p1, p3

    if-nez v0, :cond_0

    iget-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->c:J

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->c:J

    const-wide/16 p1, 0x0

    :cond_0
    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->d:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->b:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->c:J

    iget-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->d:J

    add-long v1, p1, p3

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->a:J

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/impl/PilotSupport$a;->b:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
