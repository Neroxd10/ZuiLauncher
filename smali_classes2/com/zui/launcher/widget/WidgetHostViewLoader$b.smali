.class Lcom/zui/launcher/widget/WidgetHostViewLoader$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/widget/WidgetHostViewLoader;->a()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

.field final synthetic b:Lcom/zui/launcher/widget/WidgetHostViewLoader;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/WidgetHostViewLoader;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget v1, v0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, v0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v3, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    iget v1, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    iget-object v4, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->a:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0, v3, v1, v4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v3, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iput-object v0, v3, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    iput v2, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v2, v2, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->estimateItemSize(Lcom/zui/launcher/ItemInfo;)[I

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v1, v1, v5

    invoke-direct {v2, v4, v1}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iput v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    iput v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iput-boolean v5, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v1, v1, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;->b:Lcom/zui/launcher/widget/WidgetHostViewLoader;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->e:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method
