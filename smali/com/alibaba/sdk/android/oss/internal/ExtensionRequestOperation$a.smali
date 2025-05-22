.class Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

.field private b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

.field private d:Ljava/lang/String;

.field private e:Ljava/io/File;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/sdk/android/oss/model/PartETag;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private h:J

.field final synthetic i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;


# direct methods
.method public constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;",
            "Lcom/alibaba/sdk/android/oss/network/ExecutionContext;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f:Ljava/util/List;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->c:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    return-void
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->a(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->waitUntilFinished()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    return-object p0
.end method

.method static synthetic c(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    return-wide v0
.end method

.method private f()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 14

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->c:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h()V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    iget-object v6, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v6}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getProgressCallback()Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    move-result-object v6

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    div-long v9, v7, v2

    long-to-int v9, v9

    rem-long/2addr v7, v2

    const-wide/16 v10, 0x0

    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    const/4 v4, 0x0

    :cond_2
    add-int/2addr v9, v4

    if-gt v0, v9, :cond_3

    add-int/lit8 v4, v0, -0x1

    int-to-long v7, v4

    mul-long/2addr v7, v2

    goto :goto_0

    :cond_3
    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    :goto_0
    iput-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :goto_1
    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    cmp-long v5, v10, v7

    if-gez v5, :cond_5

    sub-long/2addr v7, v10

    invoke-virtual {v4, v7, v8}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v7

    const-wide/16 v12, -0x1

    cmp-long v5, v7, v12

    if-eqz v5, :cond_4

    add-long/2addr v10, v7

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skip failed! [fileLength]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " [needSkip]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    if-gt v0, v9, :cond_7

    new-instance v5, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    iget-object v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v7}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v8}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v8

    iget-object v10, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-direct {v5, v7, v8, v10, v0}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v7, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;

    invoke-direct {v7, p0, v6}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;-><init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    invoke-virtual {v5, v7}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setProgressCallback(Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V

    iget-wide v7, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g:J

    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    sub-long/2addr v7, v10

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    long-to-int v7, v7

    invoke-static {v4, v7}, Lcom/alibaba/sdk/android/oss/common/utils/IOUtils;->readStreamAsBytesArray(Ljava/io/InputStream;I)[B

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setPartContent([B)V

    invoke-static {v8}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateBase64Md5([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;->setMd5Digest(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v8}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->a(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v8

    invoke-virtual {v8, v5, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v5

    check-cast v5, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    iget-object v8, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f:Ljava/util/List;

    new-instance v10, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;->getETag()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v0, v5}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    int-to-long v7, v7

    add-long/2addr v10, v7

    iput-wide v10, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h:J

    add-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->c:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/ExecutionContext;->getCancellationHandler()Lcom/alibaba/sdk/android/oss/network/CancellationHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/sdk/android/oss/network/CancellationHandler;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->deleteUploadOnCancelling()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a()V

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->h()V

    throw v1

    :cond_7
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setMetadata(Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackParam()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackParam(Ljava/util/Map;)V

    :cond_8
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v2}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getCallbackVars()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;->setCallbackVars(Ljava/util/Map;)V

    :cond_9
    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->a(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_a
    new-instance p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;-><init>(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;)V

    return-object p0
.end method

.method private g()V
    .locals 6

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getUploadFilePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getPartSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/utils/BinaryUtil;->calculateMd5Str([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getRecordDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[initUploadId] - Found record file, uploadid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sdk/android/oss/common/OSSLog;->logD(Ljava/lang/String;)V

    new-instance v0, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->a(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;->getParts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/oss/model/PartSummary;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f:Ljava/util/List;

    new-instance v4, Lcom/alibaba/sdk/android/oss/model/PartETag;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getPartNumber()I

    move-result v5

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/PartSummary;->getETag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v5, v1}, Lcom/alibaba/sdk/android/oss/model/PartETag;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    throw p0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/ServiceException;->getStatusCode()I

    move-result v1

    const/16 v3, 0x194

    if-ne v1, v3, :cond_1

    iput-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    goto :goto_1

    :cond_1
    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create file at path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\nPlease make sure the directory exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    new-instance v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getBucketName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v3}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-virtual {v4}, Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;->getMetadata()Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;

    move-result-object v4

    invoke-direct {v0, v1, v3, v4}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/model/ObjectMetadata;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->i:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-static {v1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->a(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;)Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;->getUploadId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    :cond_5
    return-void
.end method

.method private h()V
    .locals 2

    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v0, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->e()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object p0

    return-object p0
.end method

.method public e()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->g()V

    invoke-direct {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    iget-object v3, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onSuccess(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/model/OSSResult;)V
    :try_end_0
    .catch Lcom/alibaba/sdk/android/oss/ServiceException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/alibaba/sdk/android/oss/ClientException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/alibaba/sdk/android/oss/ClientException;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/sdk/android/oss/ClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v1, p0, v2, v0}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_1
    throw v2

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v2, p0, v1, v0}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_2
    throw v1

    :catch_2
    move-exception v1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b:Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->a:Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    invoke-interface {v2, p0, v0, v1}, Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;->onFailure(Lcom/alibaba/sdk/android/oss/model/OSSRequest;Lcom/alibaba/sdk/android/oss/ClientException;Lcom/alibaba/sdk/android/oss/ServiceException;)V

    :cond_3
    throw v1
.end method
