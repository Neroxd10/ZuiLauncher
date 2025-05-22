.class public final enum Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/appprediction/AppsDividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DividerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ALL_APPS_LABEL:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

.field public static final enum LINE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

.field public static final enum NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

.field private static final synthetic a:[Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    new-instance v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    const-string v1, "LINE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->LINE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    new-instance v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    const-string v1, "ALL_APPS_LABEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object v5, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->LINE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->a:[Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;
    .locals 1

    const-class v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;
    .locals 1

    sget-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->a:[Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    invoke-virtual {v0}, [Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    return-object v0
.end method
