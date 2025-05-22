.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->i(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

.field final synthetic b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getLastErrorString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$e;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    return-void
.end method
