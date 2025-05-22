.class public Lcom/zui/launcher/touch/SwipeDetector;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/SwipeDetector$Listener;,
        Lcom/zui/launcher/touch/SwipeDetector$Direction;,
        Lcom/zui/launcher/touch/SwipeDetector$c;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTH:I = 0x3

.field public static final DIRECTION_NEGATIVE:I = 0x2

.field public static final DIRECTION_POSITIVE:I = 0x1

.field public static final HORIZONTAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

.field public static final RELEASE_VELOCITY_PX_MS:F = 1.0f

.field public static final VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;


# instance fields
.field private a:I

.field private b:Lcom/zui/launcher/touch/SwipeDetector$c;

.field private final c:Landroid/graphics/PointF;

.field private final d:Landroid/graphics/PointF;

.field private final e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

.field private final f:Z

.field private final g:F

.field private final h:F

.field private final i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

.field private j:Landroid/view/VelocityTracker;

.field private k:F

.field private l:F

.field private m:F

.field protected mActivePointerId:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector$a;

    invoke-direct {v0}, Lcom/zui/launcher/touch/SwipeDetector$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/SwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    new-instance v0, Lcom/zui/launcher/touch/SwipeDetector$b;

    invoke-direct {v0}, Lcom/zui/launcher/touch/SwipeDetector$b;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/SwipeDetector;->HORIZONTAL:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/touch/SwipeDetector$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/touch/SwipeDetector$Direction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/zui/launcher/touch/SwipeDetector;-><init>(Landroid/view/ViewConfiguration;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewConfiguration;Lcom/zui/launcher/touch/SwipeDetector$Listener;Lcom/zui/launcher/touch/SwipeDetector$Direction;Z)V
    .locals 1
    .param p1    # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/touch/SwipeDetector$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/touch/SwipeDetector$Direction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    iput-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    iput-object p2, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    iput-object p3, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iput-boolean p4, p0, Lcom/zui/launcher/touch/SwipeDetector;->f:Z

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Lcom/zui/launcher/touch/SwipeDetector;->g:F

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->h:F

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v1, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->n:Z

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/zui/launcher/touch/SwipeDetector;->m:F

    :cond_0
    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->g:F

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->g:F

    neg-float v0, v0

    :goto_0
    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->m:F

    return-void
.end method

.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    iget v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->h:F

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    iget-boolean v2, p0, Lcom/zui/launcher/touch/SwipeDetector;->f:Z

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->c(Landroid/view/VelocityTracker;Z)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0, v0, v1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDragEnd(FZ)V

    return-void
.end method

.method private c(Z)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDragStart(Z)V

    return v0
.end method

.method public static calculateDuration(FF)J
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x3e4ccccd    # 0.2f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x44960000    # 1200.0f

    div-float/2addr v0, p0

    mul-float/2addr v0, p1

    const/high16 p0, 0x42c80000    # 100.0f

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-long p0, p0

    return-wide p0
.end method

.method private d(Landroid/view/MotionEvent;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    iget v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->k:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->k:F

    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    iget p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->m:F

    sub-float/2addr v0, p0

    invoke-interface {v1, v0, p1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->onDrag(FLandroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private e(Lcom/zui/launcher/touch/SwipeDetector$c;)V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "b/133867119"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState -- start: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SwipeDetector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/zui/launcher/touch/SwipeDetector;->a()V

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v2, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne v0, v2, :cond_2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState -- 1: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/touch/SwipeDetector;->c(Z)Z

    :cond_3
    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/touch/SwipeDetector;->b()V

    :cond_4
    iput-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " @ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/Throwable;

    invoke-direct {p1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private f(Landroid/view/MotionEvent;I)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    invoke-interface {v0, p1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->shouldDrag(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget-object v2, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2, v2}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->a(Landroid/view/MotionEvent;ILandroid/graphics/PointF;)F

    move-result p1

    iget p2, p0, Lcom/zui/launcher/touch/SwipeDetector;->g:F

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget p2, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    return v1

    :cond_1
    iget p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->a:I

    and-int/lit8 p1, p1, 0x2

    const/4 p2, 0x1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    invoke-virtual {p1, v0}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->d(F)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->a:I

    and-int/2addr p1, p2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    invoke-virtual {p1, p0}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->e(F)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return p2

    :cond_4
    return v1
.end method


# virtual methods
.method public finishedScrolling()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-direct {p0, v0}, Lcom/zui/launcher/touch/SwipeDetector;->e(Lcom/zui/launcher/touch/SwipeDetector$c;)V

    return-void
.end method

.method public getActivePointerId()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    return p0
.end method

.method public getDownX()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->x:F

    float-to-int p0, p0

    return p0
.end method

.method public getDownY()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    float-to-int p0, p0

    return p0
.end method

.method public getScrollDirections()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->a:I

    return p0
.end method

.method public getYVelocity()F
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDraggingOrSettling()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isDraggingState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIdleState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->IDLE:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSettlingState()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    instance-of v1, v1, Lcom/zui/launcher/uioverrides/touchcontrollers/FlingAndHoldTouchController;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SwipeDetector"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_d

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_b

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget v4, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    if-ne v3, v4, :cond_e

    if-nez v0, :cond_4

    move v1, v2

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget-object v4, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget-object v3, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    iget-boolean v4, p0, Lcom/zui/launcher/touch/SwipeDetector;->f:Z

    invoke-virtual {v1, p1, v0, v3, v4}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->b(Landroid/view/MotionEvent;ILandroid/graphics/PointF;Z)F

    move-result v1

    iput v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    sget-boolean v1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v3, "b/133867119"

    if-eqz v1, :cond_7

    const-string v1, "onTouchEvent 1"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v4, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-eq v1, v4, :cond_9

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/touch/SwipeDetector;->f(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_9

    sget-boolean v1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_8

    const-string v1, "onTouchEvent 2"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v1, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-direct {p0, v1}, Lcom/zui/launcher/touch/SwipeDetector;->e(Lcom/zui/launcher/touch/SwipeDetector$c;)V

    :cond_9
    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v3, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne v1, v3, :cond_a

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->d(Landroid/view/MotionEvent;)Z

    :cond_a
    iget-object p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v0, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne p1, v0, :cond_c

    sget-object p1, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->e(Lcom/zui/launcher/touch/SwipeDetector$c;)V

    :cond_c
    iget-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->j:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->mActivePointerId:I

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->d:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/zui/launcher/touch/SwipeDetector;->c:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->k:F

    iput v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->l:F

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->b:Lcom/zui/launcher/touch/SwipeDetector$c;

    sget-object v1, Lcom/zui/launcher/touch/SwipeDetector$c;->SETTLING:Lcom/zui/launcher/touch/SwipeDetector$c;

    if-ne v0, v1, :cond_e

    iget-boolean v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->n:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->i:Lcom/zui/launcher/touch/SwipeDetector$Listener;

    invoke-interface {v0, p1}, Lcom/zui/launcher/touch/SwipeDetector$Listener;->shouldDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/zui/launcher/touch/SwipeDetector$c;->DRAGGING:Lcom/zui/launcher/touch/SwipeDetector$c;

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/SwipeDetector;->e(Lcom/zui/launcher/touch/SwipeDetector$c;)V

    :cond_e
    :goto_0
    return v2
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/touch/SwipeDetector;->a:I

    iput-boolean p2, p0, Lcom/zui/launcher/touch/SwipeDetector;->n:Z

    return-void
.end method

.method public wasInitialTouchPositive()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/SwipeDetector;->e:Lcom/zui/launcher/touch/SwipeDetector$Direction;

    iget p0, p0, Lcom/zui/launcher/touch/SwipeDetector;->m:F

    invoke-virtual {v0, p0}, Lcom/zui/launcher/touch/SwipeDetector$Direction;->e(F)Z

    move-result p0

    return p0
.end method
