.class Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/lsf/lenovoid/OnUkiInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;->getUkiInfo(Landroid/content/Context;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;)V
    .locals 0

    iput-object p2, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$c;->a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/lenovo/lsf/lenovoid/UkiInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$c;->a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$Callback;->callback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
