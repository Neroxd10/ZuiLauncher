.class public Lcom/zui/quickstep/TouchInteractionService;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Service;",
        "Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/zui/launcher/tracing/nano/LauncherTraceProto;",
        ">;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/OverscrollPlugin;",
        ">;"
    }
.end annotation


# static fields
.field public static final DOUBLE_TRIGGER_MAX_DURATION:I = 0xc8

.field public static final ENABLE_DOUBLE_TRIGGER:Z = true

.field private static final H:Lcom/zui/quickstep/SwipeSharedState;

.field private static I:Z = false

.field private static J:Z = false

.field private static K:Z = false

.field public static final TAG:Ljava/lang/String; = "TouchInteractionService"

.field public static final TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private C:Z

.field private D:Lcom/zui/quickstep/views/LongSwipeView;

.field private E:Lcom/zui/launcher/util/ViewCache;

.field private F:Landroid/view/WindowManager;

.field private G:Landroid/content/BroadcastReceiver;

.field private a:I

.field private final b:Landroid/os/IBinder;

.field private final c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

.field private d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private e:Lcom/zui/quickstep/RecentsModel;

.field private f:Lcom/zui/quickstep/OverviewCommandHelper;

.field private g:Lcom/zui/quickstep/OverviewComponentObserver;

.field private h:Lcom/zui/quickstep/OverviewCallbacks;

.field private i:Lcom/android/systemui/shared/system/InputConsumerController;

.field private j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

.field private k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

.field private l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

.field private m:Landroid/view/Choreographer;

.field private n:Lcom/android/systemui/shared/system/InputMonitorCompat;

.field private o:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

.field private final p:Landroid/graphics/RectF;

.field private q:Landroid/content/ComponentName;

.field private r:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

.field private s:J

.field private t:Landroid/widget/Toast;

.field private u:I

.field private v:Landroid/content/res/Configuration;

.field private final w:Landroid/graphics/PointF;

.field private x:I

.field private y:Z

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/logging/EventLogArray;

    const-string v1, "touch_interaction_log"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/logging/EventLogArray;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    new-instance v0, Lcom/zui/quickstep/SwipeSharedState;

    invoke-direct {v0}, Lcom/zui/quickstep/SwipeSharedState;-><init>()V

    sput-object v0, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->I:Z

    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->J:Z

    const-string v1, "ro.zui.region"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "row"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.config.zuk.region"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ro.config.zui.region"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->K:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    new-instance v0, Lcom/zui/quickstep/TouchInteractionService$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$a;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->b:Landroid/os/IBinder;

    new-instance v0, Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;

    sget-object v1, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    invoke-direct {v0, v1}, Lcom/zui/quickstep/inputconsumers/ResetGestureInputConsumer;-><init>(Lcom/zui/quickstep/SwipeSharedState;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    sget-object v0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->p:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->w:Landroid/graphics/PointF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->z:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->A:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->C:Z

    new-instance v0, Lcom/zui/launcher/util/ViewCache;

    invoke-direct {v0}, Lcom/zui/launcher/util/ViewCache;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->E:Lcom/zui/launcher/util/ViewCache;

    new-instance v0, Lcom/zui/quickstep/TouchInteractionService$b;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/TouchInteractionService$b;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->G:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic C(Landroid/content/Intent;)V
    .locals 7

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startRecentsActivity(Landroid/content/Intent;JLcom/android/systemui/shared/system/RecentsAnimationListener;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private H()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070847

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    return-void
.end method

.method private I(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TouchInteractionService"

    const-string v2, "markDoubleTrigger, make double trigger-----"

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->x:I

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->w:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    :goto_0
    return v2

    :cond_1
    iput-boolean v1, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    return v1
.end method

.method private J(ZLandroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 6

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    sget-object v2, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v2, v0}, Lcom/zui/quickstep/SwipeSharedState;->updateRunningTask(Landroid/app/ActivityManager$RunningTaskInfo;)V

    const/4 v2, 0x0

    if-nez p1, :cond_0

    sget-object p1, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {p1, v2}, Lcom/zui/quickstep/SwipeSharedState;->clearAllState(Z)V

    :cond_0
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isKeyguardShowingOccluded()Z

    move-result p1

    const-string v3, "TouchInteractionService"

    if-eqz p1, :cond_1

    const-string p1, "newBaseConsumer, something showing over lockscreen"

    invoke-static {v3, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/TouchInteractionService;->l(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, v0, p2}, Lcom/zui/quickstep/TouchInteractionService;->v(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_2
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {p1}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "newBaseConsumer, runningTaskInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", sSwipeSharedState.recentsAnimationFinishInterrupted: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v5, v5, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", activityControl.isResumed(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->isResumed()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDeviceState.isFullyGesturalNavMode(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v5}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mOverviewComponentObserver.isHomeAndOverviewSame(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v5}, Lcom/zui/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", sSwipeSharedState.goingToLauncher: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v5, v5, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->isResumed()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isHomeTask(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, "error case, force set overview inputconsumer."

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-nez v0, :cond_4

    sget-object v2, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v3, v2, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    if-nez v3, :cond_4

    iget-boolean v2, v2, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    if-nez v2, :cond_4

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_4
    sget-object v2, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v3, v2, Lcom/zui/quickstep/SwipeSharedState;->recentsAnimationFinishInterrupted:Z

    if-eqz v3, :cond_5

    new-instance p1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget v0, v0, Lcom/zui/quickstep/SwipeSharedState;->nextRunningTaskId:I

    iput v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-direct {p0, p2, p1}, Lcom/zui/quickstep/TouchInteractionService;->n(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    move-result-object p0

    return-object p0

    :cond_5
    iget-boolean v2, v2, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    if-nez v2, :cond_a

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->isResumed()Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v2}, Lcom/zui/quickstep/SwipeSharedState;->isLastAnimationRunning()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/TouchInteractionService;->createOverviewInputConsumer(Landroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_7
    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v1}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->isInLiveTileMode()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/TouchInteractionService;->createOverviewInputConsumer(Landroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_8
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->q:Landroid/content/ComponentName;

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_9
    invoke-direct {p0, p2, v0}, Lcom/zui/quickstep/TouchInteractionService;->n(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    move-result-object p0

    return-object p0

    :cond_a
    :goto_1
    invoke-virtual {p0, p2}, Lcom/zui/quickstep/TouchInteractionService;->createOverviewInputConsumer(Landroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p0

    return-object p0
.end method

.method private K(ZLandroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->r:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;->isEnterGameMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "TouchInteractionService"

    if-eqz v0, :cond_1

    const-string p1, "newConsumer, isGamemode--------"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_1
    invoke-direct {p0, p2}, Lcom/zui/quickstep/TouchInteractionService;->q(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p0, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "newConsumer, systemuiState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v3}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p1, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->l(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_4
    sget-boolean v1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_5

    const-string v1, "b/158017601"

    const-string v3, "newConsumer:user is unlocked"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-nez v0, :cond_7

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    goto :goto_2

    :cond_7
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/zui/quickstep/TouchInteractionService;->J(ZLandroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "newBaseConsumer return base==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->r(Lcom/zui/quickstep/inputconsumers/InputConsumer;)V

    :cond_8
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object v3, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_9

    new-instance p2, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object p1, p2

    :cond_9
    iget-object p2, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p1, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;

    invoke-direct {p1, p0, v0}, Lcom/zui/quickstep/inputconsumers/ScreenPinnedInputConsumer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;)V

    :cond_a
    iget-object p2, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isAccessibilityMenuAvailable()Z

    move-result p2

    if-eqz p2, :cond_c

    new-instance p2, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p2, p0, v0, p1, v1}, Lcom/zui/quickstep/inputconsumers/AccessibilityInputConsumer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    move-object p1, p2

    goto :goto_3

    :cond_b
    iget-object p2, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isScreenPinningActive()Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    :cond_c
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "newConsumer, base==="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private L()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getAssistantVisibility()F

    move-result p0

    invoke-interface {v0, p0}, Lcom/zui/quickstep/ActivityControlHelper;->onAssistantVisibilityChanged(F)V

    :cond_0
    return-void
.end method

.method private M(Ljava/io/PrintWriter;Lcom/zui/quickstep/u4;)V
    .locals 0

    invoke-virtual {p2}, Lcom/zui/quickstep/u4;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const p2, 0x61ca1c36

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "clear-touch-log"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p0, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    invoke-virtual {p0}, Lcom/zui/launcher/logging/EventLogArray;->clear()V

    :goto_2
    return-void
.end method

.method private N(Lcom/zui/quickstep/inputconsumers/InputConsumer;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getActiveConsumerInHierarchy()Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->X()V

    :cond_0
    return-void
.end method

.method private O(Landroid/view/InputEvent;)V
    .locals 8

    instance-of v0, p1, Landroid/view/MotionEvent;

    const-string v1, "TouchInteractionService"

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInputEvent, ev==="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-nez v2, :cond_7

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->B(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p1, :cond_4

    const-string p1, "b/158017601"

    const-string v5, "TouchInteractionService.onInputEvent:isInSwipeUpTouchRegion"

    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->useSharedSwipeState()Z

    move-result p1

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {v5}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onConsumerAboutToBeSwitched()V

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/TouchInteractionService;->K(ZLandroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    sget-object v5, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getType()I

    move-result p1

    const-string v6, "setInputConsumer"

    invoke-virtual {v5, v6, p1}, Lcom/zui/launcher/logging/EventLogArray;->addLog(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v5, v0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->canTriggerAssistantAction(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v5}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v5

    sget-object v6, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iget-object v7, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-direct {p1, p0, v5, v6, v7}, Lcom/zui/quickstep/inputconsumers/AssistantTouchConsumer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/ActivityControlHelper;Lcom/zui/quickstep/inputconsumers/InputConsumer;Lcom/android/systemui/shared/system/InputMonitorCompat;)V

    goto :goto_0

    :cond_6
    sget-object p1, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    :goto_0
    iput-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    sget-object v5, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eq p1, v5, :cond_8

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->B(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->clearOrientationTransformRect()V

    :goto_1
    if-nez v2, :cond_a

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    sget-object v5, Lcom/zui/quickstep/inputconsumers/InputConsumer;->NO_OP:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eq p1, v5, :cond_9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onInputEvent, mUncheckedConsumer==="

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Y()V

    goto :goto_2

    :cond_a
    if-ne v2, v4, :cond_b

    invoke-direct {p0, v0}, Lcom/zui/quickstep/TouchInteractionService;->U(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_2
    if-eq v2, v4, :cond_c

    if-ne v2, v3, :cond_d

    :cond_c
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz p1, :cond_d

    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getActiveConsumerInHierarchy()Lcom/zui/quickstep/inputconsumers/InputConsumer;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->isConsumerDetachedFromGesture()Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    :cond_d
    const/4 v4, 0x0

    :goto_3
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p1, v0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->onMotionEvent(Landroid/view/MotionEvent;)V

    if-eqz v4, :cond_e

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->X()V

    :cond_e
    return-void
.end method

.method private P(Z)V
    .locals 7

    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    const/16 v1, 0xe

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v2}, Lcom/zui/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "android.intent.action.ALL_APPS"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    new-instance v2, Landroid/app/RemoteAction;

    const v3, 0x7f080222

    invoke-static {p0, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    const v4, 0x7f120089

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/high16 v6, 0xa000000

    invoke-static {p0, v1, p1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-direct {v2, v3, v5, v4, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    :goto_0
    return-void
.end method

.method private Q()V
    .locals 2
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/SystemUiProxy;->setLastSystemUiStateFlags(I)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->onSystemUiStateChanged()V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getSystemUiStateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/ProtoTracer;->start()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/ProtoTracer;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method private R(Z)V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/zui/launcher/provider/RestoreDbTask;->isPending(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v2}, Lcom/zui/quickstep/OverviewComponentObserver;->c()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {p1}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p1

    new-instance v0, Lcom/zui/quickstep/p2;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/p2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-interface {p1, v0}, Lcom/zui/quickstep/ActivityControlHelper;->createActivityInitListener(Ljava/util/function/BiPredicate;)Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper$ActivityInitListener;->register()V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    return-void

    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Lcom/zui/quickstep/TouchInteractionService;->preloadRecentsAnimation(Landroid/content/Intent;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private S(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "Available commands:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  clear-touch-log: Clears the touch interaction log"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private T()V
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zui.game.service.action.SHOW_GAME_IN_SMALL_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->G:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "com.zui.game.service.permission.SHOW_GAME_IN_SMALL_WINDOW"

    invoke-virtual {p0, v1, v0, v3, v2}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->C:Z

    :cond_0
    return-void
.end method

.method private U(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->w:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/zui/quickstep/TouchInteractionService;->s:J

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->a0()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Y()V

    :cond_1
    :goto_0
    return-void
.end method

.method private V()V
    .locals 5

    const-string v0, "TouchInteractionService"

    const-string v1, "remove long swipe view----start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->W()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v1}, Lcom/zui/quickstep/views/LongSwipeView;->attached()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    new-instance v2, Lcom/zui/quickstep/s2;

    invoke-direct {v2, p0}, Lcom/zui/quickstep/s2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remove long swipe view----caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private W()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/LongSwipeView;->attached()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/LongSwipeView;->setAttached(Z)V

    :cond_0
    return-void
.end method

.method private X()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->k:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-void
.end method

.method private Y()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->x:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/zui/quickstep/TouchInteractionService;->s:J

    return-void
.end method

.method private Z()V
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.has_enabled_quickstep_once"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "launcher.apps_view_shown"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/zui/quickstep/TouchInteractionService;->J:Z

    return p0
.end method

.method private a0()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/quickstep/o2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/o2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewCommandHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    return-object p0
.end method

.method private b0()V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->C:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->G:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->C:Z

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/OverviewComponentObserver;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/quickstep/TouchInteractionService;)Lcom/zui/quickstep/RecentsAnimationDeviceState;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Q()V

    return-void
.end method

.method static synthetic f(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->L()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->K:Z

    return v0
.end method

.method public static getSwipeSharedState()Lcom/zui/quickstep/SwipeSharedState;
    .locals 1

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    return-object v0
.end method

.method static synthetic h(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->s()V

    return-void
.end method

.method static synthetic i(Lcom/zui/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->R(Z)V

    return-void
.end method

.method public static isConnected()Z
    .locals 1

    sget-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->I:Z

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->J:Z

    return v0
.end method

.method private j()V
    .locals 5

    const-string v0, "TouchInteractionService"

    const-string v1, "add long swipe view---start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->E:Lcom/zui/launcher/util/ViewCache;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0d018f

    invoke-virtual {v1, v4, v2, v3}, Lcom/zui/launcher/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/views/LongSwipeView;

    iput-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->E:Lcom/zui/launcher/util/ViewCache;

    invoke-virtual {v2, v4, v1}, Lcom/zui/launcher/util/ViewCache;->recycleView(ILandroid/view/View;)V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add long swipe view---mWindowManager:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add long swipe view---mLongSwipeView.isAttachedToWindow():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->k()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    new-instance v1, Lcom/zui/quickstep/m2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/m2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/views/LongSwipeView;->postAttachIfNeeded(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private k()V
    .locals 4

    const-string v0, "TouchInteractionService"

    :try_start_0
    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->m()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add long swipe view---caller:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/zui/quickstep/views/LongSwipeView;->setAttached(Z)V

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    invoke-virtual {v2, p0, v1}, Lcom/zui/quickstep/views/LongSwipeView;->setup(Landroid/view/WindowManager;Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add long swipe view---error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private l(Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 7

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;

    sget-object v3, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-object v4, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v5, p0, Lcom/zui/quickstep/TouchInteractionService;->p:Landroid/graphics/RectF;

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/zui/quickstep/inputconsumers/DeviceLockedInputConsumer;-><init>(Landroid/content/Context;Lcom/zui/quickstep/SwipeSharedState;Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/graphics/RectF;I)V

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0
.end method

.method private m()Landroid/view/WindowManager$LayoutParams;
    .locals 9

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v1, 0x7f07083e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/16 v6, 0x7f6

    const v7, 0x800138

    const/4 v8, -0x3

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LongSwipeView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Service;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f1206de

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    const/4 p0, 0x0

    iput p0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v0, 0x30

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    invoke-virtual {v2, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    return-object v2
.end method

.method private n(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v6

    if-eqz v2, :cond_0

    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/zui/quickstep/TouchInteractionService;->A:Ljava/util/List;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    const/4 v7, 0x1

    new-instance v17, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;

    move-object/from16 v0, v17

    iget-object v3, v1, Lcom/zui/quickstep/TouchInteractionService;->e:Lcom/zui/quickstep/RecentsModel;

    iget-object v4, v1, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v4}, Lcom/zui/quickstep/OverviewComponentObserver;->getOverviewIntent()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v1, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v5}, Lcom/zui/quickstep/OverviewComponentObserver;->getHomeIntent()Landroid/content/Intent;

    move-result-object v5

    iget-object v8, v1, Lcom/zui/quickstep/TouchInteractionService;->h:Lcom/zui/quickstep/OverviewCallbacks;

    iget-object v9, v1, Lcom/zui/quickstep/TouchInteractionService;->i:Lcom/android/systemui/shared/system/InputConsumerController;

    new-instance v11, Lcom/zui/quickstep/c2;

    move-object v10, v11

    invoke-direct {v11, v1}, Lcom/zui/quickstep/c2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    sget-object v11, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-object v12, v1, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v13, v1, Lcom/zui/quickstep/TouchInteractionService;->p:Landroid/graphics/RectF;

    invoke-direct/range {p0 .. p1}, Lcom/zui/quickstep/TouchInteractionService;->o(Landroid/view/MotionEvent;)Z

    move-result v14

    iget-object v15, v1, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    iget-object v7, v1, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    move-object/from16 v16, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v16}, Lcom/zui/quickstep/inputconsumers/OtherActivityInputConsumer;-><init>(Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/zui/quickstep/RecentsModel;Landroid/content/Intent;Landroid/content/Intent;Lcom/zui/quickstep/ActivityControlHelper;ZLcom/zui/quickstep/OverviewCallbacks;Lcom/android/systemui/shared/system/InputConsumerController;Ljava/util/function/Consumer;Lcom/zui/quickstep/SwipeSharedState;Lcom/android/systemui/shared/system/InputMonitorCompat;Landroid/graphics/RectF;ZLcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/views/LongSwipeView;)V

    return-object v17
.end method

.method private o(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/gamemode/GameUtils;->isGameAppForeground()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isFullyGesturalNavMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isInExclusionRegion(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private p()V
    .locals 2

    const-string v0, "TouchInteractionService"

    const-string v1, "disposeEventHandlers---------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->o:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->o:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputMonitorCompat;->dispose()V

    iput-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    :cond_1
    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    invoke-virtual {v0}, Lcom/zui/quickstep/SwipeSharedState;->clearAnimationTarget()V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->V()V

    return-void
.end method

.method private q(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {v0}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->isLastAnimationFinished()Z

    move-result v0

    const-string v1, "TouchInteractionService"

    if-nez v0, :cond_0

    const-string p0, "doubleTrigger, last animation is still running--------"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doubleTrigger, mWaitingForSwipeUp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doubleTrigger, mWaitingTaskId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/zui/quickstep/TouchInteractionService;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doubleTrigger, mAM.getRunningTask(0).taskId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doubleTrigger, (System.currentTimeMillis() - mFirstUpTime):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/zui/quickstep/TouchInteractionService;->s:J

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/quickstep/TouchInteractionService;->y:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/zui/quickstep/TouchInteractionService;->x:I

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v1, v3}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/zui/quickstep/TouchInteractionService;->s:J

    sub-long/2addr v0, v4

    iget v2, p0, Lcom/zui/quickstep/TouchInteractionService;->u:I

    int-to-long v4, v2

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Y()V

    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->I(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private r(Lcom/zui/quickstep/inputconsumers/InputConsumer;)V
    .locals 1

    sget-boolean p0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz p0, :cond_0

    const-string p0, "b/139891609"

    const-string v0, "handleOrientationSetup.1"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->notifyOrientationSetup()V

    return-void
.end method

.method private s()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initInputMonitor, mDeviceState.isButtonNavMode()==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SystemUiProxy.INSTANCE.get(this).isActive()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v1}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchInteractionService"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->p()V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isButtonNavMode()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v0}, Lcom/zui/quickstep/SystemUiProxy;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "initInputMonitor, monitorGestureInput---------"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result v1

    const-string v2, "swipe-up"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/shared/system/InputMonitorCompat;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->m:Landroid/view/Choreographer;

    new-instance v3, Lcom/zui/quickstep/n2;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/n2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InputMonitorCompat;->getInputReceiver(Landroid/os/Looper;Landroid/view/Choreographer;Lcom/android/systemui/shared/system/InputChannelCompat$InputEventListener;)Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->o:Lcom/android/systemui/shared/system/InputChannelCompat$InputEventReceiver;

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->updateGestureTouchRegions()V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->r:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    if-nez v0, :cond_1

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->getGameModeEx(Landroid/os/Handler;)Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->r:Lcom/android/systemui/shared/gamemode/GamemodeUtilEx;

    :cond_1
    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->j()V

    :cond_2
    :goto_0
    return-void
.end method

.method private t()V
    .locals 3

    sget-object v0, Lcom/zui/quickstep/RecentsModel;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/RecentsModel;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->e:Lcom/zui/quickstep/RecentsModel;

    new-instance v0, Lcom/zui/quickstep/OverviewComponentObserver;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v0, p0, v1}, Lcom/zui/quickstep/OverviewComponentObserver;-><init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    new-instance v1, Lcom/zui/quickstep/OverviewCommandHelper;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v1, p0, v2, v0}, Lcom/zui/quickstep/OverviewCommandHelper;-><init>(Landroid/content/Context;Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/OverviewComponentObserver;)V

    iput-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-static {p0}, Lcom/zui/quickstep/OverviewCallbacks;->get(Landroid/content/Context;)Lcom/zui/quickstep/OverviewCallbacks;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->h:Lcom/zui/quickstep/OverviewCallbacks;

    invoke-static {}, Lcom/android/systemui/shared/system/InputConsumerController;->getRecentsAnimationInputConsumer()Lcom/android/systemui/shared/system/InputConsumerController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->i:Lcom/android/systemui/shared/system/InputConsumerController;

    sget-object v0, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/SwipeSharedState;->setOverviewComponentObserver(Lcom/zui/quickstep/OverviewComponentObserver;)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->i:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/InputConsumerController;->registerInputConsumer()V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Q()V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->L()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "backNotificationCount"

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Z()V

    sget-object v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    const-class v2, Lcom/android/systemui/plugins/OverscrollPlugin;

    invoke-virtual {v0, p0, v2, v1}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    new-instance v1, Lcom/zui/quickstep/l2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/l2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/OverviewComponentObserver;->setOverviewChangeListener(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->isHomeAndOverviewSame()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/TouchInteractionService;->P(Z)V

    return-void
.end method

.method private u()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->u:I

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->z:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->z:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->z:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->A:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->A:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->A:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->v:Landroid/content/res/Configuration;

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->T()V

    return-void
.end method

.method private v(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/UtilitiesZui;->isInHomeBlockList(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/systemui/shared/recents/utilities/UtilitiesZui;->isInRecentsBlockList(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "newBaseConsumer, "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is in block list."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TouchInteractionService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->B:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return p2

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic w(Lcom/zui/quickstep/TouchInteractionService;Lcom/zui/quickstep/inputconsumers/InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->N(Lcom/zui/quickstep/inputconsumers/InputConsumer;)V

    return-void
.end method

.method public static synthetic x(Lcom/zui/quickstep/TouchInteractionService;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->t()V

    return-void
.end method

.method public static synthetic y(Lcom/zui/quickstep/TouchInteractionService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->P(Z)V

    return-void
.end method

.method public static synthetic z(Lcom/zui/quickstep/TouchInteractionService;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->O(Landroid/view/InputEvent;)V

    return-void
.end method


# virtual methods
.method public synthetic A()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->k()V

    return-void
.end method

.method public synthetic B(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    sget-object p1, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic D()V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->W()V

    return-void
.end method

.method public synthetic E()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public synthetic F()V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const v0, 0x7f1206dd

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->H()V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sget-object v0, Lcom/zui/launcher/util/Executors;->MAIN_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/zui/launcher/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/r2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/r2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic G(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.quickstep.action.BACK_GESTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Service;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public createOverviewInputConsumer(Landroid/view/MotionEvent;)Lcom/zui/quickstep/inputconsumers/InputConsumer;
    .locals 3

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->c:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/BaseDraggingActivity;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    iget-boolean v1, v1, Lcom/zui/quickstep/SwipeSharedState;->goingToLauncher:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->f:Lcom/zui/quickstep/OverviewCommandHelper;

    invoke-direct {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->o(Landroid/view/MotionEvent;)Z

    move-result p1

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/zui/quickstep/inputconsumers/OverviewWithoutFocusInputConsumer;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/system/InputMonitorCompat;Lcom/zui/quickstep/OverviewCommandHelper;Z)V

    return-object v0

    :cond_2
    :goto_0
    new-instance p1, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->n:Lcom/android/systemui/shared/system/InputMonitorCompat;

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/zui/quickstep/inputconsumers/OverviewInputConsumer;-><init>(Lcom/zui/launcher/BaseDraggingActivity;Lcom/android/systemui/shared/system/InputMonitorCompat;ZLcom/zui/quickstep/RecentsAnimationDeviceState;)V

    return-object p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    array-length p1, p3

    const/4 v0, 0x0

    if-lez p1, :cond_4

    sget-boolean p1, Lcom/zui/launcher/Utilities;->IS_DEBUG_DEVICE:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/zui/quickstep/u4;

    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/zui/quickstep/u4;-><init>(Ljava/util/List;)V

    invoke-virtual {p1}, Lcom/zui/quickstep/u4;->a()Ljava/lang/String;

    move-result-object p3

    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1813a

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cmd"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p1}, Lcom/zui/quickstep/u4;->b()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    invoke-direct {p0, p2}, Lcom/zui/quickstep/TouchInteractionService;->S(Ljava/io/PrintWriter;)V

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/zui/quickstep/TouchInteractionService;->M(Ljava/io/PrintWriter;Lcom/zui/quickstep/u4;)V

    goto/16 :goto_3

    :cond_4
    invoke-static {p2}, Lcom/zui/launcher/config/FeatureFlags;->dump(Ljava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->dump(Ljava/io/PrintWriter;)V

    :cond_5
    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->dump(Ljava/io/PrintWriter;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    if-eqz p1, :cond_6

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/OverviewComponentObserver;->dump(Ljava/io/PrintWriter;)V

    :cond_6
    const-string p1, "TouchState:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    if-nez p1, :cond_7

    const/4 p1, 0x0

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p1

    invoke-interface {p1}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object p1

    :goto_2
    iget-object p3, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object p3

    invoke-interface {p3}, Lcom/zui/quickstep/ActivityControlHelper;->isResumed()Z

    move-result p3

    if-eqz p3, :cond_8

    const/4 v0, 0x1

    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  createdOverviewActivity="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  resumed="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    if-eqz p1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  useSharedState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p3}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->useSharedSwipeState()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p1}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->useSharedSwipeState()Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/zui/quickstep/TouchInteractionService;->H:Lcom/zui/quickstep/SwipeSharedState;

    const-string p3, "    "

    invoke-virtual {p1, p3, p2}, Lcom/zui/quickstep/SwipeSharedState;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  mConsumer="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/zui/quickstep/TouchInteractionService;->l:Lcom/zui/quickstep/inputconsumers/InputConsumer;

    invoke-interface {p3}, Lcom/zui/quickstep/inputconsumers/InputConsumer;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    sget-object p1, Lcom/zui/quickstep/TouchInteractionService;->TOUCH_INTERACTION_LOG:Lcom/zui/launcher/logging/EventLogArray;

    const-string p3, ""

    invoke-virtual {p1, p3, p2}, Lcom/zui/launcher/logging/EventLogArray;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    const-string p1, "LongSwipeView:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/zui/quickstep/TouchInteractionService;->D:Lcom/zui/quickstep/views/LongSwipeView;

    if-eqz p1, :cond_b

    invoke-virtual {p1, p2}, Lcom/zui/quickstep/views/LongSwipeView;->dump(Ljava/io/PrintWriter;)V

    :cond_b
    const-string p1, "ProtoTrace:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  file="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p3, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/ProtoTracer;->getTraceFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string p1, "TouchInteractionService"

    const-string v0, "Touch service connected"

    invoke-static {p1, v0}, Lcom/zui/launcher/Utilities;->printLogd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->v:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v0, 0x7f1206dd

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->v:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Lcom/zui/quickstep/OverviewComponentObserver;->getActivityControlHelper()Lcom/zui/quickstep/ActivityControlHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/zui/quickstep/ActivityControlHelper;->getCreatedActivity()Lcom/zui/launcher/BaseDraggingActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lcom/zui/quickstep/OverviewComponentObserver;->b(Landroid/content/ComponentName;I)Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0, v1}, Lcom/zui/quickstep/TouchInteractionService;->R(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->m:Landroid/view/Choreographer;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->d:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->F:Landroid/view/WindowManager;

    new-instance v0, Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    new-instance v1, Lcom/zui/quickstep/q4;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/q4;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->addNavigationModeChangedCallback(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    new-instance v1, Lcom/zui/quickstep/j2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/j2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->runOnUserUnlocked(Ljava/lang/Runnable;)V

    const v0, 0x7f1203cf

    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->q:Landroid/content/ComponentName;

    const-string v0, "TouchInteractionService"

    const-string v1, "onCreate-------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0}, Lcom/zui/quickstep/SysUINavigationMode;->attachNavBarInteractionMode()V

    sget-object v0, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/util/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    sget-object v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-virtual {v0}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->init()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->I:Z

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->u()V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "TouchInteractionService"

    const-string v1, "onDestroy-------"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->J:Z

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->i:Lcom/android/systemui/shared/system/InputConsumerController;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/InputConsumerController;->unregisterInputConsumer()V

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->g:Lcom/zui/quickstep/OverviewComponentObserver;

    invoke-virtual {v1}, Lcom/zui/quickstep/OverviewComponentObserver;->onDestroy()V

    sget-object v1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/uioverrides/plugins/PluginManagerWrapper;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->p()V

    iget-object v1, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->destroy()V

    sget-object v1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SystemUiProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/zui/quickstep/SystemUiProxy;->setProxy(Lcom/android/systemui/shared/recents/ISystemUiProxy;)V

    sget-object v1, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/ProtoTracer;->stop()V

    sget-object v1, Lcom/zui/quickstep/util/ProtoTracer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/util/ProtoTracer;

    invoke-virtual {v1, p0}, Lcom/zui/quickstep/util/ProtoTracer;->remove(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    sget-object v1, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/util/LauncherSplitScreenListener;

    invoke-virtual {v1}, Lcom/zui/quickstep/util/LauncherSplitScreenListener;->destroy()V

    sput-boolean v0, Lcom/zui/quickstep/TouchInteractionService;->I:Z

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iput-object v2, p0, Lcom/zui/quickstep/TouchInteractionService;->t:Landroid/widget/Toast;

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->b0()V

    return-void
.end method

.method public onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNavigationModeChanged, newMode==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TouchInteractionService"

    invoke-static {v0, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->s()V

    invoke-direct {p0}, Lcom/zui/quickstep/TouchInteractionService;->Z()V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/OverscrollPlugin;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverscrollPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/TouchInteractionService;->onPluginConnected(Lcom/android/systemui/plugins/OverscrollPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverscrollPlugin;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverscrollPlugin;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->onPluginDisconnected(Lcom/android/systemui/plugins/OverscrollPlugin;)V

    return-void
.end method

.method public preloadRecentsAnimation(Landroid/content/Intent;)V
    .locals 1

    sget-object p0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v0, Lcom/zui/quickstep/q2;

    invoke-direct {v0, p1}, Lcom/zui/quickstep/q2;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected shouldNotifyBackGesture()Z
    .locals 1

    iget v0, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getGestureBlockedActivityPackages()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected tryNotifyBackGesture()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/zui/quickstep/TouchInteractionService;->shouldNotifyBackGesture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget v1, p0, Lcom/zui/quickstep/TouchInteractionService;->a:I

    const-string v2, "backNotificationCount"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/zui/quickstep/TouchInteractionService;->j:Lcom/zui/quickstep/RecentsAnimationDeviceState;

    invoke-virtual {v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getGestureBlockedActivityPackages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/zui/quickstep/k2;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/k2;-><init>(Lcom/zui/quickstep/TouchInteractionService;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public writeToProto(Lcom/zui/launcher/tracing/nano/LauncherTraceProto;)V
    .locals 0

    iget-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    if-nez p0, :cond_0

    new-instance p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    invoke-direct {p0}, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;-><init>()V

    iput-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    :cond_0
    iget-object p0, p1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;->touchInteractionService:Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    iput-boolean p1, p0, Lcom/zui/launcher/tracing/nano/TouchInteractionServiceProto;->serviceConnected:Z

    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/tracing/nano/LauncherTraceProto;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TouchInteractionService;->writeToProto(Lcom/zui/launcher/tracing/nano/LauncherTraceProto;)V

    return-void
.end method
