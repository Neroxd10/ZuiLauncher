.class public Lcom/zui/launcher/widget/custom/CustomWidgetManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/widget/custom/CustomWidgetManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private b:I

.field private final c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/plugins/CustomWidgetPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/widget/custom/a;->a:Lcom/zui/launcher/widget/custom/a;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    iput-object p1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->a:Landroid/content/Context;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->d:Ljava/util/List;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    const-class v0, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method private a(Lcom/android/systemui/plugins/CustomWidgetPlugin;)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/zui/launcher/widget/custom/CustomWidgetManager;
    .locals 1

    new-instance v0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;

    invoke-direct {v0, p0}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private static c(ILcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;Landroid/content/Context;)Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;
    .locals 3

    new-instance v0, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;ZI)V

    new-instance p2, Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#custom-widget-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p3, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getLabel()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getResizeMode()I

    move-result p0

    iput p0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getSpanX()I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getSpanY()I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getMinSpanX()I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    invoke-interface {p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->getMinSpanY()I

    move-result p0

    iput p0, v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    return-object v0
.end method


# virtual methods
.method public getWidgetIdForCustomProvider(Landroid/content/ComponentName;)I
    .locals 1
    .param p1    # Landroid/content/ComponentName;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    rsub-int/lit8 p0, p0, -0x64

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getWidgetProvider(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    rsub-int/lit8 p1, p1, -0x64

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    iget-object p0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iget-object v1, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    iget v1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :try_start_0
    invoke-static {p2}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    iget v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    invoke-static {v0, p1, v1, p2}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c(ILcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/os/Parcel;Landroid/content/Context;)Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;

    move-result-object p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iget-object p2, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    iget v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->f:Ljava/util/function/Consumer;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget p1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->b:I

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->onPluginConnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->a(Lcom/android/systemui/plugins/CustomWidgetPlugin;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->d:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->getWidgetProvider(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->e:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->onPluginDisconnected(Lcom/android/systemui/plugins/CustomWidgetPlugin;)V

    return-void
.end method

.method public onViewCreated(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;

    iget-object p0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->c:Landroid/util/SparseArray;

    iget v0, v0, Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;->providerId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/CustomWidgetPlugin;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/CustomWidgetPlugin;->onViewCreated(Landroid/appwidget/AppWidgetHostView;)V

    return-void
.end method

.method public setWidgetRefreshCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->f:Ljava/util/function/Consumer;

    return-void
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/zui/launcher/widget/custom/CustomAppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/widget/custom/CustomWidgetManager;->d:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method
