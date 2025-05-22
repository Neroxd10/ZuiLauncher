.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;
.super Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->t(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/cloud/protocol/AppChecksumResponse;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->b:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$g;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;)V

    return-void
.end method


# virtual methods
.method public onVisitDataDir(FLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/utils/AppUtil;->validateDir(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {v0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-interface {p1, p2, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->b:Ljava/util/Map;

    iget-object p5, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {p5, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    invoke-interface {p1, p2, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p1, "com.tencent.mm"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->b:Ljava/util/Map;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl$c;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;

    invoke-static {p0, p2, p3, p4}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;->q(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/manager/CloudAppManagerImpl;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    const-string p0, "tencent/micromsg/*/sns"

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
