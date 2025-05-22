.class public Lcom/zui/launcher/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/dragndrop/DragController$DragListener;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Ljava/lang/Runnable;

.field c:Lcom/zui/launcher/Launcher;

.field d:Landroid/os/Handler;

.field final e:Landroid/view/View;

.field final f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

.field g:I


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->b:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->e:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iput-object p1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    return-void
.end method

.method private a()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v3}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v3}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iput-object v1, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    return v2

    :cond_1
    new-instance v2, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/zui/launcher/widget/WidgetHostViewLoader$a;-><init>(Lcom/zui/launcher/widget/WidgetHostViewLoader;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->b:Ljava/lang/Runnable;

    new-instance v1, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;

    invoke-direct {v1, p0, v0}, Lcom/zui/launcher/widget/WidgetHostViewLoader$b;-><init>(Lcom/zui/launcher/widget/WidgetHostViewLoader;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iput-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->a:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->d:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static getDefaultOptionsForWidget(Landroid/content/Context;Lcom/zui/launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 7

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {p0, v1, v2, v0}, Lcom/zui/launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/content/Context;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    iget-object p1, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, p0

    float-to-int v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, p1

    int-to-float p1, v2

    div-float/2addr p1, p0

    float-to-int p0, p1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p0

    iget v5, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, p0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    const-string v3, "appWidgetMinWidth"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, p0

    const-string v3, "appWidgetMinHeight"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v2, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    const-string v1, "appWidgetMaxWidth"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, p0

    const-string p0, "appWidgetMaxHeight"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/dragndrop/DragController;->removeDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget v2, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    invoke-virtual {v0, v2}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iput v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->g:I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iget-object p0, p0, Lcom/zui/launcher/widget/WidgetHostViewLoader;->f:Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    :cond_1
    return-void
.end method

.method public onDragStart(Lcom/zui/launcher/DropTarget$DragObject;Lcom/zui/launcher/dragndrop/DragOptions;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/widget/WidgetHostViewLoader;->a()Z

    return-void
.end method
