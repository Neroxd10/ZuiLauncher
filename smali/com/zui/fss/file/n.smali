.class Lcom/zui/fss/file/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/file/FssPermission$a;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

.field final synthetic c:Lcom/zui/fss/file/c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/zui/fss/file/a;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Lcom/zui/fss/file/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/n;->e:Lcom/zui/fss/file/a;

    iput-object p2, p0, Lcom/zui/fss/file/n;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/zui/fss/file/n;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iput-object p4, p0, Lcom/zui/fss/file/n;->c:Lcom/zui/fss/file/c;

    iput-object p5, p0, Lcom/zui/fss/file/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/zui/fss/api/FileMeta;)V
    .locals 8

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downloadFile permission onResult "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Fss"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string p2, "status"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/fss/file/n;->e:Lcom/zui/fss/file/a;

    invoke-static {p2, p1}, Lcom/zui/fss/file/a;->a(Lcom/zui/fss/file/a;Lorg/json/JSONObject;)Lcom/alibaba/sdk/android/oss/OSSClient;

    move-result-object v1

    const-string p2, "reqId"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p2, "bucketName"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "objectKey"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/zui/fss/file/n;->e:Lcom/zui/fss/file/a;

    iget-object v2, p0, Lcom/zui/fss/file/n;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/zui/fss/file/n;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p1, p0, Lcom/zui/fss/file/n;->c:Lcom/zui/fss/file/c;

    invoke-virtual {p1}, Lcom/zui/fss/file/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static/range {v0 .. v7}, Lcom/zui/fss/file/a;->e(Lcom/zui/fss/file/a;Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/fss/file/n;->c:Lcom/zui/fss/file/c;

    invoke-virtual {p0, p1}, Lcom/zui/fss/file/c;->b(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    goto :goto_0

    :cond_0
    const-string p2, "msg"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/fss/file/n;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/n;->d:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-interface {p2, p0, v0, p1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloadFile permission onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/fss/file/n;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/n;->d:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
