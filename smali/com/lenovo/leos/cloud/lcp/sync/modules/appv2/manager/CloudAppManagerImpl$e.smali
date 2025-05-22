.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->A(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->c:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onVisitPkname(FLjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->n(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/LocalAppUtils;->getAppInfoFromCache(Landroid/content/Context;Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;->isSystemApp()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->a:Ljava/util/Map;

    invoke-static {p2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->r(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->d:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->b:Ljava/util/Map;

    invoke-static {p2, v0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->s(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/util/Map;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/LocalAppInfo;)V

    sget-object p2, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-virtual {p1, p2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppInfo;->setAppStatus(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;)V

    iget-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->c:Ljava/util/Map;

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$e;->c:Ljava/util/Map;

    sget-object p1, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;->NOT_EXISTS:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/model/AppStatus;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method
