.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStData onFinished, getStData ok = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LCPAccount"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$c;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v0, p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->d(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ZLjava/lang/String;)V

    return-void
.end method
