.class public Lcom/alibaba/sdk/android/oss/OSSClient;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/oss/OSS;


# instance fields
.field private a:Ljava/net/URI;

.field private b:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

.field private c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

.field private d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

.field private e:Lcom/alibaba/sdk/android/oss/ClientConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sdk/android/oss/OSSClient;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->a:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p3, :cond_2

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->b:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    if-nez p4, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/oss/ClientConfiguration;->getDefaultConf()Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->e:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    new-instance p2, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    iget-object p4, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->a:Ljava/net/URI;

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->e:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {p2, p1, p4, p3, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;-><init>(Landroid/content/Context;Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    new-instance p1, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    iget-object p2, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-direct {p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;-><init>(Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "CredentialProvider can\'t be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Endpoint must be a string like \'http://oss-cn-****.aliyuncs.com\',or your cname like \'http://image.cnamedomain.com\'!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;

    return-object p0
.end method

.method public abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->abortResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)V

    return-void
.end method

.method public appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;)Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;

    return-object p0
.end method

.method public asyncAbortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->abortMultipartUpload(Lcom/alibaba/sdk/android/oss/model/AbortMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncAppendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/AppendObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->appendObject(Lcom/alibaba/sdk/android/oss/model/AppendObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncCompleteMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncCopyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncCreateBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncDeleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncDeleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncGetBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncGetObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/GetObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncHeadObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncInitMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncListObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncListParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ListPartsResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncPutObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/PutObjectResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncResumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public asyncUploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;)",
            "Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask<",
            "Lcom/alibaba/sdk/android/oss/model/UploadPartResult;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    return-object p0
.end method

.method public completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->completeMultipartUpload(Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/CompleteMultipartUploadResult;

    return-object p0
.end method

.method public copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;)Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->copyObject(Lcom/alibaba/sdk/android/oss/model/CopyObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/CopyObjectResult;

    return-object p0
.end method

.method public createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;)Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->createBucket(Lcom/alibaba/sdk/android/oss/model/CreateBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/CreateBucketResult;

    return-object p0
.end method

.method public deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteBucket(Lcom/alibaba/sdk/android/oss/model/DeleteBucketRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/DeleteBucketResult;

    return-object p0
.end method

.method public deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;)Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->deleteObject(Lcom/alibaba/sdk/android/oss/model/DeleteObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/DeleteObjectResult;

    return-object p0
.end method

.method public doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->doesObjectExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;)Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getBucketACL(Lcom/alibaba/sdk/android/oss/model/GetBucketACLRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/GetBucketACLResult;

    return-object p0
.end method

.method public getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;)Lcom/alibaba/sdk/android/oss/model/GetObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->getObject(Lcom/alibaba/sdk/android/oss/model/GetObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/GetObjectResult;

    return-object p0
.end method

.method public headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;)Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->headObject(Lcom/alibaba/sdk/android/oss/model/HeadObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/HeadObjectResult;

    return-object p0
.end method

.method public initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;)Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->initMultipartUpload(Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/InitiateMultipartUploadResult;

    return-object p0
.end method

.method public listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;)Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listObjects(Lcom/alibaba/sdk/android/oss/model/ListObjectsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/ListObjectsResult;

    return-object p0
.end method

.method public listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;)Lcom/alibaba/sdk/android/oss/model/ListPartsResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->listParts(Lcom/alibaba/sdk/android/oss/model/ListPartsRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/ListPartsResult;

    return-object p0
.end method

.method public presignConstrainedObjectURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->b:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->e:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;-><init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignConstrainedURL(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public presignPublicObjectURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;

    iget-object v1, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->b:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->e:Lcom/alibaba/sdk/android/oss/ClientConfiguration;

    invoke-direct {v0, v1, v2, p0}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;-><init>(Ljava/net/URI;Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;Lcom/alibaba/sdk/android/oss/ClientConfiguration;)V

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/sdk/android/oss/internal/ObjectURLPresigner;->presignPublicURL(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;)Lcom/alibaba/sdk/android/oss/model/PutObjectResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->putObject(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/PutObjectResult;

    return-object p0
.end method

.method public resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->d:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation;->resumableUpload(Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;

    return-object p0
.end method

.method public updateCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->b:Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->setCredentialProvider(Lcom/alibaba/sdk/android/oss/common/auth/OSSCredentialProvider;)V

    return-void
.end method

.method public uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;)Lcom/alibaba/sdk/android/oss/model/UploadPartResult;
    .locals 1

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/OSSClient;->c:Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sdk/android/oss/internal/InternalRequestOperation;->uploadPart(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;Lcom/alibaba/sdk/android/oss/callback/OSSCompletedCallback;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;->getResult()Lcom/alibaba/sdk/android/oss/model/OSSResult;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/model/UploadPartResult;

    return-object p0
.end method
