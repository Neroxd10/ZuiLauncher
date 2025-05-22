.class public final Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static APP:I

.field public static PHOTO:I

.field private static a:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/SparseBooleanArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseBooleanArray;-><init>(I)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->a:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    sput v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->APP:I

    sput v1, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->PHOTO:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 2

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    invoke-static {v0, p0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/Networks;->isConnectionFastByNetworkStrategy(II)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isConnection(Z)Z
    .locals 4

    if-eqz p0, :cond_0

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    :goto_0
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/wrap/ContextUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->a(Landroid/content/Context;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, v3, :cond_3

    if-eq v0, v3, :cond_2

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-eq v0, p0, :cond_2

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1

    :cond_3
    if-eqz p0, :cond_6

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, v3, :cond_6

    if-eq v0, v3, :cond_5

    sget-object p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne v0, p0, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :cond_5
    :goto_2
    return v1

    :cond_6
    if-eqz p0, :cond_8

    sget-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    if-ne p0, v3, :cond_8

    if-ne v0, v3, :cond_7

    goto :goto_3

    :cond_7
    move v1, v2

    :goto_3
    return v1

    :cond_8
    return v2
.end method

.method public static justWifi(I)Z
    .locals 2

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->a:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p0

    return p0
.end method

.method public static restore(I)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public static setJustWifi(IZ)V
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/common/util/UploadRuleUtil;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method
