.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->f(Ljava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$f;->b:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method
