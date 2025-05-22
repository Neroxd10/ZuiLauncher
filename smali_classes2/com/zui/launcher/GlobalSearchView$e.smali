.class Lcom/zui/launcher/GlobalSearchView$e;
.super Lcom/zui/launcher/networksdk/ResultCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/GlobalSearchView;->registerClientId(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/networksdk/ResultCallback<",
        "Lcom/zui/launcher/networkbean/StarAppsClientIdInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Z

.field final synthetic c:Lcom/zui/launcher/GlobalSearchView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/GlobalSearchView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/GlobalSearchView$e;->c:Lcom/zui/launcher/GlobalSearchView;

    iput-boolean p2, p0, Lcom/zui/launcher/GlobalSearchView$e;->b:Z

    invoke-direct {p0}, Lcom/zui/launcher/networksdk/ResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/zui/launcher/networkbean/StarAppsClientIdInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/networkbean/StarAppsClientIdInfo;->getClientid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->s(Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerClientId onResponse  mClientId -->  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/zui/launcher/GlobalSearchView;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GlobalSearch"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$e;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->t(Lcom/zui/launcher/GlobalSearchView;)V

    iget-boolean p1, p0, Lcom/zui/launcher/GlobalSearchView$e;->b:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$e;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/GlobalSearchView$e;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-static {p1}, Lcom/zui/launcher/GlobalSearchView;->u(Lcom/zui/launcher/GlobalSearchView;)Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/GlobalSearchView$e;->c:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Lcom/zui/launcher/GlobalSearchView;->getKeyKeyword()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/GlobalSearchView;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v0, v1}, Lcom/zui/launcher/globalsearch/QuicksAppDownLoad;->downLoadQuicksApp(Lcom/zui/launcher/GlobalSearchView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onError(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "clientid onError --> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GlobalSearch"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/networkbean/StarAppsClientIdInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/GlobalSearchView$e;->b(Lcom/zui/launcher/networkbean/StarAppsClientIdInfo;)V

    return-void
.end method
