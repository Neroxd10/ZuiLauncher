.class Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/lenovo/lsf/lenovoid/OnAuthenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;


# direct methods
.method constructor <init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;

    return-void
.end method

.method public static a(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)Lcom/lenovo/lsf/lenovoid/OnAuthenListener;
    .locals 1

    if-eqz p0, :cond_0

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;

    invoke-direct {v0, p0}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;-><init>(Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onFinished(ZLjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LsfServiceMini$d;->a:Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/lenovo/leos/cloud/lcp/common/util/lsf/LenovoPsService$LsfOnAuthenListener;->onFinished(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
