.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    add-int/lit8 v3, p0, 0x1

    int-to-float v3, v3

    mul-float/2addr v3, v2

    int-to-float v2, v0

    div-float/2addr v3, v2

    invoke-interface {p2, v3, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;->onVisitPkname(FLjava/lang/String;)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private b(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 5

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dbt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit8 p0, p0, 0x1

    int-to-float v4, p0

    mul-float/2addr v4, v3

    int-to-float v3, v0

    div-float/2addr v4, v3

    invoke-interface {p2, v4, v2, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;->onVisitBackuped(FLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    :goto_0
    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "pn"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "vc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "pk"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "dir"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "exclude"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/high16 v1, 0x3f800000    # 1.0f

    add-int/lit8 p0, p0, 0x1

    int-to-float v2, p0

    mul-float/2addr v2, v1

    int-to-float v1, v0

    div-float v4, v2, v1

    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;->onVisitDataDir(FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public traverseAppBackuped(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "backuped"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->b(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseAppDataDir(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "datadir"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->c(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseAppExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "exist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseAppNotExist(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "not_exist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseRecommendList(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "recommendlist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseResotoreAppDataList(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "datalist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method

.method public traverseRestoreAppList(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AbsResultJson;->root:Lorg/json/JSONObject;

    const-string v1, "applist"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;->a(Lorg/json/JSONArray;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse$Visitor;)V

    return-void
.end method
