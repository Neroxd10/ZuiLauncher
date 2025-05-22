.class public Lcom/zui/quickstep/logging/StatsLogCompatManager;
.super Lcom/zui/launcher/logging/StatsLogManager;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/logging/StatsLogManager;-><init>()V

    return-void
.end method

.method private static a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/stats/launcher/nano/LauncherTarget;)V
    .locals 0

    return-void
.end method

.method public static fillInLauncherExtension(Landroid/view/View;Landroid/stats/launcher/nano/LauncherExtension;)Z
    .locals 5

    invoke-static {p0}, Lcom/zui/launcher/logging/StatsLogUtils;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ItemInfo;

    if-eqz v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    new-instance v3, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v3}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    new-instance v4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    invoke-direct {v4}, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;-><init>()V

    invoke-interface {v0, p0, v2, v3, v4}, Lcom/zui/launcher/logging/StatsLogUtils$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    iget-object p0, p1, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    aget-object p0, p0, v1

    invoke-static {v3, p0}, Lcom/zui/quickstep/logging/StatsLogCompatManager;->a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/stats/launcher/nano/LauncherTarget;)V

    iget-object p0, p1, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-static {v4, p0}, Lcom/zui/quickstep/logging/StatsLogCompatManager;->a(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Landroid/stats/launcher/nano/LauncherTarget;)V

    return p1

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 1

    new-instance p2, Landroid/stats/launcher/nano/LauncherExtension;

    invoke-direct {p2}, Landroid/stats/launcher/nano/LauncherExtension;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/stats/launcher/nano/LauncherTarget;

    iput-object v0, p2, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    iget-object p0, p0, Lcom/zui/launcher/logging/StatsLogManager;->mStateProvider:Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;

    invoke-interface {p0}, Lcom/zui/launcher/logging/StatsLogUtils$LogStateProvider;->getCurrentState()I

    invoke-static {p1, p2}, Lcom/zui/quickstep/logging/StatsLogCompatManager;->fillInLauncherExtension(Landroid/view/View;Landroid/stats/launcher/nano/LauncherExtension;)Z

    return-void
.end method

.method public logTaskLaunch(Landroid/view/View;Lcom/zui/launcher/util/ComponentKey;)V
    .locals 0

    new-instance p0, Landroid/stats/launcher/nano/LauncherExtension;

    invoke-direct {p0}, Landroid/stats/launcher/nano/LauncherExtension;-><init>()V

    const/4 p2, 0x2

    new-array p2, p2, [Landroid/stats/launcher/nano/LauncherTarget;

    iput-object p2, p0, Landroid/stats/launcher/nano/LauncherExtension;->srcTarget:[Landroid/stats/launcher/nano/LauncherTarget;

    invoke-static {p1, p0}, Lcom/zui/quickstep/logging/StatsLogCompatManager;->fillInLauncherExtension(Landroid/view/View;Landroid/stats/launcher/nano/LauncherExtension;)Z

    return-void
.end method

.method public verify()V
    .locals 0

    return-void
.end method
