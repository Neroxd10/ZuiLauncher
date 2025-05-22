.class public Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;
.super Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
.source ""


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/zui/launcher/Launcher;)V

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v1, 0x7f120063

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    const v1, 0x7f0a0054

    invoke-direct {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0a0047

    :goto_0
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1

    :cond_0
    instance-of p3, p1, Lcom/zui/launcher/notification/NotificationMainView;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/zui/launcher/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const p1, 0x7f0a0054

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const v2, 0x7f0a0047

    if-ne p3, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    instance-of p3, p3, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    if-nez p3, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/shortcuts/DeepShortcutView;

    invoke-virtual {p1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->getFinalInfo()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object p1

    const/4 p3, 0x2

    new-array p3, p3, [I

    invoke-virtual {p0, p2, p3}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lcom/zui/launcher/ItemInfo;[I)I

    move-result p2

    new-instance v1, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate$a;-><init>(Lcom/zui/launcher/accessibility/ShortcutMenuAccessibilityDelegate;Lcom/zui/launcher/WorkspaceItemInfo;I[I)V

    iget-object p1, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;ZLjava/lang/Runnable;)V

    :cond_1
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_2
    const p2, 0x7f0a0054

    if-ne p3, p2, :cond_4

    instance-of p2, p1, Lcom/zui/launcher/notification/NotificationMainView;

    if-nez p2, :cond_3

    return v1

    :cond_3
    check-cast p1, Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p1}, Lcom/zui/launcher/notification/NotificationMainView;->onChildDismissed()V

    const p1, 0x7f12053b

    invoke-virtual {p0, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->a(I)V

    return v0

    :cond_4
    return v1
.end method
