.class public Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

.field private d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

.field private e:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;-><init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
            "+",
            "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
            ">;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->b:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->a:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->b:J

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(J)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->e:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    return-void
.end method

.method private a(JI)V
    .locals 6

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->progress()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->b:J

    invoke-interface/range {v0 .. v5}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->progress()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->b:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->removeOdometer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FileInputPipe"

    const-string p2, "Unexcepted Exception in the progressListener"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->b:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->a:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getContentType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isRepeatable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadOdometer()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->e:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->loadOdometer()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public persistOdometer(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->e:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->persistOdometer(Ljava/io/Serializable;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized read([BJI)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object p4, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->a:Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;

    invoke-interface {p4, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;->getData([BJ)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p4, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    int-to-long v0, p1

    invoke-virtual {p4, p2, p3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->finish(JJ)V

    :cond_0
    invoke-direct {p0, p2, p3, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->a(JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeOdometer()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->e:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->removeOdometer()V

    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/EntityInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method
