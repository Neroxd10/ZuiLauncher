.class public abstract Lcom/zui/launcher/LauncherCallbacksCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherCallbacks;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# instance fields
.field private a:Z

.field public isEnabled:Z

.field protected mLauncher:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/zui/launcher/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->isEnabled:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientResume()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientPause()V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    :cond_4
    :goto_1
    return-void
.end method

.method public static synthetic b(Lcom/zui/launcher/LauncherCallbacksCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->a()V

    return-void
.end method

.method public static debugOverlay(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->isDebugApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Overlay"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public deferCallbacksUntilNextResumeOrStop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract enableOverlayScreen(Z)V
.end method

.method public handleBackPressed()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract initClient(Landroid/content/SharedPreferences;)V
.end method

.method protected isOverlayEnabled(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 3

    const-string v0, "com.xui.launcher.action_switchonoff_funcscreen"

    invoke-interface {p2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->isEnabled:Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->isEnabled:Z

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-boolean p2, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->isEnabled:Z

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    iget-boolean p0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->isEnabled:Z

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherCallbacksCompat-----onAttachedToWindow-------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientAttachedToWindow()V

    return-void
.end method

.method public abstract onClientAttachedToWindow()V
.end method

.method public abstract onClientDestroy()V
.end method

.method public abstract onClientDetachedFromWindow()V
.end method

.method public abstract onClientHideOverlay(Z)V
.end method

.method public abstract onClientPause()V
.end method

.method public abstract onClientReattachOverlay()V
.end method

.method public abstract onClientResume()V
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "=========LauncherCallbacksCompat  onCreate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Overlay"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getPermanentPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->initClient(Landroid/content/SharedPreferences;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    :cond_1
    const-string p0, "-----LauncherCallbacksCompat-----onCreate--------"

    invoke-static {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherCallbacksCompat-----onDestroy--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----LauncherCallbacksCompat-----onDetachedFromWindow--------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientDetachedFromWindow()V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientReattachOverlay()V

    return-void
.end method

.method public onHomeIntent(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientHideOverlay(Z)V

    return-void
.end method

.method public onLauncherProviderChange()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    if-nez v0, :cond_0

    const-string v0, "-----LauncherCallbacksCompat-----onPause--------"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientPause()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "-----LauncherCallbacksCompat-----onResume--------"

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->a()V

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/zui/launcher/v1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/v1;-><init>(Lcom/zui/launcher/LauncherCallbacksCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->onClientResume()V

    :goto_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    const-string v0, "com.xui.launcher.action_switchonoff_funcscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->mLauncher:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->isOverlayEnabled(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherCallbacksCompat;->enableOverlayScreen(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/LauncherCallbacksCompat;->a:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/LauncherCallbacksCompat;->a()V

    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
