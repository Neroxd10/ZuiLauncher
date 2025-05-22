.class public final enum Lcom/zui/quickstep/SysUINavigationMode$Mode;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/SysUINavigationMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/quickstep/SysUINavigationMode$Mode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field public static final enum THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field public static final enum TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private static final synthetic a:[Lcom/zui/quickstep/SysUINavigationMode$Mode;


# instance fields
.field public final hasGestures:Z

.field public final resValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const-string v1, "THREE_BUTTONS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/zui/quickstep/SysUINavigationMode$Mode;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    new-instance v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const-string v1, "TWO_BUTTONS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/zui/quickstep/SysUINavigationMode$Mode;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    new-instance v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const-string v1, "NO_BUTTON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/zui/quickstep/SysUINavigationMode$Mode;-><init>(Ljava/lang/String;IZI)V

    sput-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v5, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->a:[Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    iput p4, p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->resValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 1

    const-class v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object p0
.end method

.method public static values()[Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->a:[Lcom/zui/quickstep/SysUINavigationMode$Mode;

    invoke-virtual {v0}, [Lcom/zui/quickstep/SysUINavigationMode$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object v0
.end method
