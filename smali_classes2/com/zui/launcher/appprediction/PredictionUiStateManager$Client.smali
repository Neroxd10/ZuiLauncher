.class public final enum Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appprediction/PredictionUiStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Client"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

.field public static final enum OVERVIEW:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

.field private static final synthetic a:[Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;


# instance fields
.field public final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    const-string v1, "HOME"

    const/4 v2, 0x0

    const-string v3, "home"

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    new-instance v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    const-string v1, "OVERVIEW"

    const/4 v3, 0x1

    const-string v4, "overview"

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->OVERVIEW:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    sget-object v4, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->a:[Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;
    .locals 1

    const-class v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;
    .locals 1

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->a:[Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {v0}, [Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    return-object v0
.end method
