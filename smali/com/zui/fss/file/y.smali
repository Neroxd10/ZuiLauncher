.class Lcom/zui/fss/file/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/fss/file/FssPermission$a;

.field final synthetic b:Lcom/zui/fss/api/FileMeta;


# direct methods
.method constructor <init>(Lcom/zui/fss/file/FssPermission;Lcom/zui/fss/file/FssPermission$a;Lcom/zui/fss/api/FileMeta;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/fss/file/y;->a:Lcom/zui/fss/file/FssPermission$a;

    iput-object p3, p0, Lcom/zui/fss/file/y;->b:Lcom/zui/fss/api/FileMeta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/fss/file/y;->a:Lcom/zui/fss/file/FssPermission$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lcom/zui/fss/file/y;->a:Lcom/zui/fss/file/FssPermission$a;

    iget-object p0, p0, Lcom/zui/fss/file/y;->b:Lcom/zui/fss/api/FileMeta;

    invoke-interface {p1, v1, p0}, Lcom/zui/fss/file/FssPermission$a;->a(Lorg/json/JSONObject;Lcom/zui/fss/api/FileMeta;)V

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "response error, is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "FssPermission"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/fss/file/y;->a:Lcom/zui/fss/file/FssPermission$a;

    const-string p1, "parse error"

    invoke-interface {p0, v0, p1}, Lcom/zui/fss/file/FssPermission$a;->onError(ILjava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zui/fss/file/y;->a:Lcom/zui/fss/file/FssPermission$a;

    const-string p1, "server error, please try it later"

    invoke-interface {p0, v0, p1}, Lcom/zui/fss/file/FssPermission$a;->onError(ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/fss/file/y;->a(Ljava/lang/String;)V

    return-void
.end method
