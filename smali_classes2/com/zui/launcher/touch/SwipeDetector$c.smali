.class final enum Lcom/zui/launcher/touch/SwipeDetector$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/touch/SwipeDetector$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

.field public static final enum IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

.field public static final enum SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

.field private static final synthetic a:[Lcom/zui/launcher/touch/SwipeDetector$c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector$c;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/touch/SwipeDetector$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector$c;

    const-string v1, "DRAGGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/touch/SwipeDetector$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector$c;

    const-string v1, "SETTLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/touch/SwipeDetector$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v5, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/touch/SwipeDetector$c;->a:[Lcom/zui/launcher/touch/SwipeDetector$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/touch/SwipeDetector$c;
    .locals 1

    const-class v0, Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/touch/SwipeDetector$c;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/touch/SwipeDetector$c;
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->a:[Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-virtual {v0}, [Lcom/zui/launcher/touch/SwipeDetector$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/touch/SwipeDetector$c;

    return-object v0
.end method
