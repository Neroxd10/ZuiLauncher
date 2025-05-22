.class public Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/file/entity/Entity;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/lenovo/leos/cloud/lcp/file/entity/Entity<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/lang/String;

.field private c:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "File parameter can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->c:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->c:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->b:Ljava/lang/String;

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->b:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getData([BJ)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->d:Ljava/io/RandomAccessFile;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    int-to-long v0, p1

    add-long/2addr p2, v0

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-nez p2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFile()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    return-object p0
.end method

.method public getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->c:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-object p0
.end method

.method public length()J
    .locals 2

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->a:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->b:Ljava/lang/String;

    return-void
.end method

.method public setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/FileEntity;->c:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-void
.end method
