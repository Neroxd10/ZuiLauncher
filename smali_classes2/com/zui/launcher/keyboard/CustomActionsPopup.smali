.class public Lcom/zui/launcher/keyboard/CustomActionsPopup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->a:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->c:Landroid/view/View;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    return-void
.end method

.method private a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object p0, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->c:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public canShow()Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/keyboard/CustomActionsPopup;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->b:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    iget-object p0, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z

    move-result p0

    return p0
.end method

.method public show()Z
    .locals 5

    invoke-direct {p0}, Lcom/zui/launcher/keyboard/CustomActionsPopup;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v3, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->a:Lcom/zui/launcher/Launcher;

    iget-object v4, p0, Lcom/zui/launcher/keyboard/CustomActionsPopup;->c:Landroid/view/View;

    invoke-direct {v1, v3, v4}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {p0, v2, v4, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    const/4 p0, 0x1

    return p0
.end method
