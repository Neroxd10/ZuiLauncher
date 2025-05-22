.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RESULT_ERROR_UNAUTHENTICATION:I = 0x5

.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_INSTALLING:I = 0x3

.field public static final RESULT_INSTALL_ERROR:I = 0x6

.field public static final RESULT_INSTALL_FINISH:I = 0x4

.field public static final RESULT_NONE_ENOUGH_SPACE:I = 0x2

.field public static final RESULT_SUCCESS:I


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field public upIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->upIcon:Z

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->a:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->b:I

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->c:I

    return-void
.end method

.method public static getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method public static getLong(Lorg/json/JSONObject;Ljava/lang/String;J)J
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method public static getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method public static isSuccessful(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getResult()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->c:I

    return p0
.end method

.method public getError()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->d:Ljava/lang/String;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->a:I

    return p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->b:I

    return p0
.end method

.method public parse(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;
    .locals 2

    const-string v0, "result"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->b:I

    const-string v0, "error"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->d:Ljava/lang/String;

    const-string v0, "remain_offset"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->a:I

    const-string v0, "count"

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->c:I

    const-string v0, "up_icon"

    invoke-static {p1, v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->getBoolean(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->upIcon:Z

    return-object p0
.end method

.method public setCount(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->c:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->d:Ljava/lang/String;

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->a:I

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/HttpResult;->b:I

    return-void
.end method
