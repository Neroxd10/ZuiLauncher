.class public Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# static fields
.field public static final STEP_BEFORE_START:I = 0x0

.field public static final STEP_ON_FINISH:I = 0x3

.field public static final STEP_ON_PROGRESS:I = 0x2

.field public static final STEP_ON_START:I = 0x1


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private b:I

.field private c:Landroid/os/Bundle;

.field private d:J

.field private e:J

.field private f:Landroid/os/Bundle;

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->d:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->e:J

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->f:Landroid/os/Bundle;

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->g:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->h:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method


# virtual methods
.method public getDelegate()Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-object p0
.end method

.method public getLastBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLastCurrent()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->d:J

    return-wide v0
.end method

.method public getLastSubBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->f:Landroid/os/Bundle;

    return-object p0
.end method

.method public getLastSubCurrent()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->g:J

    return-wide v0
.end method

.method public getLastSubTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->h:J

    return-wide v0
.end method

.method public getLastTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->e:J

    return-wide v0
.end method

.method public getStep()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    return p0
.end method

.method public onFinish(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    const/4 v0, 0x3

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onProgress(JJLandroid/os/Bundle;)V
    .locals 7

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->d:J

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->e:J

    const/4 v0, 0x2

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onStart(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    const/4 v0, 0x1

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSubProgress(JJLandroid/os/Bundle;)V
    .locals 6

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->f:Landroid/os/Bundle;

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->g:J

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->h:J

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onSubProgress(JJLandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->d:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->e:J

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->f:Landroid/os/Bundle;

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->g:J

    iput-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->h:J

    return-void
.end method

.method public setDelegate(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->a:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method

.method public setLastBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->c:Landroid/os/Bundle;

    return-void
.end method

.method public setLastCurrent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->d:J

    return-void
.end method

.method public setLastSubBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->f:Landroid/os/Bundle;

    return-void
.end method

.method public setLastSubCurrent(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->g:J

    return-void
.end method

.method public setLastSubTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->h:J

    return-void
.end method

.method public setLastTotal(J)V
    .locals 0

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->e:J

    return-void
.end method

.method public setStep(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/common/SnapshotProgressListener;->b:I

    return-void
.end method
