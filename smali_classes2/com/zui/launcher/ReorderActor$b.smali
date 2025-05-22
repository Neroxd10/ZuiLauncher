.class final enum Lcom/zui/launcher/ReorderActor$b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/ReorderActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/ReorderActor$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EMPTY:Lcom/zui/launcher/ReorderActor$b;

.field public static final enum POSITIVE:Lcom/zui/launcher/ReorderActor$b;

.field public static final enum REVERSE:Lcom/zui/launcher/ReorderActor$b;

.field private static final synthetic a:[Lcom/zui/launcher/ReorderActor$b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/ReorderActor$b;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/ReorderActor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    new-instance v0, Lcom/zui/launcher/ReorderActor$b;

    const-string v1, "POSITIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/ReorderActor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/ReorderActor$b;->POSITIVE:Lcom/zui/launcher/ReorderActor$b;

    new-instance v0, Lcom/zui/launcher/ReorderActor$b;

    const-string v1, "REVERSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/ReorderActor$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/ReorderActor$b;->REVERSE:Lcom/zui/launcher/ReorderActor$b;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/ReorderActor$b;

    sget-object v5, Lcom/zui/launcher/ReorderActor$b;->EMPTY:Lcom/zui/launcher/ReorderActor$b;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/ReorderActor$b;->POSITIVE:Lcom/zui/launcher/ReorderActor$b;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/ReorderActor$b;->a:[Lcom/zui/launcher/ReorderActor$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/ReorderActor$b;
    .locals 1

    const-class v0, Lcom/zui/launcher/ReorderActor$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ReorderActor$b;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/ReorderActor$b;
    .locals 1

    sget-object v0, Lcom/zui/launcher/ReorderActor$b;->a:[Lcom/zui/launcher/ReorderActor$b;

    invoke-virtual {v0}, [Lcom/zui/launcher/ReorderActor$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/ReorderActor$b;

    return-object v0
.end method
