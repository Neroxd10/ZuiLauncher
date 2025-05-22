.class public final enum Lcom/zui/launcher/reorder/Reorder$Type;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/reorder/Reorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/reorder/Reorder$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/zui/launcher/reorder/Reorder$Type;

.field public static final enum chessman:Lcom/zui/launcher/reorder/Reorder$Type;

.field public static final enum empty:Lcom/zui/launcher/reorder/Reorder$Type;

.field public static final enum noinit:Lcom/zui/launcher/reorder/Reorder$Type;

.field public static final enum stone:Lcom/zui/launcher/reorder/Reorder$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/zui/launcher/reorder/Reorder$Type;

    const-string v1, "noinit"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/reorder/Reorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->noinit:Lcom/zui/launcher/reorder/Reorder$Type;

    new-instance v0, Lcom/zui/launcher/reorder/Reorder$Type;

    const-string v1, "empty"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/reorder/Reorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->empty:Lcom/zui/launcher/reorder/Reorder$Type;

    new-instance v0, Lcom/zui/launcher/reorder/Reorder$Type;

    const-string v1, "chessman"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/reorder/Reorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    new-instance v0, Lcom/zui/launcher/reorder/Reorder$Type;

    const-string v1, "stone"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/zui/launcher/reorder/Reorder$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->stone:Lcom/zui/launcher/reorder/Reorder$Type;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/launcher/reorder/Reorder$Type;

    sget-object v6, Lcom/zui/launcher/reorder/Reorder$Type;->noinit:Lcom/zui/launcher/reorder/Reorder$Type;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->empty:Lcom/zui/launcher/reorder/Reorder$Type;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/launcher/reorder/Reorder$Type;->chessman:Lcom/zui/launcher/reorder/Reorder$Type;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/launcher/reorder/Reorder$Type;->a:[Lcom/zui/launcher/reorder/Reorder$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/reorder/Reorder$Type;
    .locals 1

    const-class v0, Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/reorder/Reorder$Type;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/reorder/Reorder$Type;
    .locals 1

    sget-object v0, Lcom/zui/launcher/reorder/Reorder$Type;->a:[Lcom/zui/launcher/reorder/Reorder$Type;

    invoke-virtual {v0}, [Lcom/zui/launcher/reorder/Reorder$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/reorder/Reorder$Type;

    return-object v0
.end method
