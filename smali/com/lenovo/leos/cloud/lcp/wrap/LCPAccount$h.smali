.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->c(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$h;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->a(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    return-void
.end method
