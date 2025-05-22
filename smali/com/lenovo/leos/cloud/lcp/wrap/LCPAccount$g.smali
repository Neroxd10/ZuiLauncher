.class Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;->e(ILjava/lang/String;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount;Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;ILjava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iput p3, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->b:I

    iput-object p4, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->a:Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;

    iget v1, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->b:I

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$g;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LCPAccount$Callback;->onFail(ILjava/lang/String;)V

    return-void
.end method
