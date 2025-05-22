.class Lcom/zui/launcher/Launcher$b2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->F2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->X(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->getDownRawX()I

    move-result v1

    int-to-float v1, v1

    iget-object p0, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/Launcher;->X(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->getDownRawY()I

    move-result p0

    int-to-float p0, p0

    invoke-static {p1, v1, p0}, Lcom/zui/launcher/views/OptionsPopupView;->showDefaultOptions(Lcom/zui/launcher/Launcher;FF)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->goToEditViewState(Z)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppState;->hasDualVibratorForHalo()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Launcher$b2;->a:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    const/16 p1, 0x58

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherAppState;->startDualVibratorForHalo(I)V

    :goto_0
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
