.class public Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/views/ScrimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AccessibilityHelper"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/ScrimView;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/views/ScrimView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p0}, Lcom/zui/launcher/views/ScrimView;->c(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object p0

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/high16 p0, -0x80000000

    :goto_0
    return p0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/4 p1, 0x0

    const/16 p3, 0x10

    if-ne p2, p3, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p2, p2, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p2

    iget-object p3, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p3, p3, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p3}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p3

    iget p3, p3, Lcom/zui/launcher/LauncherState;->containerType:I

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionOnControl(III)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p1, p1, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return v0

    :cond_1
    const p3, 0x7f120718

    if-ne p2, p3, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p0}, Lcom/zui/launcher/views/OptionsPopupView;->startWallpaperPicker(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_2
    const p3, 0x7f120734

    if-ne p2, p3, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p0}, Lcom/zui/launcher/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_3
    const p3, 0x7f120619

    if-ne p2, p3, :cond_4

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p0}, Lcom/zui/launcher/views/OptionsPopupView;->startSettings(Landroid/view/View;)Z

    move-result p0

    return p0

    :cond_4
    return p1
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p1}, Lcom/zui/launcher/views/ScrimView;->c(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p1}, Lcom/zui/launcher/views/ScrimView;->d(Lcom/zui/launcher/views/ScrimView;)[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p1}, Lcom/zui/launcher/views/ScrimView;->e(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {v0}, Lcom/zui/launcher/views/ScrimView;->c(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p1}, Lcom/zui/launcher/views/ScrimView;->e(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {v0}, Lcom/zui/launcher/views/ScrimView;->d(Lcom/zui/launcher/views/ScrimView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {v1}, Lcom/zui/launcher/views/ScrimView;->d(Lcom/zui/launcher/views/ScrimView;)[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-static {p1}, Lcom/zui/launcher/views/ScrimView;->e(Lcom/zui/launcher/views/ScrimView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    const/16 p1, 0x10

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    iget-object p1, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    iget-object p1, p1, Lcom/zui/launcher/views/ScrimView;->mLauncher:Lcom/zui/launcher/Launcher;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/views/ScrimView$AccessibilityHelper;->a:Lcom/zui/launcher/views/ScrimView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isWallpaperAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v0, 0x7f120718

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_0
    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v0, 0x7f120734

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    new-instance p1, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    const v0, 0x7f120619

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    return-void
.end method
