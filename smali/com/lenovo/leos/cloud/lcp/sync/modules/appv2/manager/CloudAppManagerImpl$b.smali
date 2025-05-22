.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->K(Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onVisitPkname(FLjava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->fromJson(Lorg/json/JSONObject;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->tryToLoad(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;->getCloudPKMD5()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->getPKMD5()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {v0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->o(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/CloudAppInfo;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NEW_VERSION:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$b;->a:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CloudAppManagerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
