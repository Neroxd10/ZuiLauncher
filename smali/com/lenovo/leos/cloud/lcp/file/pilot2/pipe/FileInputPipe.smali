.class public Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/InputPipe;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/io/File;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

.field private e:Ljava/io/RandomAccessFile;

.field private f:J

.field private volatile g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport<",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->f:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->b:Ljava/io/File;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->f:J

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(J)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->b()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onFinish(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FileInputPipe"

    const-string v1, "Unexcepted Exception in the progressListener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private c()V
    .locals 7

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-virtual {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->progress()J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    invoke-interface {v0, v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onStart(Landroid/os/Bundle;)V

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->f:J

    invoke-interface/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;->onProgress(JJLandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FileInputPipe"

    const-string v1, "Unexcepted Exception in the progressListener"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private d()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->f:J

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->a:Ljava/lang/String;

    return-object p0
.end method

.method protected finalize()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public isRepeatable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public loadOdometer()Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->loadOdometer()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v1, v0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    iput-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public persistOdometer(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    invoke-direct {v0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;-><init>(Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/WriteOdometer;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    :cond_1
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz p0, :cond_2

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->persistOdometer(Ljava/io/Serializable;)V

    :cond_2
    return-void
.end method

.method public declared-synchronized read([BJI)I
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->b:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->e:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p4, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;

    int-to-long v0, p1

    invoke-virtual {p4, p2, p3, v0, v1}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/ProgressCounter;->finish(JJ)V

    :cond_1
    int-to-long v0, p1

    add-long/2addr p2, v0

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->f:J

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_3
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->d()V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    :try_start_4
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->a()V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeOdometer()V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->c:Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/lenovo/leos/cloud/lcp/file/pilot2/mthread/BreakpointSupport;->removeOdometer()V

    :cond_0
    return-void
.end method

.method public setProgressListener(Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/pilot2/pipe/FileInputPipe;->g:Lcom/lenovo/leos/cloud/lcp/common/ProgressListener;

    return-void
.end method
