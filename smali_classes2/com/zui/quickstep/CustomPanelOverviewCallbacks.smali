.class public Lcom/zui/quickstep/CustomPanelOverviewCallbacks;
.super Lcom/zui/quickstep/OverviewCallbacks;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/OverviewCallbacks;-><init>()V

    return-void
.end method

.method private a()Lcom/zui/launcher/Launcher;
    .locals 0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getCallback()Lcom/zui/launcher/LauncherModel$Callbacks;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    return-object p0
.end method


# virtual methods
.method public closeAllWindows()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/CustomPanelOverviewCallbacks;->a()Lcom/zui/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isForceInvisible()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x96

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Launcher;->hidePanel(ZI)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/zui/launcher/Launcher;->hidePanel(ZI)V

    :goto_1
    return-void
.end method
