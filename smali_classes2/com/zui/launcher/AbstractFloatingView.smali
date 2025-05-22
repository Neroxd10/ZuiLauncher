.class public abstract Lcom/zui/launcher/AbstractFloatingView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/AbstractFloatingView$FloatingViewType;
    }
.end annotation


# static fields
.field public static final TYPE_ACCESSIBLE:I = 0x7fcbf

.field public static final TYPE_ACTION_POPUP:I = 0x2

.field public static final TYPE_ALL:I = 0x7ffff

.field public static final TYPE_ALL_APPS_EDU:I = 0x200

.field public static final TYPE_DELETE_BUTTON:I = 0x10000

.field public static final TYPE_DISCOVERY_BOUNCE:I = 0x40

.field public static final TYPE_DRAG_DROP_POPUP:I = 0x400

.field public static final TYPE_EXPAND:I = 0x30000

.field public static final TYPE_FENLEI_PANEL:I = 0x20000

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_HIDE_BACK_BUTTON:I = 0x1e8

.field public static final TYPE_ICON_SURFACE:I = 0x2000

.field public static final TYPE_LISTENER:I = 0x100

.field public static final TYPE_ON_BOARD_POPUP:I = 0x20

.field public static final TYPE_OPTIONS_POPUP:I = 0x1000

.field public static final TYPE_PIN_WIDGET_FROM_EXTERNAL_POPUP:I = 0x4000

.field public static final TYPE_REBIND_SAFE:I = 0x4a274

.field public static final TYPE_SNACKBAR:I = 0x80

.field public static final TYPE_STATUS_BAR_SWIPE_DOWN_DISALLOW:I = 0x40c7c

.field public static final TYPE_TASK_MENU:I = 0x800

.field public static final TYPE_WIDGETS_BOTTOM_SHEET:I = 0x4

.field public static final TYPE_WIDGETS_BOTTOM_SHEET_ZUI:I = 0x40000

.field public static final TYPE_WIDGETS_EDUCATION_DIALOG:I = 0x8000

.field public static final TYPE_WIDGETS_FULL_SHEET:I = 0x10

.field public static final TYPE_WIDGET_RESIZE_FRAME:I = 0x8


# instance fields
.field protected mIsOpen:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    return-void
.end method

.method public static closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V
    .locals 1

    const v0, 0x7ffff

    invoke-static {p0, p1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->finishAutoCancelActionMode()Z

    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/zui/launcher/views/ActivityContext;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/zui/launcher/views/ActivityContext;ZI)V

    return-void
.end method

.method public static closeAllOpenViewsExcept(Lcom/zui/launcher/views/ActivityContext;ZI)V
    .locals 1

    not-int p2, p2

    const v0, 0x7ffff

    and-int/2addr p2, v0

    invoke-static {p0, p1, p2}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->finishAutoCancelActionMode()Z

    return-void
.end method

.method public static closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_0
    return-void
.end method

.method public static closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V
    .locals 3

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lcom/zui/launcher/AbstractFloatingView;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/zui/launcher/AbstractFloatingView;

    invoke-virtual {v1, p2}, Lcom/zui/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/AbstractFloatingView;",
            ">(",
            "Lcom/zui/launcher/views/ActivityContext;",
            "I)TT;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/AbstractFloatingView;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/launcher/AbstractFloatingView;

    invoke-virtual {v2, p1}, Lcom/zui/launcher/AbstractFloatingView;->isOfType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;
    .locals 1

    const v0, 0x7ffff

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenViewExcludeType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;
    .locals 1

    not-int p1, p1

    const v0, 0x7ffff

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenViewExcludeZuiView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;
    .locals 1

    const v0, 0x4ffff

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method

.method public static getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;
    .locals 0

    invoke-static {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addHintCloseAnim(FLandroid/view/animation/Interpolator;Lcom/zui/launcher/anim/PendingAnimation;)V
    .locals 0

    return-void
.end method

.method protected announceAccessibilityChanges()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->getAccessibilityTarget()Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    const/16 v2, 0x20

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {p0}, Lcom/zui/launcher/views/ActivityContext;->getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;

    move-result-object p0

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final close(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->areAnimationsEnabled(Landroid/content/Context;)Z

    move-result v0

    and-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/BaseAlertActivity;

    const-string v1, "container closed"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseAlertActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseAlertActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseAlertActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->handleClose(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    return-void
.end method

.method public createHintCloseAnim(F)Landroid/animation/Animator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveTextView()Lcom/zui/launcher/ExtendedEditText;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getExtendedTouchView()Landroid/view/View;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogContainerType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected abstract handleClose(Z)V
.end method

.method public abstract isOfType(I)Z
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    return p0
.end method

.method public abstract logActionCommand(I)V
.end method

.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->logActionCommand(I)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return v0
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method
