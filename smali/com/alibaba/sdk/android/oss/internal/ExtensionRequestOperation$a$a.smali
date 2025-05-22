.class Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->f()Lcom/alibaba/sdk/android/oss/model/ResumableUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

.field final synthetic b:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->b:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->a:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;JJ)V
    .locals 2

    iget-object p1, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->a:Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;

    if-eqz p1, :cond_0

    iget-object p4, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->b:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;

    invoke-static {p4}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->b(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)Lcom/alibaba/sdk/android/oss/model/ResumableUploadRequest;

    move-result-object p4

    iget-object p5, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->b:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;

    invoke-static {p5}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->c(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)J

    move-result-wide v0

    add-long/2addr p2, v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->b:Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;

    invoke-static {p0}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;->d(Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a;)J

    move-result-wide v0

    move-object p0, p1

    move-object p1, p4

    move-wide p4, v0

    invoke-interface/range {p0 .. p5}, Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;->onProgress(Ljava/lang/Object;JJ)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/alibaba/sdk/android/oss/internal/ExtensionRequestOperation$a$a;->a(Lcom/alibaba/sdk/android/oss/model/UploadPartRequest;JJ)V

    return-void
.end method
