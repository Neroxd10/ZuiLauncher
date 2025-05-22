.class Lcom/zui/fss/file/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/fss/file/FssPermission$a;


# instance fields
.field final synthetic a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/a;Lcom/zui/fss/api/IFssApi$ProgressCallback;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/fss/file/t;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iput-object p3, p0, Lcom/zui/fss/file/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lcom/zui/fss/api/FileMeta;)V
    .locals 2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMeta onResult "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Fss"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object p2, p0, Lcom/zui/fss/file/t;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    if-eqz p2, :cond_1

    const-string p2, "status"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Lcom/zui/fss/file/b;

    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "userMeta"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/zui/fss/file/b;-><init>(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lcom/zui/fss/file/t;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    iget-object p0, p0, Lcom/zui/fss/file/t;->b:Ljava/lang/String;

    invoke-interface {p1, p0, p2}, Lcom/zui/fss/api/IFssApi$ProgressCallback;->onSuccess(Ljava/lang/String;Lcom/zui/fss/api/FileMeta;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/fss/file/t;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    const/4 p2, 0x0

    const/4 v0, -0x1

    const-string v1, "msg"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p2, v0, p1}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMeta onError "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Fss"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/fss/file/t;->a:Lcom/zui/fss/api/IFssApi$ProgressCallback;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Lcom/zui/fss/api/IFssApi$ErrorCallback;->onError(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
