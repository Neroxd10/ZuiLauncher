.class public Lcom/zui/launcher/touch/WorkspaceTouchListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private final a:Landroid/graphics/Rect;

.field private final b:Lcom/zui/launcher/Launcher;

.field private final c:Lcom/zui/launcher/Workspace;

.field private final d:Landroid/graphics/PointF;

.field private final e:F

.field private f:I

.field private final g:Landroid/view/GestureDetector;

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/Workspace;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->d:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    iput-boolean v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->i:Z

    iput-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->e:F

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->g:Landroid/view/GestureDetector;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

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

    iput v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    iget p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->isSlidePhone()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibratorForHalo()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    const/16 v2, 0x58

    invoke-virtual {p1, v2}, Lcom/zui/launcher/LauncherAppState;->startDualVibratorForHalo(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    iget-object p0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->goToEditViewState(Z)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->d:Landroid/graphics/PointF;

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/views/OptionsPopupView;->showDefaultOptions(Lcom/zui/launcher/Launcher;FF)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->g:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->h:J

    invoke-direct {p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a:Landroid/graphics/Rect;

    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    iget v8, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    invoke-virtual {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a:Landroid/graphics/Rect;

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {v2, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    iput v1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->d:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object p1, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->i:Z

    return v1

    :cond_3
    iget v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2, p2}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->setAction(I)V

    iput v4, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    :cond_4
    iget v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    if-ne v2, v4, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_5

    iput v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->f:I

    :cond_5
    move v2, v0

    move v3, v1

    goto :goto_3

    :cond_6
    if-ne v2, v1, :cond_9

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2, p2}, Lcom/zui/launcher/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->h:J

    sub-long/2addr v5, v7

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-ltz v2, :cond_7

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_0
    invoke-direct {p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b()V

    goto :goto_1

    :cond_7
    if-ne p1, v3, :cond_8

    iget-object v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->d:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->d:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sub-float/2addr v3, v5

    invoke-static {v2, v3}, Landroid/graphics/PointF;->length(FF)F

    move-result v2

    iget v3, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->e:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->i:Z

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_2

    :cond_9
    move v2, v0

    :goto_2
    move v3, v2

    :goto_3
    if-eq p1, v1, :cond_a

    const/4 v5, 0x6

    if-ne p1, v5, :cond_e

    :cond_a
    iget-object v5, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->c:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5, p2}, Lcom/zui/launcher/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    :cond_b
    if-eqz v2, :cond_c

    iget-object p2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2, v1}, Lcom/zui/launcher/Launcher;->exitEditViewState(Z)V

    goto :goto_4

    :cond_c
    iget-boolean p2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->i:Z

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b:Lcom/zui/launcher/Launcher;

    invoke-static {p2}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_d
    :goto_4
    iput-boolean v0, p0, Lcom/zui/launcher/touch/WorkspaceTouchListener;->i:Z

    :cond_e
    if-eq p1, v1, :cond_f

    if-ne p1, v4, :cond_10

    :cond_f
    invoke-direct {p0}, Lcom/zui/launcher/touch/WorkspaceTouchListener;->b()V

    :cond_10
    return v3
.end method
