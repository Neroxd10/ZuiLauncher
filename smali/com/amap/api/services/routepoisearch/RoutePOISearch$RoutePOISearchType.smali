.class public final enum Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/routepoisearch/RoutePOISearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RoutePOISearchType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeFillingStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeServiceArea:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field public static final enum TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

.field private static final synthetic a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeGasStation"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeMaintenanceStation"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeATM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeToilet"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeFillingStation"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeFillingStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    new-instance v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const-string v1, "TypeServiceArea"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeServiceArea:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    sget-object v8, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeGasStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v8, v1, v2

    sget-object v2, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeMaintenanceStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeATM:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeToilet:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v2, v1, v5

    sget-object v2, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->TypeFillingStation:Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 1

    const-class v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;
    .locals 1

    sget-object v0, Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->a:[Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    invoke-virtual {v0}, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/services/routepoisearch/RoutePOISearch$RoutePOISearchType;

    return-object v0
.end method
