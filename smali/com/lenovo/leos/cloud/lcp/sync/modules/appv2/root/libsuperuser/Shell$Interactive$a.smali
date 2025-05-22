.class Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;-><init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

.field final synthetic c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommandResult(IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    invoke-static {p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->a(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "su"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p3, p1}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p2, -0x4

    :cond_0
    iget-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->c:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->a:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;->h(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Builder;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;->b(Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive;I)I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$Interactive$a;->b:Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;

    const/4 p1, 0x0

    invoke-interface {p0, p1, p2, p3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/appv2/root/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V

    return-void
.end method
