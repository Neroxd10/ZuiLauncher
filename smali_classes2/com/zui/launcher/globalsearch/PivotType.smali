.class public final enum Lcom/zui/launcher/globalsearch/PivotType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/globalsearch/PivotType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EDIT_TO_NORMAL:Lcom/zui/launcher/globalsearch/PivotType;

.field public static final enum NORMAL_TO_EDIT:Lcom/zui/launcher/globalsearch/PivotType;

.field public static final enum OTHER:Lcom/zui/launcher/globalsearch/PivotType;

.field private static final synthetic a:[Lcom/zui/launcher/globalsearch/PivotType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/globalsearch/PivotType;

    const-string v1, "NORMAL_TO_EDIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/globalsearch/PivotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/globalsearch/PivotType;->NORMAL_TO_EDIT:Lcom/zui/launcher/globalsearch/PivotType;

    new-instance v0, Lcom/zui/launcher/globalsearch/PivotType;

    const-string v1, "EDIT_TO_NORMAL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/globalsearch/PivotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/globalsearch/PivotType;->EDIT_TO_NORMAL:Lcom/zui/launcher/globalsearch/PivotType;

    new-instance v0, Lcom/zui/launcher/globalsearch/PivotType;

    const-string v1, "OTHER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/globalsearch/PivotType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/globalsearch/PivotType;->OTHER:Lcom/zui/launcher/globalsearch/PivotType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/globalsearch/PivotType;

    sget-object v5, Lcom/zui/launcher/globalsearch/PivotType;->NORMAL_TO_EDIT:Lcom/zui/launcher/globalsearch/PivotType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/globalsearch/PivotType;->EDIT_TO_NORMAL:Lcom/zui/launcher/globalsearch/PivotType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/globalsearch/PivotType;->a:[Lcom/zui/launcher/globalsearch/PivotType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/globalsearch/PivotType;
    .locals 1

    const-class v0, Lcom/zui/launcher/globalsearch/PivotType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/globalsearch/PivotType;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/globalsearch/PivotType;
    .locals 1

    sget-object v0, Lcom/zui/launcher/globalsearch/PivotType;->a:[Lcom/zui/launcher/globalsearch/PivotType;

    invoke-virtual {v0}, [Lcom/zui/launcher/globalsearch/PivotType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/globalsearch/PivotType;

    return-object v0
.end method
