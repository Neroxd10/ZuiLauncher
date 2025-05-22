.class public final enum Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

.field public static final enum NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

.field public static final enum WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

.field private static final synthetic b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "NW2G"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v2}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "NW3G"

    invoke-direct {v0, v5, v1, v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    new-instance v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-direct {v0, v6, v2, v5}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->WIFI:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    new-array v3, v3, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    sget-object v5, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW2G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    aput-object v5, v3, v4

    sget-object v4, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->NW3G:Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->a:Ljava/lang/Integer;

    return-void
.end method

.method public static getEnum(Ljava/lang/Integer;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 5

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_1
    invoke-static {}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getNetworkStrategy()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->getNetworkStrategy()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 1

    const-class v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object p0
.end method

.method public static values()[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;
    .locals 1

    sget-object v0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->b:[Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    invoke-virtual {v0}, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;

    return-object v0
.end method


# virtual methods
.method public getNetworkStrategy()Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->a:Ljava/lang/Integer;

    return-object p0
.end method

.method public setNetworkStrategy(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/lenovo/leos/cloud/lcp/sync/modules/autosync/util/NetworkStrategyEnum;->a:Ljava/lang/Integer;

    return-void
.end method
