.class public Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;
.super Landroid/content/ContextWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/graphics/LauncherPreviewRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewContext"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/MainThreadInitializedObject;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/zui/launcher/InvariantDeviceProfile;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/zui/launcher/util/MainThreadInitializedObject;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/HashSet;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/pm/UserCache;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/launcher/pm/InstallSessionHelper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->a:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    iput-object p2, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->b:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    sget-object p2, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    new-instance v0, Lcom/zui/launcher/LauncherAppState;

    invoke-direct {v0, p0}, Lcom/zui/launcher/LauncherAppState;-><init>(Landroid/content/Context;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object p0
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method public getObject(Lcom/zui/launcher/util/MainThreadInitializedObject;Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "TT;>;",
            "Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->c:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Leaking unknown objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newLauncherIcons(Landroid/content/Context;Z)Lcom/zui/launcher/icons/LauncherIcons;
    .locals 11

    iget-object v0, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;

    iget-object v1, p0, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;->b:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v4, v1, Lcom/zui/launcher/InvariantDeviceProfile;->fillResIconDpi:I

    iget v5, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconBitmapSize:I

    const/4 v6, -0x1

    iget v8, v1, Lcom/zui/launcher/InvariantDeviceProfile;->iconVisualSizePx:I

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->supportChangeShape(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v7, p2

    invoke-direct/range {v1 .. v10}, Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext$a;-><init>(Lcom/zui/launcher/graphics/LauncherPreviewRenderer$PreviewContext;Landroid/content/Context;IIIZIZLcom/zui/launcher/graphics/LauncherPreviewRenderer$a;)V

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherAppState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/LauncherAppState;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->onTerminate()V

    return-void
.end method
