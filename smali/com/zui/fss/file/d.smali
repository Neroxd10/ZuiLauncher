.class Lcom/zui/fss/file/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/sdk/android/oss/callback/OSSProgressCallback<",
        "Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/fss/api/IFssApi$ProgressCallback;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ProgressCallback;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/fss/file/d;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/zui/fss/file/d;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;->getObjectKey()Ljava/lang/String;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onProgress(Ljava/lang/String;JJ)V

    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;JJ)V
    .locals 0

    check-cast p1, Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;

    invoke-virtual/range {p0 .. p5}, Lcom/zui/fss/file/d;->a(Lcom/alibaba/sdk/android/oss/model/PutObjectRequest;JJ)V

    return-void
.end method
