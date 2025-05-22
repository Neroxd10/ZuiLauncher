.class public final Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final RID:Ljava/lang/String; = "contact.cloud.lps.lenovo.com"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTicket()Ljava/lang/String;
    .locals 1

    const-string v0, "contact.cloud.lps.lenovo.com"

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/common/util/LSFUtil;->getServiceTicket(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServiceTicket(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getCachedST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getUserName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/LsfWrapper;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
