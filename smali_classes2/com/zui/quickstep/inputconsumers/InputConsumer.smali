.class public interface abstract Lcom/zui/quickstep/inputconsumers/InputConsumer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field public static final NAMES:[Ljava/lang/String;

.field public static final NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

.field public static final TYPE_ACCESSIBILITY:I = 0x20

.field public static final TYPE_ASSISTANT:I = 0x8

.field public static final TYPE_DEVICE_LOCKED:I = 0x10

.field public static final TYPE_FALLBACK_NO_BUTTON:I = 0x200

.field public static final TYPE_NO_OP:I = 0x1

.field public static final TYPE_OTHER_ACTIVITY:I = 0x4

.field public static final TYPE_OVERVIEW:I = 0x2

.field public static final TYPE_OVERVIEW_WITHOUT_FOCUS:I = 0x80

.field public static final TYPE_RESET_GESTURE:I = 0x100

.field public static final TYPE_SCREEN_PINNED:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "TYPE_NO_OP"

    const-string v1, "TYPE_OVERVIEW"

    const-string v2, "TYPE_OTHER_ACTIVITY"

    const-string v3, "TYPE_ASSISTANT"

    const-string v4, "TYPE_DEVICE_LOCKED"

    const-string v5, "TYPE_ACCESSIBILITY"

    const-string v6, "TYPE_SCREEN_PINNED"

    const-string v7, "TYPE_OVERVIEW_WITHOUT_FOCUS"

    const-string v8, "TYPE_RESET_GESTURE"

    const-string v9, "TYPE_FALLBACK_NO_BUTTON"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NAMES:[Ljava/lang/String;

    sget-object v0, Lcom/zui/quickstep/inputconsumers/f;->a:Lcom/zui/quickstep/inputconsumers/f;

    sput-object v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-void
.end method

.method public static synthetic a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public allowInterceptByParent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getActiveConsumerInHierarchy()Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NAMES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-interface {p0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getType()I

    move-result v2

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public abstract getType()I
.end method

.method public isConsumerDetachedFromGesture()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isLastAnimationFinished()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public notifyOrientationSetup()V
    .locals 0

    return-void
.end method

.method public onConsumerAboutToBeSwitched()V
    .locals 0

    return-void
.end method

.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/view/KeyEvent;

    invoke-interface {p0, p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onKeyEvent(Landroid/view/KeyEvent;)V

    :goto_0
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public useSharedSwipeState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
