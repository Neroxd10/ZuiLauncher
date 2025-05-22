.class Lcom/zui/launcher/folder/Folder$k;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->animateOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    const/4 v0, 0x2

    iput v0, p1, Lcom/zui/launcher/folder/Folder;->x:I

    invoke-static {p1}, Lcom/zui/launcher/folder/Folder;->f(Lcom/zui/launcher/folder/Folder;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p1, :cond_0

    const p1, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleX(F)V

    iget-object v0, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v1, v0, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getNewScale()F

    move-result v1

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setScaleY(F)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p1

    const-string v0, "folder opened"

    invoke-virtual {p1, v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->resetElapsedContainerMillis(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object v0, p1, Lcom/zui/launcher/folder/Folder;->mLauncher:Lcom/zui/launcher/Launcher;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->mInfo:Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Launcher;->onFolderOpen(Lcom/zui/launcher/FolderInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->l:Lcom/zui/launcher/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/zui/launcher/folder/FolderPagedView;->setFocusOnFirstChild()V

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->g(Lcom/zui/launcher/folder/Folder;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p1, p1, Lcom/zui/launcher/folder/Folder;->k:Lcom/zui/launcher/folder/FolderIcon;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->getLauncher()Lcom/zui/launcher/Launcher;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$k;->a:Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0b003a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/Launcher;->applyDeskBlurSelfControl(J)V

    :cond_0
    return-void
.end method
