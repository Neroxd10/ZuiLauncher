.class public Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
.super Lcom/zui/launcher/widget/NavigableAppWidgetHostView;
.source ""

# interfaces
.implements Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final C:Landroid/util/SparseBooleanArray;


# instance fields
.field private final A:Landroid/graphics/Rect;

.field private final B:Landroid/graphics/Rect;

.field private final h:Lcom/zui/launcher/CheckLongPressHelper;

.field private final i:Lcom/zui/launcher/StylusEventHelper;

.field private j:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private k:F

.field private l:Z

.field private m:Z

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected final mLauncher:Lcom/zui/launcher/Launcher;

.field private n:Z

.field private o:Ljava/lang/Runnable;

.field private p:F

.field private final q:Landroid/graphics/PointF;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Z

.field private final u:Ljava/lang/Object;

.field private v:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

.field private w:Landroid/widget/RemoteViews;

.field private final x:F

.field private y:Z

.field private z:Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/NavigableAppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->p:F

    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->q:Landroid/graphics/PointF;

    const-string v0, "com.zui.launcher.permission.widget.send.APPWIDGETID"

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->r:Ljava/lang/String;

    const-string v0, "com.zui.launcher.action.widget.appWidgetId"

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->s:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->t:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->u:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->y:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->A:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->B:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    new-instance v0, Lcom/zui/launcher/CheckLongPressHelper;

    invoke-direct {v0, p0, p0}, Lcom/zui/launcher/CheckLongPressHelper;-><init>(Landroid/view/View;Landroid/view/View$OnLongClickListener;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    new-instance v0, Lcom/zui/launcher/StylusEventHelper;

    new-instance v1, Lcom/zui/launcher/SimpleOnStylusPressListener;

    invoke-direct {v1, p0}, Lcom/zui/launcher/SimpleOnStylusPressListener;-><init>(Landroid/view/View;)V

    invoke-direct {v0, v1, p0}, Lcom/zui/launcher/StylusEventHelper;-><init>(Lcom/zui/launcher/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->i:Lcom/zui/launcher/StylusEventHelper;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const p1, 0x7f0805c5

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setBackgroundResource(I)V

    sget-boolean p1, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/zui/launcher/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setExecutor(Ljava/util/concurrent/Executor;)V

    :cond_0
    sget-boolean p1, Lcom/zui/launcher/Utilities;->ATLEAST_Q:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    const v0, 0x7f0401a0

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setOnLightBackground(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->x:F

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->v:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    :cond_2
    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->k()V

    return-void
.end method

.method private g()V
    .locals 5

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sget-object v3, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    move v1, v2

    :cond_1
    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    :goto_1
    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->j()V

    :cond_3
    return-void
.end method

.method private getAdvanceable()Landroid/widget/Advanceable;
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-boolean v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->m:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/Advanceable;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/widget/Advanceable;

    :cond_1
    :goto_0
    return-object v1
.end method

.method private h(Landroid/view/ViewGroup;)Z
    .locals 5

    instance-of v0, p1, Landroid/widget/AdapterView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private i()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOrientation()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()V
    .locals 3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->n:Z

    if-eq v1, v2, :cond_2

    iput-boolean v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->n:Z

    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->o:Ljava/lang/Runnable;

    if-nez v1, :cond_1

    new-instance v1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$b;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V

    iput-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->o:Ljava/lang/Runnable;

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->l()V

    :cond_2
    return-void
.end method

.method private k()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAdvanceable()Landroid/widget/Advanceable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->l()V

    return-void
.end method

.method private l()V
    .locals 6

    iget-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x4e20

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0xfa

    sget-object v4, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->C:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v0, v4

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->o:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private m(ILandroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "providerName"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->r:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private n(Landroid/graphics/Rect;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public beginDeferringUpdates()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->u:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelLongPress()V
    .locals 0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public endDeferringUpdates()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->u:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->w:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->w:Landroid/widget/RemoteViews;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->y:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->z:Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->B:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getEnforcedCornerRadius()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->x:F

    return p0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d0050

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getScaleToFit()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->p:F

    return p0
.end method

.method public getTranslationForCentering()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->q:Landroid/graphics/PointF;

    return-object p0
.end method

.method public handleDrag(Landroid/graphics/Rect;I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->B:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->n(Landroid/graphics/Rect;I)V

    return-void
.end method

.method public hasEnforcedCornerRadius()Z
    .locals 0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getClipToOutline()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->k:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->m:Z

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->g()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->j:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->i()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->j:Z

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->m:Z

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->g()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onDraw(Landroid/graphics/Canvas;)V

    iget-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->y:Z

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->z:Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;->onDragContentChanged()V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->t:Z

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->t:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v2, v2, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v2}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->m(ILandroid/content/ComponentName;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->i:Lcom/zui/launcher/StylusEventHelper;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/StylusEventHelper;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->k:F

    invoke-static {p0, v0, p1, v1}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_5
    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->l:Z

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->i:Lcom/zui/launcher/StylusEventHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/BaseDragLayer;->setTouchCompleteListener(Lcom/zui/launcher/views/BaseDragLayer$TouchCompleteListener;)V

    :cond_9
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$a;

    invoke-direct {p1, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView$a;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    invoke-direct {p0, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h(Landroid/view/ViewGroup;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->l:Z

    iget-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->y:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->v:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->A:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, p2}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchComplete()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->k:F

    invoke-static {p0, v0, p1, v2}, Lcom/zui/launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->h:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/CheckLongPressHelper;->cancelLongPress()V

    :cond_2
    :goto_0
    return v1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onWindowVisibilityChanged(I)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->j()V

    return-void
.end method

.method public reInflate()V
    .locals 3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Z

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->bindAppWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method public setScaleToFit(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->p:F

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    return-void
.end method

.method public setTranslationForCentering(FF)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->q:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->setTranslationX(F)V

    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetHostView;->setTranslationY(F)V

    return-void
.end method

.method protected shouldAllowDirectClick()Z
    .locals 3

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ItemInfo;

    iget v0, p0, Lcom/zui/launcher/ItemInfo;->spanX:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->spanY:I

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public startDrag(Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->y:Z

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->z:Lcom/zui/launcher/widget/dragndrop/AppWidgetHostViewDragListener;

    return-void
.end method

.method public switchToErrorView()V
    .locals 3

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->g()V

    invoke-direct {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->i()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->j:Z

    return-void
.end method
