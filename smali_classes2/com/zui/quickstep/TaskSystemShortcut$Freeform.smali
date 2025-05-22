.class public Lcom/zui/quickstep/TaskSystemShortcut$Freeform;
.super Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Freeform"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080278

    const v1, 0x7f1205a4

    invoke-direct {p0, v0, v1}, Lcom/zui/quickstep/TaskSystemShortcut$MultiWindow;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setNormalIconResId(I)V

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/TaskSystemShortcut;->setHighLightIconResId(I)V

    return-void
.end method

.method public static isTaskOnDefaultDisplay(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected isAvailable(Lcom/android/systemui/shared/recents/model/Task;Lcom/zui/launcher/BaseDraggingActivity;I)Z
    .locals 0

    sget-boolean p0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz p0, :cond_0

    iget-boolean p0, p1, Lcom/android/systemui/shared/recents/model/Task;->isResizeable:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->displayId:I

    invoke-static {p0}, Lcom/zui/quickstep/TaskSystemShortcut$Freeform;->isTaskOnDefaultDisplay(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->inZuiFreeformBlackList(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->supportsFreeformMultiWindow(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected makeLaunchOptions(Landroid/app/Activity;)Landroid/app/ActivityOptions;
    .locals 3

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeFreeformOptions()Landroid/app/ActivityOptions;

    move-result-object p0

    new-instance p1, Landroid/graphics/Rect;

    const/16 v0, 0x8c

    const/16 v1, 0x438

    const/16 v2, 0x3e8

    invoke-direct {p1, v0, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    return-object p0
.end method

.method protected onActivityStarted(Lcom/zui/launcher/BaseDraggingActivity;)Z
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    const/4 p0, 0x1

    return p0
.end method
