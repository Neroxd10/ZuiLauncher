.class final enum Lcom/zui/launcher/touch/BaseSwipeDetector$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/touch/BaseSwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/launcher/touch/BaseSwipeDetector$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

.field public static final enum IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

.field public static final enum SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

.field private static final synthetic a:[Lcom/zui/launcher/touch/BaseSwipeDetector$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/touch/BaseSwipeDetector$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    new-instance v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    const-string v1, "DRAGGING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/zui/launcher/touch/BaseSwipeDetector$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    new-instance v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    const-string v1, "SETTLING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/touch/BaseSwipeDetector$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->SETTLING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    sget-object v5, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->IDLE:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    aput-object v5, v1, v2

    sget-object v2, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->DRAGGING:Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->a:[Lcom/zui/launcher/touch/BaseSwipeDetector$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/zui/launcher/touch/BaseSwipeDetector$a;
    .locals 1

    const-class v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    return-object p0
.end method

.method public static values()[Lcom/zui/launcher/touch/BaseSwipeDetector$a;
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/BaseSwipeDetector$a;->a:[Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    invoke-virtual {v0}, [Lcom/zui/launcher/touch/BaseSwipeDetector$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/touch/BaseSwipeDetector$a;

    return-object v0
.end method
