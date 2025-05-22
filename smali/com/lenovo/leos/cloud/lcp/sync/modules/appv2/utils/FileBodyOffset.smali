.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;
.super Lorg/apache/http/entity/mime/content/FileBody;
.source ""


# static fields
.field public static final BUFFER_SIZE:I = 0x2000


# instance fields
.field private a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

.field private b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/FileUploadProgressListener;

.field private c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/octet-stream"

    invoke-direct {p0, p2, v0, v1, p3}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    iput-wide p6, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    iput-wide p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->d:J

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    add-long/2addr p4, v0

    sub-long/2addr p1, p4

    invoke-static {p6, p7, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    return-void
.end method

.method public constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p4}, Lorg/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    iput-wide p7, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    iput-wide p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->d:J

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide p1

    const-wide/16 p3, 0x1

    add-long/2addr p5, p3

    sub-long/2addr p1, p5

    invoke-static {p7, p8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    int-to-long p1, p1

    iput-wide p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    return-void
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->getFile()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public setListener(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/FileUploadProgressListener;Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/FileUploadProgressListener;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    return-void
.end method

.method protected updateProgress(J)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/FileUploadProgressListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/task/FileUploadProgressListener;->onUpload(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;JZ)V

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 12

    if-eqz p1, :cond_4

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J

    iget-wide v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    const/16 v3, 0x2000

    new-array v3, v3, [B

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;

    invoke-interface {v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/Task;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;

    invoke-direct {p1}, Lcom/lenovo/leos/cloud/lcp/common/exception/UserCancelException;-><init>()V

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_1
    int-to-long v5, v4

    cmp-long v7, v1, v5

    const/4 v8, 0x0

    if-lez v7, :cond_2

    sub-long/2addr v1, v5

    invoke-virtual {p1, v3, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->updateProgress(J)V

    goto :goto_0

    :cond_2
    const-string v7, "File"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, 0x1

    add-long/2addr v10, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v3, v8, v4}, Ljava/io/OutputStream;->write([BII)V

    sub-long/2addr v1, v5

    iget-wide v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->e:J

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/FileBodyOffset;->updateProgress(J)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Output stream may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
