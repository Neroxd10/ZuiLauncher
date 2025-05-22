.class public Lcom/zui/launcher/drawer/DrawerLauncher;
.super Lcom/zui/launcher/Launcher;
.source ""


# instance fields
.field private S1:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic S2()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/drawer/DrawerLauncher;->S1:Ljava/lang/Runnable;

    return-void
.end method

.method public hideScrimView()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/drawer/DrawerLauncher;->S1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/drawer/DrawerLauncher;->S1:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInNormalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method protected initLauncherView()V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ScrimView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/Launcher;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected registerAppStoreReceiver()V
    .locals 0

    return-void
.end method

.method public showScrimView()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/drawer/a;

    invoke-direct {v0, p0}, Lcom/zui/launcher/drawer/a;-><init>(Lcom/zui/launcher/drawer/DrawerLauncher;)V

    iput-object v0, p0, Lcom/zui/launcher/drawer/DrawerLauncher;->S1:Ljava/lang/Runnable;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected unregisterAppStoreReceiver()V
    .locals 0

    return-void
.end method
