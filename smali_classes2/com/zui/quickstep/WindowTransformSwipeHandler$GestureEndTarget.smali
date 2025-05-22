.class public final enum Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/WindowTransformSwipeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GestureEndTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field public static final enum LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field public static final enum NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field public static final enum RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

.field private static final synthetic a:[Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;


# instance fields
.field public final canBeContinued:Z

.field public final containerType:I

.field public final endShift:F

.field public final endState:I

.field public final isLauncher:Z

.field public final recentsAttachedToAppWindow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v9, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->a()I

    move-result v0

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b()I

    move-result v1

    or-int v4, v0, v1

    const-string v1, "HOME"

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;-><init>(Ljava/lang/String;IFIZZIZ)V

    sput-object v9, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->e()I

    move-result v1

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->f()I

    move-result v2

    or-int v14, v1, v2

    const-string v11, "RECENTS"

    const/4 v12, 0x1

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0xc

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;-><init>(Ljava/lang/String;IFIZZIZ)V

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->g()I

    move-result v1

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->b()I

    move-result v2

    or-int v5, v1, v2

    const-string v2, "NEW_TASK"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;-><init>(Ljava/lang/String;IFIZZIZ)V

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    new-instance v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-static {}, Lcom/zui/quickstep/WindowTransformSwipeHandler;->h()I

    move-result v14

    const-string v11, "LAST_TASK"

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0xd

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;-><init>(Ljava/lang/String;IFIZZIZ)V

    sput-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->LAST_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->HOME:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->RECENTS:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->NEW_TASK:Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->a:[Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFIZZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIZZIZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endShift:F

    iput p4, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->endState:I

    iput-boolean p5, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->isLauncher:Z

    iput-boolean p6, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->canBeContinued:Z

    iput p7, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->containerType:I

    iput-boolean p8, p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->recentsAttachedToAppWindow:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
    .locals 1

    const-class v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    return-object p0
.end method

.method public static values()[Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->a:[Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    invoke-virtual {v0}, [Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/quickstep/WindowTransformSwipeHandler$GestureEndTarget;

    return-object v0
.end method
