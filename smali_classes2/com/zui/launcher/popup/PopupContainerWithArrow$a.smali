.class Lcom/zui/launcher/popup/PopupContainerWithArrow$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/popup/PopupContainerWithArrow;->createPreDragCondition()Lcom/zui/launcher/dragndrop/DragOptions$PreDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/popup/PopupContainerWithArrow;


# direct methods
.method constructor <init>(Lcom/zui/launcher/popup/PopupContainerWithArrow;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/zui/launcher/DropTarget$DragObject;Z)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setIconVisible(Z)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iget-object p1, p1, Lcom/zui/launcher/popup/ArrowPopup;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p2}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logDeepShortcutsOpen(Landroid/view/View;)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iget-boolean p2, p1, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v0, 0x0

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_3
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz p1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPreDragStart(Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    iget-boolean v0, p1, Lcom/zui/launcher/popup/ArrowPopup;->mIsAboveIcon:Z

    const/4 v1, 0x4

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1}, Lcom/zui/launcher/WorkspaceIconCompat;->isLayoutHorizontal()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-nez p1, :cond_4

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1, v0}, Lcom/zui/launcher/WorkspaceIconCompat;->setIconVisible(Z)V

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->g(Lcom/zui/launcher/popup/PopupContainerWithArrow;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreDragCondition().shouldStartDrag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {v1}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->f(Lcom/zui/launcher/popup/PopupContainerWithArrow;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/133009122"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/popup/PopupContainerWithArrow$a;->a:Lcom/zui/launcher/popup/PopupContainerWithArrow;

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->f(Lcom/zui/launcher/popup/PopupContainerWithArrow;)I

    move-result p0

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
