.class public Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;
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
.field private a:Ljava/lang/String;

.field private b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private c:Ljava/io/InputStream;

.field private d:Ljava/lang/String;

.field private e:J

.field private f:[B

.field private g:Ljava/io/ByteArrayInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->c:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a(Ljava/io/InputStream;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "is parameter can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;Ljava/lang/String;J)V

    iput-object p5, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;JZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->d:Ljava/lang/String;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->c:Ljava/io/InputStream;

    iput-wide p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    if-eqz p5, :cond_0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a(Ljava/io/InputStream;)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "is parameter can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->d:Ljava/lang/String;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    array-length p2, p1

    int-to-long v0, p2

    :goto_0
    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;-><init>([BLjava/lang/String;)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/io/InputStream;)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private b()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/Closeable;

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->g:Ljava/io/ByteArrayInputStream;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->g:Ljava/io/ByteArrayInputStream;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    invoke-direct {p0}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->b()V

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getData([BJ)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    monitor-exit p0

    return p1

    :cond_0
    :try_start_1
    array-length v0, p1

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    array-length v1, v1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    array-length v3, p1

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    array-length v0, v0

    long-to-int v1, p2

    sub-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-static {v1, p2, p1, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    return-object p0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->c:Ljava/io/InputStream;

    return-object p0
.end method

.method public getMetaInfo()Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-object p0
.end method

.method public length()J
    .locals 4

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->f:[B

    if-eqz v0, :cond_1

    array-length v0, v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    :cond_1
    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->e:J

    return-wide v0
.end method

.method public loadBytes()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->c:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a(Ljava/io/InputStream;)V

    return-void
.end method

.method public name()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->d:Ljava/lang/String;

    return-object p0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->a:Ljava/lang/String;

    return-void
.end method

.method public setInputStream(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->c:Ljava/io/InputStream;

    return-void
.end method

.method public setMetaInfo(Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/file/entity/InputStreamEntity;->b:Lcom/lenovo/leos/cloud/lcp/file/entity/MetaInfo;

    return-void
.end method
