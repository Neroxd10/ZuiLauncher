.class public final enum Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/maps/model/PolylineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LineCapType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/maps/model/PolylineOptions$LineCapType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field public static final enum LineCapArrow:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field public static final enum LineCapButt:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field public static final enum LineCapRound:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

.field public static final enum LineCapSquare:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const-string v1, "LineCapButt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapButt:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const-string v1, "LineCapSquare"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapSquare:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const-string v1, "LineCapArrow"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapArrow:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    new-instance v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const-string v1, "LineCapRound"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapRound:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    sget-object v6, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapButt:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapSquare:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->LineCapArrow:Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->$VALUES:[Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->type:I

    return-void
.end method

.method public static valueOf(I)Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    .locals 2

    invoke-static {}, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->values()[Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    move-result-object v0

    array-length v1, v0

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v1, 0x0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    .locals 1

    const-class v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/maps/model/PolylineOptions$LineCapType;
    .locals 1

    sget-object v0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->$VALUES:[Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    invoke-virtual {v0}, [Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/maps/model/PolylineOptions$LineCapType;

    return-object v0
.end method


# virtual methods
.method public final getTypeValue()I
    .locals 0

    iget p0, p0, Lcom/amap/api/maps/model/PolylineOptions$LineCapType;->type:I

    return p0
.end method
