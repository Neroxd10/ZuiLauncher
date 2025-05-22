.class Lcom/zui/launcher/uioverrides/UiFactory$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/uioverrides/UiFactory;->onCreate(Lcom/zui/launcher/Launcher;)V
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

    iput-object p1, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 3

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    iget-object v1, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getLastState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-eq p1, v2, :cond_2

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_1

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq v1, p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    iget-object v0, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "launcher.home_bounce_count"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-gt p1, v0, :cond_3

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "launcher.apps_view_shown"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/zui/launcher/uioverrides/UiFactory$a;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_3
    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method
