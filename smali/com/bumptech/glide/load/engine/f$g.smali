.class final enum Lcom/bumptech/glide/load/engine/f$g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/f$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/engine/f$g;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/engine/f$g;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/f$g;

.field private static final synthetic a:[Lcom/bumptech/glide/load/engine/f$g;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bumptech/glide/load/engine/f$g;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/f$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/f$g;

    new-instance v0, Lcom/bumptech/glide/load/engine/f$g;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/engine/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/f$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/f$g;

    new-instance v0, Lcom/bumptech/glide/load/engine/f$g;

    const-string v1, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/engine/f$g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/f$g;->DECODE_DATA:Lcom/bumptech/glide/load/engine/f$g;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/bumptech/glide/load/engine/f$g;

    sget-object v5, Lcom/bumptech/glide/load/engine/f$g;->INITIALIZE:Lcom/bumptech/glide/load/engine/f$g;

    aput-object v5, v1, v2

    sget-object v2, Lcom/bumptech/glide/load/engine/f$g;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/engine/f$g;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/bumptech/glide/load/engine/f$g;->a:[Lcom/bumptech/glide/load/engine/f$g;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/f$g;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/f$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/f$g;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/f$g;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/f$g;->a:[Lcom/bumptech/glide/load/engine/f$g;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/f$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/f$g;

    return-object v0
.end method
