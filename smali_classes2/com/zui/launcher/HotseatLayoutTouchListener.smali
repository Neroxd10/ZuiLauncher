.class public Lcom/zui/launcher/HotseatLayoutTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/HotseatLayout;

.field private final c:Landroid/graphics/PointF;

.field private final d:Landroid/graphics/PointF;

.field private final e:F

.field private final f:Landroid/graphics/Rect;

.field private g:I

.field private final h:Landroid/view/GestureDetector;

.field private i:J


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/HotseatLayout;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->c:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->d:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->f:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->e:F

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->h:Landroid/view/GestureDetector;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->isSlidePhone()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibratorForHalo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    const/16 v1, 0x58

    invoke-virtual {p1, v1}, Lcom/zui/launcher/LauncherAppState;->startDualVibratorForHalo(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->goToEditViewState(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->d:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/views/OptionsPopupView;->showDefaultOptions(Lcom/zui/launcher/Launcher;FF)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->h:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->i:J

    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v3, p1, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v1

    sub-int v1, p1, v3

    move v3, p1

    move p1, v1

    goto :goto_0

    :cond_1
    iget p1, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v1, v2

    sub-int v1, v5, v3

    move v3, v4

    move v4, v1

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->f:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v4, v3, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->f:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    :cond_2
    if-eqz p1, :cond_3

    iput v0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->c:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/HotseatLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0

    :cond_4
    iget v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-ne v1, v2, :cond_5

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/HotseatLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    iput v3, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    :cond_5
    iget v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    const/4 v4, 0x0

    if-ne v1, v3, :cond_7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_6

    iput v4, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->g:I

    :cond_6
    move p2, v0

    goto :goto_3

    :cond_7
    if-ne v1, v0, :cond_a

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/HotseatLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->i:J

    sub-long/2addr v4, v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_8

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/HotseatLayout;->isHandlingTouch()Z

    move-result v1

    if-eqz v1, :cond_8

    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;->b()V

    goto :goto_2

    :cond_8
    if-ne p1, v2, :cond_9

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->c:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->c:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float/2addr v2, p2

    invoke-static {v1, v2}, Landroid/graphics/PointF;->length(FF)F

    move-result p2

    iget v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->e:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_9

    goto :goto_1

    :cond_9
    :goto_2
    move p2, v0

    move v4, p2

    goto :goto_3

    :cond_a
    move p2, v4

    :goto_3
    if-eq p1, v0, :cond_b

    const/4 v1, 0x6

    if-ne p1, v1, :cond_c

    :cond_b
    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->b:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/HotseatLayout;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_c

    if-eqz v4, :cond_c

    iget-object v1, p0, Lcom/zui/launcher/HotseatLayoutTouchListener;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/Launcher;->exitEditViewState(Z)V

    :cond_c
    if-eq p1, v0, :cond_d

    if-ne p1, v3, :cond_e

    :cond_d
    invoke-direct {p0}, Lcom/zui/launcher/HotseatLayoutTouchListener;->b()V

    :cond_e
    return p2
.end method
