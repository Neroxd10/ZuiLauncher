.class public final enum Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

.field public static final enum EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

.field public static final enum INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    const-string v1, "INCLUDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    new-instance v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    const-string v1, "EXCLUDE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->EXCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    sget-object v4, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->INCLUDE:Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->$VALUES:[Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .locals 1

    const-class v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    return-object p0
.end method

.method public static values()[Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;
    .locals 1

    sget-object v0, Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->$VALUES:[Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    invoke-virtual {v0}, [Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/autonavi/base/amap/mapcore/jbinding/JBinding2cType;

    return-object v0
.end method
