.class public Lcom/zui/launcher/widget/LauncherAppWidgetHost;
.super Landroid/appwidget/AppWidgetHost;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;
    }
.end annotation


# static fields
.field public static final APPWIDGET_HOST_ID:I = 0x400


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/widget/LauncherAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/zui/launcher/widget/PendingAppWidgetHostView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;

.field private e:I

.field private f:Ljava/util/function/IntConsumer;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->f:Ljava/util/function/IntConsumer;

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->f:Ljava/util/function/IntConsumer;

    iput p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    const/4 v0, 0x2

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->f:Ljava/util/function/IntConsumer;

    iput-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->f:Ljava/util/function/IntConsumer;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getAppWidgetHostId(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    return-void
.end method

.method private a(Lcom/zui/launcher/BaseDraggingActivity;I)Landroid/os/Bundle;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfo;

    if-nez v0, :cond_1

    return-object p2

    :cond_1
    invoke-virtual {p1, p0}, Lcom/zui/launcher/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    const-string p2, "android.activity.splashScreenStyle"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/BaseActivity;I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/launcher/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method private c(Lcom/zui/launcher/BaseActivity;I)V
    .locals 1

    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/zui/launcher/widget/g;

    invoke-direct {v0, p1, p2}, Lcom/zui/launcher/widget/g;-><init>(Lcom/zui/launcher/BaseActivity;I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private d(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->isListening()Z

    move-result p1

    if-nez p1, :cond_1

    iget p2, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    const/16 v0, 0xe

    and-int/2addr p2, v0

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startListening()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    iget p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Launcher"

    const-string p2, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addPendingView(ILcom/zui/launcher/widget/PendingAppWidgetHostView;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public addProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocateAppWidgetId()I
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->getAllAllocatedIds(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============allocateAppWidgetId  initId:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mContext: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x1e

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "============allocateAppWidgetId  duplicated:  host "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method public clearViews()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---clearViews-------- hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->clearViews()V

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public createView(Landroid/content/Context;ILcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---createView  hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  appWidgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   appWidget: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isCustomWidget()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    sget-object p2, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/custom/CustomWidgetManager;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->onViewCreated(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    move-result-object p1

    :cond_1
    invoke-virtual {p1, p2, p3}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->switchToErrorView()V

    return-object p1

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public deleteAppWidgetId(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---deleteAppWidgetId--------appWidgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public deleteHost()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---deleteHost-------- hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->deleteHost()V

    return-void
.end method

.method public getAppwidgetHostId()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    return p0
.end method

.method public hasDuplicatedWidgetId(I)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->g:I

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->getAllAllocatedIds(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------LauncherAppWidgetHost hasDuplicatedWidgetId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  result: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isListening()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAppWidgetRemoved(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->f:Ljava/util/function/IntConsumer;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/function/IntConsumer;->accept(I)V

    return-void
.end method

.method protected bridge synthetic onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    move-result-object p0

    return-object p0
.end method

.method protected onCreateView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetHostView;
    .locals 0

    iget-object p3, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    iget-object p3, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    invoke-direct {p3, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    move-object p1, p3

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object p1
.end method

.method protected onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d:Landroid/content/Context;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "**************  LauncherAppWidgetHost onProvidersChanged 22222**********"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppWidgetHost"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onProvidersChanged()V
    .locals 2

    const-string v0, "AppWidgetHost"

    const-string v1, "**************  LauncherAppWidgetHost onProvidersChanged **********"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;

    invoke-interface {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;->notifyWidgetProvidersChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeProviderChangeListener(Lcom/zui/launcher/widget/LauncherAppWidgetHost$ProviderChangedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setActivityResumed(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d(IZ)V

    return-void
.end method

.method public setActivityStarted(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d(IZ)V

    return-void
.end method

.method public setStateIsNormal(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->d(IZ)V

    return-void
.end method

.method public startBindFlow(Lcom/zui/launcher/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v0, "appWidgetProvider"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    const-string p3, "appWidgetProviderProfile"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startBindFlow(Lcom/zui/launcher/BaseAlertActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V
    .locals 1

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "appWidgetId"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    iget-object p2, p3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const-string v0, "appWidgetProvider"

    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p3}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p2

    const-string p3, "appWidgetProviderProfile"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startConfigActivity(Lcom/zui/launcher/BaseDraggingActivity;II)V
    .locals 6

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->a(Lcom/zui/launcher/BaseDraggingActivity;I)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const p2, 0x7f12006e

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->c(Lcom/zui/launcher/BaseActivity;I)V

    :goto_0
    return-void
.end method

.method public startListening()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---startListening---------hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    :try_start_0
    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->startListening()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---startListening----22222-----hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isBinderSizeError(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    instance-of v2, v1, Lcom/zui/launcher/widget/DeferredAppWidgetHostView;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public stopListening()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---stopListening--------hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->e:I

    invoke-super {p0}, Landroid/appwidget/AppWidgetHost;->stopListening()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherAppWidgetHost---stopListening----22222-----hostId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->getAppwidgetHostId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->debugAppWidgetHost(Ljava/lang/String;)V

    return-void
.end method
