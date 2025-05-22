.class public abstract Lcom/zui/quickstep/BaseRecentsActivity;
.super Lcom/zui/launcher/BaseDraggingActivity;
.source ""


# instance fields
.field private k:Landroid/content/res/Configuration;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/BaseDraggingActivity;-><init>()V

    return-void
.end method

.method private e()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->createDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onDeviceProfileInitiated()V

    return-void
.end method


# virtual methods
.method protected createDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 1

    sget-object v0, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/DeviceProfile;->copy(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "Misc:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/BaseActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method protected abstract initViews()V
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->startHome()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/BaseRecentsActivity;->k:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit16 v0, v0, 0x480

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->onHandleConfigChanged()V

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/BaseRecentsActivity;->k:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object p1, p0, Lcom/zui/quickstep/BaseRecentsActivity;->k:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->e()V

    invoke-virtual {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->initViews()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object p1

    const v0, 0x7f0401a0

    invoke-static {p0, v0}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(IZ)V

    invoke-static {p0}, Lcom/zui/quickstep/RecentsActivityTracker;->onRecentsActivityCreate(Lcom/zui/quickstep/BaseRecentsActivity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onDestroy()V

    invoke-static {p0}, Lcom/zui/quickstep/RecentsActivityTracker;->onRecentsActivityDestroy(Lcom/zui/quickstep/BaseRecentsActivity;)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onEnterAnimationComplete(Landroid/content/Context;)V

    return-void
.end method

.method protected onHandleConfigChanged()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;

    invoke-direct {p0}, Lcom/zui/quickstep/BaseRecentsActivity;->e()V

    const/4 v0, 0x1

    const v1, 0x35d8b

    invoke-static {p0, v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->reapplyUi()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-static {p0}, Lcom/zui/quickstep/RecentsActivityTracker;->onRecentsActivityNewIntent(Lcom/zui/quickstep/BaseRecentsActivity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onStop()V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/BaseRecentsActivity;->onTrimMemory(I)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/UiFactory;->onTrimMemory(Landroid/content/Context;I)V

    return-void
.end method

.method public startHome()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
