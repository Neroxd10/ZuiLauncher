.class public Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:I

.field private c:Lcom/zui/launcher/ButtonDropTarget;

.field private d:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0702bd

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->b:I

    return-void
.end method

.method private a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F
    .locals 2

    iget p0, p1, Landroid/graphics/PointF;->x:F

    iget v0, p2, Landroid/graphics/PointF;->x:F

    mul-float/2addr p0, v0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v1

    add-float/2addr p0, v0

    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/PointF;->length()F

    move-result p2

    mul-float/2addr p1, p2

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method private b()Landroid/graphics/PointF;
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->c:Lcom/zui/launcher/ButtonDropTarget;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a:Lcom/zui/launcher/Launcher;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ButtonDropTarget;

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->c:Lcom/zui/launcher/ButtonDropTarget;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->c:Lcom/zui/launcher/ButtonDropTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/ButtonDropTarget;->isDropEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    new-instance v0, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v2, 0x42100000    # 36.0f

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    iget v4, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->b:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    if-gez v3, :cond_2

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v5, v4}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_0
    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    iget v6, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->b:I

    int-to-float v6, v6

    cmpg-float v3, v3, v6

    if-gez v3, :cond_3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    :cond_3
    :goto_1
    float-to-double v2, v2

    const-wide v4, 0x4041800000000000L    # 35.0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    cmpg-double p0, v2, v4

    if-gtz p0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method


# virtual methods
.method public getDropTarget()Lcom/zui/launcher/DropTarget;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->c:Lcom/zui/launcher/ButtonDropTarget;

    return-object p0
.end method

.method public getFlingAnimation(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)Ljava/lang/Runnable;
    .locals 7

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->b()Landroid/graphics/PointF;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p2, Lcom/zui/launcher/dragndrop/DragOptions;->isFlingToDelete:Z

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    new-instance v6, Lcom/zui/launcher/util/FlingAnimation;

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->c:Lcom/zui/launcher/ButtonDropTarget;

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->a:Lcom/zui/launcher/Launcher;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/util/FlingAnimation;-><init>(Lcom/zui/launcher/DropTarget$DragObject;Landroid/graphics/PointF;Lcom/zui/launcher/ButtonDropTarget;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragOptions;)V

    return-object v6
.end method

.method public recordDragEvent(JLandroid/view/DragEvent;)V
    .locals 10

    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    move v6, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    move v6, v1

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/view/DragEvent;->getX()F

    move-result v7

    invoke-virtual {p3}, Landroid/view/DragEvent;->getY()F

    move-result v8

    const/4 v9, 0x0

    move-wide v2, p1

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->recordMotionEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public recordMotionEvent(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/FlingToDeleteHelper;->d:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method
