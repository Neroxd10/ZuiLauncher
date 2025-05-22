.class Lcom/zui/quickstep/OverviewCommandHelper$d;
.super Lcom/zui/quickstep/OverviewCommandHelper$c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/OverviewCommandHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/OverviewCommandHelper$c<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic g:Lcom/zui/quickstep/OverviewCommandHelper;


# direct methods
.method private constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/OverviewCommandHelper$d;->g:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$c;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/quickstep/OverviewCommandHelper;Lcom/zui/quickstep/OverviewCommandHelper$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/OverviewCommandHelper$d;-><init>(Lcom/zui/quickstep/OverviewCommandHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic d(Lcom/zui/launcher/BaseDraggingActivity;Ljava/lang/Boolean;)Z
    .locals 0

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/OverviewCommandHelper$d;->f(Lcom/zui/launcher/Launcher;Ljava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method protected e()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/OverviewCommandHelper$d;->g:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {p0}, Lcom/zui/quickstep/OverviewCommandHelper;->a(Lcom/zui/quickstep/OverviewCommandHelper;)Lcom/zui/quickstep/OverviewComponentObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method public f(Lcom/zui/launcher/Launcher;Ljava/lang/Boolean;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
