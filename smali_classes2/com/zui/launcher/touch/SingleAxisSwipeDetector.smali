.class public Lcom/zui/launcher/touch/SingleAxisSwipeDetector;
.super Lcom/zui/launcher/touch/BaseSwipeDetector;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;,
        Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;
    }
.end annotation


# static fields
.field public static final DIRECTION_BOTH:I = 0x3

.field public static final DIRECTION_NEGATIVE:I = 0x2

.field public static final DIRECTION_POSITIVE:I = 0x1

.field public static final HORIZONTAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

.field public static final VERTICAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;


# instance fields
.field private final i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

.field private final j:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;

.field private k:I

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$a;

    invoke-direct {v0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->VERTICAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    new-instance v0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$b;

    invoke-direct {v0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$b;-><init>()V

    sput-object v0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->HORIZONTAL:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;-><init>(Landroid/view/ViewConfiguration;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewConfiguration;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;Z)V
    .locals 0
    .param p1    # Landroid/view/ViewConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p4}, Lcom/zui/launcher/touch/BaseSwipeDetector;-><init>(Landroid/view/ViewConfiguration;Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->l:F

    iput-object p2, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->j:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;

    iput-object p3, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    return-void
.end method

.method private f(F)Z
    .locals 1

    iget v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->k:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->c(F)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private g(F)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->k:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->d(F)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method protected reportDragEndInternal(Landroid/graphics/PointF;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result p1

    iget-object p0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->j:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;

    invoke-interface {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;->onDragEnd(F)V

    return-void
.end method

.method protected reportDragStartInternal(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    iget-object v1, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->j:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1, v0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;->onDragStart(ZF)V

    return-void
.end method

.method protected reportDraggingInternal(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->j:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;

    iget-object v1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result v1

    iget-object p0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->b(Landroid/graphics/PointF;)F

    move-result p0

    invoke-interface {v0, v1, p0, p2}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Listener;->onDrag(FFLandroid/view/MotionEvent;)Z

    return-void
.end method

.method public setDetectableScrollConditions(IZ)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->k:I

    iput-boolean p2, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mIgnoreSlopWhenSettling:Z

    return-void
.end method

.method public setTouchSlopMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->l:F

    return-void
.end method

.method protected shouldScrollStart(Landroid/graphics/PointF;)Z
    .locals 2

    iget v0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mTouchSlop:F

    iget v1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->l:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->b(Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->f(F)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->g(F)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public wasInitialTouchPositive()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/touch/SingleAxisSwipeDetector;->i:Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;

    iget-object p0, p0, Lcom/zui/launcher/touch/BaseSwipeDetector;->mSubtractDisplacement:Landroid/graphics/PointF;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->a(Landroid/graphics/PointF;)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/touch/SingleAxisSwipeDetector$Direction;->d(F)Z

    move-result p0

    return p0
.end method
