.class public final Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DFT_CHARSET:Ljava/lang/String; = "utf-8"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs asynchronousClose([Ljava/io/Closeable;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$a;

    invoke-direct {v1, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil$a;-><init>([Ljava/io/Closeable;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static varargs close([Ljava/io/Closeable;)V
    .locals 5

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "IOUTil"

    const-string v4, "Close failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;IJZ)J
    .locals 7

    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_2

    int-to-long v5, v4

    add-long/2addr v2, v5

    cmp-long v5, v2, p3

    if-lez v5, :cond_1

    cmp-long v5, p3, v0

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Inputstream is more than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " bytes"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_1
    const/4 v5, 0x0

    invoke-virtual {p1, p2, v5, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_3
    return-wide v2

    :catchall_0
    move-exception p2

    if-eqz p5, :cond_4

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_4
    throw p2
.end method

.method public static copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)J
    .locals 4

    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-wide v0

    :catchall_0
    move-exception p2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_2
    throw p2
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)V
    .locals 6

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x800

    :try_start_0
    new-array v2, v1, [B

    if-le p2, v1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, p2

    :goto_0
    move v4, v0

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_3

    if-ge v4, p2, :cond_3

    invoke-virtual {p1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v3

    sub-int v3, p2, v4

    if-le v3, v1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, p3, [Ljava/io/Closeable;

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p0

    new-array p2, p3, [Ljava/io/Closeable;

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method public static fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V
    .locals 7

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x800

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v2, [B

    :goto_0
    invoke-virtual {p0, v4, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    invoke-virtual {p1, v4, v3, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p0, p2, v3

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    if-eqz p2, :cond_3

    new-array p2, v1, [Ljava/io/Closeable;

    aput-object p0, p2, v3

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :cond_3
    throw v2

    :cond_4
    :goto_1
    return-void
.end method

.method public static read(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc8

    new-array v1, v1, [C

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result p1

    const/4 v5, -0x1

    if-eq p1, v5, :cond_1

    invoke-virtual {v0, v1, v3, p1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_2
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p0, v0, v3

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p1
.end method

.method public static read(Ljava/io/Reader;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->read(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/io/Reader;Z)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/16 v0, 0x800

    new-array v0, v0, [C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v4

    :goto_0
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    invoke-virtual {v1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    new-array p1, v2, [Ljava/io/Closeable;

    aput-object p0, p1, v3

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    :cond_3
    throw v0
.end method

.method public static readBytes(Ljava/io/InputStream;)[B
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readBytes(Ljava/io/InputStream;IZ)[B
    .locals 1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->fromTo(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static readFully(Ljava/io/InputStream;JZ)[B
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x800

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v7

    move-wide v4, p1

    :try_start_1
    invoke-static/range {v1 .. v6}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;IJZ)J

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_0

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    move-object v0, v7

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    throw p1
.end method

.method public static readGzip(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readBytes(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/GzipUtil;->ungzip([B)[B

    move-result-object p0

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object v3

    :catchall_0
    move-exception p0

    new-array p1, v1, [Ljava/io/Closeable;

    aput-object v2, p1, v0

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p0
.end method

.method public static readText(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    const-string v0, "utf-8"

    invoke-static {p0, v0}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->readText(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static readText(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->read(Ljava/io/Reader;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    return-object p1

    :catchall_0
    move-exception p1

    new-array v1, v1, [Ljava/io/Closeable;

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->close([Ljava/io/Closeable;)V

    throw p1
.end method

.method public static write(Ljava/io/InputStream;Ljava/io/File;Z)J
    .locals 1

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x800

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/IOUtil;->copyBytes(Ljava/io/InputStream;Ljava/io/OutputStream;IZ)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_0
    return-wide p0

    :catchall_0
    move-exception p0

    if-nez p2, :cond_1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    :cond_1
    throw p0
.end method
