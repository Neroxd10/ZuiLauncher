.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->checkLoginThenDo(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
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

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;->b:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$b;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    invoke-virtual {v0, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->i(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V

    return-void
.end method
