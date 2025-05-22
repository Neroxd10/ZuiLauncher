.class public Lcom/zui/launcher/appprediction/PredictionAppTracker;
.super Lcom/zui/launcher/model/AppLaunchTracker;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Landroid/app/prediction/AppPredictor;

.field private c:Landroid/app/prediction/AppPredictor;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/model/AppLaunchTracker;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/appprediction/h;

    invoke-direct {v1, p0}, Lcom/zui/launcher/appprediction/h;-><init>(Lcom/zui/launcher/appprediction/PredictionAppTracker;)V

    invoke-direct {p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    sget-object p1, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/InvariantDeviceProfile;

    new-instance v0, Lcom/zui/launcher/appprediction/g;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appprediction/g;-><init>(Lcom/zui/launcher/appprediction/PredictionAppTracker;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;I)Landroid/app/prediction/AppPredictor;
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/prediction/AppPredictionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/prediction/AppPredictionManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Landroid/app/prediction/AppPredictionContext$Builder;

    iget-object v2, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/prediction/AppPredictionContext$Builder;->setUiSurface(Ljava/lang/String;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/prediction/AppPredictionContext$Builder;->setPredictedTargetCount(I)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->getAppPredictionContextExtras(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/prediction/AppPredictionContext$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/prediction/AppPredictionContext$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictionContext$Builder;->build()Landroid/app/prediction/AppPredictionContext;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/prediction/AppPredictionManager;->createAppPredictionSession(Landroid/app/prediction/AppPredictionContext;)Landroid/app/prediction/AppPredictor;

    move-result-object p2

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->appPredictorCallback(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)Landroid/app/prediction/AppPredictor$Callback;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Landroid/app/prediction/AppPredictor;->registerPredictionUpdates(Ljava/util/concurrent/Executor;Landroid/app/prediction/AppPredictor$Callback;)V

    invoke-virtual {p2}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    return-object p2
.end method

.method private b()V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->c:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/prediction/AppPredictor;->destroy()V

    iput-object v1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->c:Landroid/app/prediction/AppPredictor;

    :cond_1
    return-void
.end method

.method private c(Landroid/os/Message;)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    iget-object v0, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->id:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    :goto_0
    invoke-virtual {p0}, Landroid/app/prediction/AppPredictor;->requestPredictionUpdate()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->c:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    if-eqz p0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/prediction/AppTargetEvent;

    invoke-virtual {p0, p1}, Landroid/app/prediction/AppPredictor;->notifyAppTargetEvent(Landroid/app/prediction/AppTargetEvent;)V

    :cond_4
    return v1

    :cond_5
    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b()V

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b()V

    sget-object p1, Lcom/zui/launcher/InvariantDeviceProfile;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/InvariantDeviceProfile;

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;I)Landroid/app/prediction/AppPredictor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->b:Landroid/app/prediction/AppPredictor;

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->OVERVIEW:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;I)Landroid/app/prediction/AppPredictor;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->c:Landroid/app/prediction/AppPredictor;

    return v1
.end method

.method public static synthetic d(Lcom/zui/launcher/appprediction/PredictionAppTracker;ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->f(ILcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method

.method public static synthetic e(Lcom/zui/launcher/appprediction/PredictionAppTracker;Landroid/os/Message;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->c(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method private f(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method private g(Landroid/app/prediction/AppTarget;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Landroid/app/prediction/AppTargetEvent$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Landroid/app/prediction/AppTargetEvent$Builder;-><init>(Landroid/app/prediction/AppTarget;I)V

    if-nez p2, :cond_0

    sget-object p2, Lcom/zui/launcher/model/AppLaunchTracker;->CONTAINER_DEFAULT:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, p2}, Landroid/app/prediction/AppTargetEvent$Builder;->setLaunchLocation(Ljava/lang/String;)Landroid/app/prediction/AppTargetEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTargetEvent$Builder;->build()Landroid/app/prediction/AppTargetEvent;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-static {p0, p2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getAppPredictionContextExtras(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)Landroid/os/Bundle;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onReturnedToHome()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    iget-object v0, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionAppTracker;->a:Landroid/os/Handler;

    invoke-static {p0, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onStartApp(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v1, Landroid/app/prediction/AppTargetId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->g(Landroid/app/prediction/AppTarget;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onStartShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Landroid/app/prediction/AppTarget$Builder;

    new-instance v1, Landroid/app/prediction/AppTargetId;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/prediction/AppTargetId;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, p1, p3}, Landroid/app/prediction/AppTarget$Builder;-><init>(Landroid/app/prediction/AppTargetId;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, p2}, Landroid/app/prediction/AppTarget$Builder;->setClassName(Ljava/lang/String;)Landroid/app/prediction/AppTarget$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/prediction/AppTarget$Builder;->build()Landroid/app/prediction/AppTarget;

    move-result-object p1

    invoke-direct {p0, p1, p4}, Lcom/zui/launcher/appprediction/PredictionAppTracker;->g(Landroid/app/prediction/AppTarget;Ljava/lang/String;)V

    return-void
.end method
