.class public Lcom/zui/quickstep/TaskSystemShortcut$Pin;
.super Lcom/zui/quickstep/TaskSystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/TaskSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pin"
.end annotation


# static fields
.field private static final q:Ljava/lang/String; = "Pin"


# instance fields
.field private p:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const v0, 0x7f080270

    const v1, 0x7f1205a5

    invoke-direct {p0, v0, v1}, Lcom/zui/quickstep/TaskSystemShortcut;-><init>(II)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/quickstep/TaskSystemShortcut$Pin;->p:Landroid/os/Handler;

    return-void
.end method

.method static synthetic j(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/zui/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SystemUiProxy;->startScreenPinning(I)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/zui/quickstep/TaskSystemShortcut$Pin;->q:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getOnClickListener(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;
    .locals 2

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    new-instance v0, Lcom/zui/quickstep/q1;

    invoke-direct {v0, p0, p1, p2}, Lcom/zui/quickstep/q1;-><init>(Lcom/zui/quickstep/TaskSystemShortcut$Pin;Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)V

    return-object v0
.end method

.method public synthetic k(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 1

    new-instance p3, Lcom/zui/quickstep/r1;

    invoke-direct {p3, p1, p2}, Lcom/zui/quickstep/r1;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/zui/quickstep/views/TaskView;)V

    iget-object p0, p0, Lcom/zui/quickstep/TaskSystemShortcut$Pin;->p:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p3, p0}, Lcom/zui/quickstep/views/TaskView;->launchTask(ZLjava/util/function/Consumer;Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/zui/launcher/popup/SystemShortcut;->dismissTaskMenuView(Lcom/zui/launcher/BaseDraggingActivity;)V

    return-void
.end method
