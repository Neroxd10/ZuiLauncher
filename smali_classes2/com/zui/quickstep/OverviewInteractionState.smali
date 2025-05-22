.class public Lcom/zui/quickstep/OverviewInteractionState;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/OverviewInteractionState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/os/Handler;

.field private final c:Landroid/os/Handler;

.field private d:Lcom/android/systemui/shared/recents/ISystemUiProxy;

.field private e:F

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/e0;->a:Lcom/zui/quickstep/e0;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/OverviewInteractionState;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->e:F

    iput-object p1, p0, Lcom/zui/quickstep/OverviewInteractionState;->a:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/zui/quickstep/g0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/g0;-><init>(Lcom/zui/quickstep/OverviewInteractionState;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->b:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/zui/quickstep/f0;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/f0;-><init>(Lcom/zui/quickstep/OverviewInteractionState;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->c:Landroid/os/Handler;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SysUINavigationMode;

    new-instance v0, Lcom/zui/quickstep/d0;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/d0;-><init>(Lcom/zui/quickstep/OverviewInteractionState;)V

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->i(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    return-void
.end method

.method private a(FZ)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->d:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    return-void
.end method

.method private b(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->a(FZ)V

    return v2

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/shared/recents/ISystemUiProxy;

    iput-object p1, p0, Lcom/zui/quickstep/OverviewInteractionState;->d:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    :goto_1
    return v2
.end method

.method private c(Landroid/os/Message;)Z
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc9

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->e:F

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->c:Landroid/os/Handler;

    iget v0, p1, Landroid/os/Message;->what:I

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic d(Lcom/zui/quickstep/OverviewInteractionState;Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->i(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    return-void
.end method

.method public static synthetic e(Landroid/content/Context;)Lcom/zui/quickstep/OverviewInteractionState;
    .locals 1

    new-instance v0, Lcom/zui/quickstep/OverviewInteractionState;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/OverviewInteractionState;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic f(Lcom/zui/quickstep/OverviewInteractionState;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->b(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public static synthetic g(Lcom/zui/quickstep/OverviewInteractionState;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewInteractionState;->c(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private h()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode(Landroid/content/Context;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    return p0
.end method

.method private i(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewInteractionState;->j()V

    return-void
.end method

.method private j()V
    .locals 3

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewInteractionState;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "launcher.has_enabled_quickstep_once"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "launcher.apps_view_shown"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackButtonAlpha()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->e:F

    return p0
.end method

.method public getSystemUiStateFlags()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->f:I

    return p0
.end method

.method public setBackButtonAlpha(FZ)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewInteractionState;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/OverviewInteractionState;->b:Landroid/os/Handler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->b:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, v1, p2, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSystemUiProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/OverviewInteractionState;->c:Landroid/os/Handler;

    const/16 v0, 0xc8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSystemUiStateFlags(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/OverviewInteractionState;->f:I

    return-void
.end method
