.class public abstract Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected root:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/recommend/RecommendResultJson;->root:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unexcepted JSONException occured"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public abstract getDownApkFileName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRecommendApp(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;
.end method

.method public abstract isResultSuccess()Z
.end method
