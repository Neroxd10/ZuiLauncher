.class public final enum Lcom/amap/api/col/l3s/eg$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3s/eg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/col/l3s/eg$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/amap/api/col/l3s/eg$a;

.field public static final enum b:Lcom/amap/api/col/l3s/eg$a;

.field public static final enum c:Lcom/amap/api/col/l3s/eg$a;

.field private static final synthetic d:[Lcom/amap/api/col/l3s/eg$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/amap/api/col/l3s/eg$a;

    const-string v1, "unknown"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/col/l3s/eg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3s/eg$a;->a:Lcom/amap/api/col/l3s/eg$a;

    new-instance v0, Lcom/amap/api/col/l3s/eg$a;

    const-string v1, "marker_default"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/amap/api/col/l3s/eg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3s/eg$a;->b:Lcom/amap/api/col/l3s/eg$a;

    new-instance v0, Lcom/amap/api/col/l3s/eg$a;

    const-string v1, "marker_gps_no_sharing"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/amap/api/col/l3s/eg$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/col/l3s/eg$a;->c:Lcom/amap/api/col/l3s/eg$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amap/api/col/l3s/eg$a;

    sget-object v5, Lcom/amap/api/col/l3s/eg$a;->a:Lcom/amap/api/col/l3s/eg$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/amap/api/col/l3s/eg$a;->b:Lcom/amap/api/col/l3s/eg$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/amap/api/col/l3s/eg$a;->d:[Lcom/amap/api/col/l3s/eg$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/col/l3s/eg$a;
    .locals 1

    const-class v0, Lcom/amap/api/col/l3s/eg$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/col/l3s/eg$a;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/col/l3s/eg$a;
    .locals 1

    sget-object v0, Lcom/amap/api/col/l3s/eg$a;->d:[Lcom/amap/api/col/l3s/eg$a;

    invoke-virtual {v0}, [Lcom/amap/api/col/l3s/eg$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/col/l3s/eg$a;

    return-object v0
.end method
