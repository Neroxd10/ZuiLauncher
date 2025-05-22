.class public Lcom/zui/launcher/util/DisplayController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/util/DisplayController$PortraitSize;,
        Lcom/zui/launcher/util/DisplayController$Info;,
        Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;
    }
.end annotation


# static fields
.field public static final CHANGE_ACTIVE_SCREEN:I = 0x1

.field public static final CHANGE_ALL:I = 0x1f

.field public static final CHANGE_DENSITY:I = 0x8

.field public static final CHANGE_FRAME_DELAY:I = 0x4

.field public static final CHANGE_ROTATION:I = 0x2

.field public static final CHANGE_SUPPORTED_BOUNDS:I = 0x10

.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/util/DisplayController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/hardware/display/DisplayManager;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/zui/launcher/util/DisplayController$Info;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/util/f;->a:Lcom/zui/launcher/util/f;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/util/DisplayController;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DisplayController;->d:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zui/launcher/util/DisplayController;->a:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/zui/launcher/util/DisplayController;->b:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    sget-boolean v1, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/util/DisplayController;->a:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, p1, v3, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/util/DisplayController;->c:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/zui/launcher/util/DisplayController;->c:Landroid/content/Context;

    new-instance v1, Lcom/zui/launcher/util/SimpleBroadcastReceiver;

    new-instance v3, Lcom/zui/launcher/util/g;

    invoke-direct {v3, p0}, Lcom/zui/launcher/util/g;-><init>(Lcom/zui/launcher/util/DisplayController;)V

    invoke-direct {v1, v3}, Lcom/zui/launcher/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iget-object v3, p0, Lcom/zui/launcher/util/DisplayController;->a:Landroid/content/Context;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Lcom/zui/launcher/util/DisplayController;->b:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    array-length v4, v3

    :goto_1
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/ApiWrapper;->isInternalDisplay(Landroid/view/Display;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v5, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v7, v6}, Lcom/zui/launcher/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/zui/launcher/util/DisplayController$Info;

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DisplayController;->b(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3, p1, v1, v2}, Lcom/zui/launcher/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;Lcom/zui/launcher/util/DisplayController$a;)V

    iput-object v0, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    iget-object p1, p0, Lcom/zui/launcher/util/DisplayController;->b:Landroid/hardware/display/DisplayManager;

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic a(Landroid/view/Display;)I
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/util/DisplayController;->c(Landroid/view/Display;)I

    move-result p0

    return p0
.end method

.method private b(Landroid/view/Display;)Landroid/content/Context;
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController;->c:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController;->a:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static c(Landroid/view/Display;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/Display;->getRefreshRate()F

    move-result p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v0, p0

    float-to-int p0, v0

    goto :goto_0

    :cond_0
    const/16 p0, 0x10

    :goto_0
    return p0
.end method

.method private d(Landroid/view/Display;)V
    .locals 6
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    invoke-static {v0}, Lcom/zui/launcher/util/DisplayController$Info;->b(Lcom/zui/launcher/util/DisplayController$Info;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-static {v0}, Lcom/zui/launcher/util/DisplayController$Info;->b(Lcom/zui/launcher/util/DisplayController$Info;)Ljava/util/Set;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DisplayController;->b(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/zui/launcher/util/DisplayController$Info;

    const/4 v5, 0x0

    invoke-direct {v4, v3, p1, v1, v5}, Lcom/zui/launcher/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Ljava/util/Set;Lcom/zui/launcher/util/DisplayController$a;)V

    const/4 p1, 0x0

    invoke-static {v4}, Lcom/zui/launcher/util/DisplayController$Info;->a(Lcom/zui/launcher/util/DisplayController$Info;)Lcom/zui/launcher/util/DisplayController$PortraitSize;

    move-result-object v1

    invoke-static {v0}, Lcom/zui/launcher/util/DisplayController$Info;->a(Lcom/zui/launcher/util/DisplayController$Info;)Lcom/zui/launcher/util/DisplayController$PortraitSize;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/zui/launcher/util/DisplayController$PortraitSize;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    iget p1, v4, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    iget v1, v0, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    if-eq p1, v1, :cond_2

    or-int/lit8 v2, v2, 0x2

    :cond_2
    iget p1, v4, Lcom/zui/launcher/util/DisplayController$Info;->singleFrameMs:I

    iget v1, v0, Lcom/zui/launcher/util/DisplayController$Info;->singleFrameMs:I

    if-eq p1, v1, :cond_3

    or-int/lit8 v2, v2, 0x4

    :cond_3
    iget p1, v4, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    iget v1, v0, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    if-ne p1, v1, :cond_4

    iget p1, v4, Lcom/zui/launcher/util/DisplayController$Info;->fontScale:F

    iget v1, v0, Lcom/zui/launcher/util/DisplayController$Info;->fontScale:F

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_5

    :cond_4
    or-int/lit8 v2, v2, 0x8

    :cond_5
    iget-object p1, v4, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object v0, v0, Lcom/zui/launcher/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    or-int/lit8 v2, v2, 0x10

    :cond_6
    if-eqz v2, :cond_7

    iput-object v4, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    sget-object p1, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/launcher/util/i;

    invoke-direct {v0, p0, v3, v2}, Lcom/zui/launcher/util/i;-><init>(Lcom/zui/launcher/util/DisplayController;Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public static synthetic e(Landroid/content/Context;)Lcom/zui/launcher/util/DisplayController;
    .locals 1

    new-instance v0, Lcom/zui/launcher/util/DisplayController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/util/DisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/zui/launcher/util/DisplayController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DisplayController;->i(Landroid/content/Intent;)V

    return-void
.end method

.method public static getSingleFrameMs(Landroid/content/Context;)I
    .locals 1

    sget-object v0, Lcom/zui/launcher/util/DisplayController;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/util/DisplayController;

    invoke-virtual {p0}, Lcom/zui/launcher/util/DisplayController;->getInfo()Lcom/zui/launcher/util/DisplayController$Info;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/util/DisplayController$Info;->singleFrameMs:I

    return p0
.end method

.method private h(Landroid/content/Context;I)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/util/DisplayController;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;

    iget-object v2, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    invoke-interface {v1, p1, v2, p2}, Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/zui/launcher/util/DisplayController$Info;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .locals 3

    iget-object p1, p0, Lcom/zui/launcher/util/DisplayController;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    iget v1, v0, Lcom/zui/launcher/util/DisplayController$Info;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v0, v0, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_1

    :cond_0
    const-string p1, "DisplayController"

    const-string v0, "Configuration changed, notifying listeners"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/util/DisplayController;->b:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DisplayController;->d(Landroid/view/Display;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addChangeListener(Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic g(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/util/DisplayController;->h(Landroid/content/Context;I)V

    return-void
.end method

.method public getInfo()Lcom/zui/launcher/util/DisplayController$Info;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    return-object p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/util/DisplayController;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v2, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    iget v3, v2, Lcom/zui/launcher/util/DisplayController$Info;->densityDpi:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v2, v2, Lcom/zui/launcher/util/DisplayController$Info;->fontScale:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    iget v3, v2, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    if-ne v1, v3, :cond_0

    invoke-static {v2}, Lcom/zui/launcher/util/DisplayController$Info;->a(Lcom/zui/launcher/util/DisplayController$Info;)Lcom/zui/launcher/util/DisplayController$PortraitSize;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/util/DisplayController$PortraitSize;

    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v2, v3, p1}, Lcom/zui/launcher/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/DisplayController$PortraitSize;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/util/DisplayController;->d(Landroid/view/Display;)V

    :cond_1
    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/util/DisplayController;->b:Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/zui/launcher/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/zui/launcher/util/DisplayController;->c(Landroid/view/Display;)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/util/DisplayController;->e:Lcom/zui/launcher/util/DisplayController$Info;

    iget v1, v1, Lcom/zui/launcher/util/DisplayController$Info;->singleFrameMs:I

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DisplayController;->d(Landroid/view/Display;)V

    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public removeChangeListener(Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/DisplayController;->d:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
