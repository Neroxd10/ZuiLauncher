.class Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/LeosWidgetViewLoader;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/LeosWidgetViewLoader;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v1, v0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v0, v0, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v1, v0}, Lcom/zui/launcher/GadgetUtilities;->fetchView(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    iput-object v0, v1, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v2, v2, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/Workspace;->estimateItemSize(Lcom/zui/launcher/ItemInfo;ZZ)[I

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    aget v5, v1, v3

    aget v1, v1, v4

    invoke-direct {v2, v5, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    iput v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iput-boolean v4, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->b:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v2, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->d:Landroid/view/View;

    iget-object v1, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    instance-of v1, v0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0}, Lcom/zui/launcher/LeosWidgetInterface;->isReconfigurable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {v1, v4}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setReconfigurable(Z)V

    iget-object p0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader$a;->a:Lcom/zui/launcher/widget/LeosWidgetViewLoader;

    iget-object p0, p0, Lcom/zui/launcher/widget/LeosWidgetViewLoader;->e:Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-interface {v0}, Lcom/zui/launcher/LeosWidgetInterface;->getConfigure()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setConfigureIntent(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
