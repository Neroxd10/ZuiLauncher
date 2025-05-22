.class Lcom/zui/fss/file/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
        "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zui/fss/api/IFssApi$ProgressCallback;

.field final synthetic f:Lcom/zui/fss/file/a;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    iput-object p2, p0, Lcom/zui/fss/file/l;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/fss/file/l;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/zui/fss/file/l;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/zui/fss/file/l;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/zui/fss/file/l;->e:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/oss/ClientException;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ErrorCode "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fss"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RequestId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HostId "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getHostId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RawMessage "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/oss/ServiceException;->getRawMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p2, p0, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    invoke-static {p2}, Lcom/zui/fss/file/a;->j(Lcom/zui/fss/file/a;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/fss/file/l;->c:Ljava/lang/String;

    new-instance v0, Lcom/zui/fss/file/k;

    invoke-direct {v0, p0, p1}, Lcom/zui/fss/file/k;-><init>(Lcom/zui/fss/file/l;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-virtual {p2, p3, p0, p1, v0}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)V

    return-void
.end method

.method public b(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "error"

    const-string v3, "Fss"

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getObjectContent()Ljava/io/InputStream;

    move-result-object v4

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v0, Ljava/io/File;

    iget-object v6, v1, Lcom/zui/fss/file/l;->a:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v0, 0x800

    new-array v0, v0, [B

    const-wide/16 v6, 0x0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {v5, v0, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v8, v8

    add-long/2addr v6, v8

    iget-object v8, v1, Lcom/zui/fss/file/l;->e:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    if-eqz v8, :cond_0

    iget-object v8, v1, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    iget-object v9, v1, Lcom/zui/fss/file/l;->d:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/zui/fss/file/a;->l(Lcom/zui/fss/file/a;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v10, v1, Lcom/zui/fss/file/l;->e:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object v11, v1, Lcom/zui/fss/file/l;->b:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v14

    move-wide v12, v6

    invoke-interface/range {v10 .. v15}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onProgress(Ljava/lang/String;JJ)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download success "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;->getContentLength()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Lcom/zui/fss/file/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " download onSuccess"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    invoke-static {v0}, Lcom/zui/fss/file/a;->j(Lcom/zui/fss/file/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v0

    iget-object v2, v1, Lcom/zui/fss/file/l;->c:Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Lcom/zui/fss/file/j;

    invoke-direct {v4, v1}, Lcom/zui/fss/file/j;-><init>(Lcom/zui/fss/file/l;)V

    const-string v1, "success"

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)V

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    invoke-static {v0}, Lcom/zui/fss/file/a;->j(Lcom/zui/fss/file/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v0

    iget-object v3, v1, Lcom/zui/fss/file/l;->c:Ljava/lang/String;

    const-string v6, "download exception"

    new-instance v7, Lcom/zui/fss/file/i;

    invoke-direct {v7, v1}, Lcom/zui/fss/file/i;-><init>(Lcom/zui/fss/file/l;)V

    invoke-virtual {v0, v3, v2, v6, v7}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void

    :goto_3
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v1

    :catch_4
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/zui/fss/file/l;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " exception FileNotFoundException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-object v0, v1, Lcom/zui/fss/file/l;->f:Lcom/zui/fss/file/a;

    invoke-static {v0}, Lcom/zui/fss/file/a;->j(Lcom/zui/fss/file/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/fss/file/FssPermission;->a(Landroid/content/Context;)Lcom/zui/fss/file/FssPermission;

    move-result-object v0

    iget-object v3, v1, Lcom/zui/fss/file/l;->c:Ljava/lang/String;

    new-instance v4, Lcom/zui/fss/file/h;

    invoke-direct {v4, v1}, Lcom/zui/fss/file/h;-><init>(Lcom/zui/fss/file/l;)V

    const-string v1, "file not found exception"

    invoke-virtual {v0, v3, v2, v1, v4}, Lcom/zui/fss/file/FssPermission;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/fss/file/FssPermission$a;)V

    return-void
.end method

.method public bridge synthetic onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/fss/file/l;->a(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;

    check-cast p2, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    invoke-virtual {p0, p1, p2}, Lcom/zui/fss/file/l;->b(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/model/GetObjectResult;)V

    return-void
.end method
