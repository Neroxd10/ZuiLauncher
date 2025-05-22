.class public Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;
.source ""


# static fields
.field public static final PKG_NAME:Ljava/lang/String; = "com.lenovo.supernote"

.field public static final URL:Ljava/lang/String; = "http://susapi.lenovomm.com/adpserver/GetVIByAKSimpFPC?AppKey=7OLMYQUBIJMW&ChannelKey=app_lenovopim"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;-><init>(Ljava/lang/String;)V

    const-string p1, "RES"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->a:Ljava/lang/String;

    const-string p1, "SUCCESS"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->b:Ljava/lang/String;

    const-string p1, "Size"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->c:Ljava/lang/String;

    const-string p1, "DownloadURL"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->d:Ljava/lang/String;

    const-string p1, "VerCode"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->e:Ljava/lang/String;

    const-string p1, "VerName"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->f:Ljava/lang/String;

    const-string p1, "FileName"

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDownApkFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->g:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".apk"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRecommendApp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;
    .locals 4

    :try_start_0
    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    invoke-direct {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;-><init>()V

    invoke-virtual {v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setPackageName(Ljava/lang/String;)V

    new-instance v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;

    invoke-direct {v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;-><init>()V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setUrl(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setVersionCode(I)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setVersionName(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->c:Ljava/lang/String;

    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;->setSize(J)V

    invoke-virtual {v0, v1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->setVersion(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/Version;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":getRecommendApp fail!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/common/util/LogUtil;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isResultSuccess()Z
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/LeNoteResultJson;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method
