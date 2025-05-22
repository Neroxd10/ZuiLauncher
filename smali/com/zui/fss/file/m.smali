.class Lcom/zui/fss/file/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/file/FssPermission$a;


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

.field final synthetic c:Lcom/zui/fss/file/c;

.field final synthetic d:Z

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/zui/fss/file/a;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Ljava/io/File;Lcom/zui/fss/api/IFssApi$ProgressCallback;Lcom/zui/fss/file/c;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/fss/file/m;->f:Lcom/zui/fss/file/a;

    iput-object p2, p0, Lcom/zui/fss/file/m;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/zui/fss/file/m;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iput-object p4, p0, Lcom/zui/fss/file/m;->c:Lcom/zui/fss/file/c;

    iput-boolean p5, p0, Lcom/zui/fss/file/m;->d:Z

    iput-object p6, p0, Lcom/zui/fss/file/m;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/zui/fss/api/FileMeta;)V
    .locals 9

    const-string p2, "status"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFile permission onResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/fss/file/m;->f:Lcom/zui/fss/file/a;

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

    iget-object v0, p0, Lcom/zui/fss/file/m;->f:Lcom/zui/fss/file/a;

    iget-object p1, p0, Lcom/zui/fss/file/m;->a:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/fss/file/m;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p1, p0, Lcom/zui/fss/file/m;->c:Lcom/zui/fss/file/c;

    invoke-virtual {p1}, Lcom/zui/fss/file/c;->a()Ljava/lang/String;

    move-result-object v4

    iget-boolean v8, p0, Lcom/zui/fss/file/m;->d:Z

    invoke-static/range {v0 .. v8}, Lcom/zui/fss/file/a;->f(Lcom/zui/fss/file/a;Lcom/alibaba/sdk/android/oss/OSSClient;Ljava/lang/String;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/fss/file/m;->c:Lcom/zui/fss/file/c;

    invoke-virtual {p0, p1}, Lcom/zui/fss/file/c;->b(Lcom/alibaba/sdk/android/oss/internal/OSSAsyncTask;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x4e23

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "msg"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/fss/file/m;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/m;->e:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-interface {p2, p0, v0, p1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/zui/fss/file/m;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/m;->e:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uploadFile permission error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/fss/file/m;->b:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/m;->e:Ljava/lang/String;

    invoke-interface {v0, p0, p1, p2}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
