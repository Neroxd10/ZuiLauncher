.class public Lcom/zui/quickstep/RecentsAnimationDeviceState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;
.implements Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/quickstep/SysUINavigationMode;

.field private final c:Lcom/zui/launcher/util/DefaultDisplay;

.field private final d:I

.field private e:I

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

.field private i:Lcom/zui/quickstep/util/NavBarPosition;

.field private final j:Landroid/graphics/Region;

.field private k:Z

.field private l:F

.field private m:Z

.field private final n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Landroid/content/BroadcastReceiver;

.field private p:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private q:Ljava/lang/Runnable;

.field private r:Lcom/zui/quickstep/OrientationTouchTransformer;

.field private s:Landroid/view/OrientationEventListener;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Landroid/graphics/Region;

.field private x:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

.field private final y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f:Ljava/util/ArrayList;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->j:Landroid/graphics/Region;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->n:Ljava/util/ArrayList;

    new-instance v0, Lcom/zui/quickstep/RecentsAnimationDeviceState$a;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState$a;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->o:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState$b;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->p:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    new-instance v0, Lcom/zui/quickstep/RecentsAnimationDeviceState$c;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState$c;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->q:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->t:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->u:I

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->v:Z

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/quickstep/SysUINavigationMode;

    iput-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b:Lcom/zui/quickstep/SysUINavigationMode;

    sget-object v1, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/DefaultDisplay;

    iput-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/util/DefaultDisplay$Info;->id:I

    iput v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->d:I

    new-instance v1, Lcom/zui/quickstep/n0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/n0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->o:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v1, Lcom/zui/quickstep/s0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/s0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/zui/quickstep/RecentsAnimationDeviceState$d;

    iget v2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->d:I

    invoke-direct {v1, p0, v2}, Lcom/zui/quickstep/RecentsAnimationDeviceState$d;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;I)V

    iput-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->x:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    new-instance v2, Lcom/zui/quickstep/d;

    invoke-direct {v2, v1}, Lcom/zui/quickstep/d;-><init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V

    invoke-direct {p0, v2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object v3, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    new-instance v4, Lcom/zui/quickstep/t0;

    invoke-direct {v4, p0}, Lcom/zui/quickstep/t0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {v2, v1, v3, v4}, Lcom/zui/quickstep/OrientationTouchTransformer;-><init>(Landroid/content/res/Resources;Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/quickstep/OrientationTouchTransformer$a;)V

    iput-object v2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v1, p0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    new-instance v1, Lcom/zui/quickstep/r0;

    invoke-direct {v1, p0}, Lcom/zui/quickstep/r0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    invoke-direct {p0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v1, v0, [Ljava/lang/String;

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y:Ljava/util/List;

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y:Ljava/util/List;

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/zui/launcher/util/SecureSettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Lcom/zui/quickstep/o0;

    invoke-direct {v3, p0}, Lcom/zui/quickstep/o0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    const-string v4, "user_setup_complete"

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/zui/launcher/util/SecureSettingsObserver;-><init>(Landroid/content/ContentResolver;Lcom/zui/launcher/util/SecureSettingsObserver$OnChangeListener;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/zui/launcher/util/SecureSettingsObserver;->getValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->C:Z

    if-nez v0, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/util/SecureSettingsObserver;->register()V

    new-instance v0, Lcom/zui/quickstep/y;

    invoke-direct {v0, v1}, Lcom/zui/quickstep/y;-><init>(Lcom/zui/launcher/util/SecureSettingsObserver;)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    :cond_3
    new-instance v0, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState$e;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->s:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private A(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private C()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->p:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    new-instance v0, Lcom/zui/quickstep/p0;

    invoke-direct {v0, p0}, Lcom/zui/quickstep/p0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->z:Ljava/lang/Runnable;

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method private D()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->p(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y(I)V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m:Z

    return p1
.end method

.method static synthetic b(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->z()V

    return-void
.end method

.method static synthetic c(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->u:I

    return p0
.end method

.method static synthetic d(Lcom/zui/quickstep/RecentsAnimationDeviceState;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->D()V

    return-void
.end method

.method static synthetic e(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->B:Z

    return p1
.end method

.method static synthetic f(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A:Z

    return p0
.end method

.method static synthetic g(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A:Z

    return p1
.end method

.method static synthetic h(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->p(Z)V

    return-void
.end method

.method static synthetic i(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->d:I

    return p0
.end method

.method static synthetic j(Lcom/zui/quickstep/RecentsAnimationDeviceState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->v:Z

    return p1
.end method

.method static synthetic k(Lcom/zui/quickstep/RecentsAnimationDeviceState;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->q:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic l(Lcom/zui/quickstep/RecentsAnimationDeviceState;Landroid/graphics/Region;)Landroid/graphics/Region;
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->w:Landroid/graphics/Region;

    return-object p1
.end method

.method static synthetic m(Lcom/zui/quickstep/RecentsAnimationDeviceState;)I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->t:I

    return p0
.end method

.method static synthetic n(Lcom/zui/quickstep/RecentsAnimationDeviceState;I)I
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->t:I

    return p1
.end method

.method private o()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->p:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->z:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method private p(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->g(ZLcom/zui/launcher/util/DefaultDisplay$Info;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->k()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y(I)V

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A:Z

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/zui/launcher/testing/TestProtocol;->sDisableSensorRotation:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->u:I

    iput p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->t:I

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->s:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->s:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private q(Landroid/view/MotionEvent;Landroid/content/Context;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0, p1, p2}, Lcom/zui/quickstep/OrientationTouchTransformer;->h(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private y(I)V
    .locals 0

    return-void
.end method

.method private z()V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->o:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method B(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->q(Landroid/view/MotionEvent;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/zui/launcher/util/DefaultDisplay$Info;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/DefaultDisplay$Info;-><init>(Landroid/content/Context;)V

    sget-boolean v1, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "event not in Display, retrieve it:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b/158017601"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->onDisplayInfoChanged(Lcom/zui/launcher/util/DefaultDisplay$Info;I)V

    :cond_3
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->s(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public addNavigationModeChangedCallback(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;->onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    new-instance v0, Lcom/zui/quickstep/q0;

    invoke-direct {v0, p0, p1}, Lcom/zui/quickstep/q0;-><init>(Lcom/zui/quickstep/RecentsAnimationDeviceState;Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canStartSystemGesture()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canStartSystemGesture, mSystemUiStateFlags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecentsAnimationDeviceState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    and-int/lit16 p0, p0, 0x800

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canTriggerAssistantAction(Landroid/view/MotionEvent;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->k:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->q(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isLockToAppActive()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public clearOrientationTransformRect()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->l()V

    return-void
.end method

.method public destroy()V
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->f:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "DeviceState:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  canStartSystemGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->canStartSystemGesture()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  systemUiFlagsDesc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->getSystemUiStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantAvailable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  assistantDisabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isAssistantGestureDisabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  currentActiveRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getCurrentActiveRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  displayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  isUserUnlocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDefaultDisplay.getInfo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->f(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAssistantVisibility()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->l:F

    return p0
.end method

.method public getCurrentActiveRotation()I
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez v0, :cond_0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->e:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->i()I

    move-result p0

    return p0
.end method

.method public getDisplayId()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->d:I

    return p0
.end method

.method public getDisplayRotation()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->e:I

    return p0
.end method

.method public getGestureBlockedActivityPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/zui/quickstep/e;->a:Lcom/zui/quickstep/e;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getNavBarPosition()Lcom/zui/quickstep/util/NavBarPosition;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->i:Lcom/zui/quickstep/util/NavBarPosition;

    return-object p0
.end method

.method public getNavMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-object p0
.end method

.method public getSystemUiStateFlags()I
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    return p0
.end method

.method public isAccessibilityMenuAvailable()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isAccessibilityMenuShortcutAvailable()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isBubblesExpanded()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit16 p0, p0, 0x4000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isButtonNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->THREE_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyGesturalNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGesturalNavMode()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->TWO_BUTTONS:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

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

.method public isGestureBlockedActivity(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y:Ljava/util/List;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isGlobalActionsShowing()Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    const v0, 0x8000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHomeDisabled()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInDeferredGestureRegion(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->j:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    return p0
.end method

.method public isInExclusionRegion(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->w:Landroid/graphics/Region;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    sget-object v1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p0, v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInSwipeUpTouchRegion(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->r(FF)Z

    move-result p0

    return p0
.end method

.method public isInSwipeUpTouchRegion(Landroid/view/MotionEvent;I)Z
    .locals 1

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->r(FF)Z

    move-result p0

    return p0
.end method

.method public isKeyguardShowingOccluded()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockToAppActive()Z
    .locals 0

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isLockToAppActive()Z

    move-result p0

    return p0
.end method

.method public isOverviewDisabled()Z
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isScreenPinningActive()Z
    .locals 1

    iget p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserSetupComplete()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->C:Z

    return p0
.end method

.method public isUserUnlocked()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m:Z

    return p0
.end method

.method public onDisplayInfoChanged(Lcom/zui/launcher/util/DefaultDisplay$Info;I)V
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisplayInfoChanged~info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/util/DefaultDisplay$Info;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", flags:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/158017601"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->id:I

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->getDisplayId()I

    move-result v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p2, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    iput p2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->e:I

    iget-object p2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-boolean v0, p2, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lcom/zui/quickstep/util/NavBarPosition;

    invoke-direct {v0, p2, p1}, Lcom/zui/quickstep/util/NavBarPosition;-><init>(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->i:Lcom/zui/quickstep/util/NavBarPosition;

    invoke-virtual {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->updateGestureTouchRegions()V

    iget-object p2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/OrientationTouchTransformer;->d(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    iget p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->e:I

    iput p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->u:I

    iget-boolean p2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->v:Z

    if-nez p2, :cond_3

    iget p2, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->t:I

    if-ne p1, p2, :cond_4

    :cond_3
    iget-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->A:Z

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->B:Z

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->D()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;->removeChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;->addChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->onDisplayInfoChanged(Lcom/zui/launcher/util/DefaultDisplay$Info;I)V

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->NO_BUTTON:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->x:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->register()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->x:Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->unregister()V

    :goto_0
    new-instance v0, Lcom/zui/quickstep/util/NavBarPosition;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/zui/quickstep/util/NavBarPosition;-><init>(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    iput-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->i:Lcom/zui/quickstep/util/NavBarPosition;

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object v1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v1}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/quickstep/OrientationTouchTransformer;->o(Lcom/zui/quickstep/SysUINavigationMode$Mode;Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->C()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->o()V

    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-void
.end method

.method public onStartGesture()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    invoke-virtual {v0}, Lcom/zui/quickstep/OrientationTouchTransformer;->i()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/quickstep/RecentsAnimationDeviceState;->y(I)V

    :cond_0
    return-void
.end method

.method public synthetic r(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/SysUINavigationMode;->removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-void
.end method

.method public runOnUserUnlocked(Ljava/lang/Runnable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->m:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->n:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public synthetic s()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DefaultDisplay;->removeChangeListener(Lcom/zui/launcher/util/DefaultDisplay$DisplayInfoChangeListener;)V

    return-void
.end method

.method public setAssistantAvailable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->k:Z

    return-void
.end method

.method public setAssistantVisibility(F)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->l:F

    return-void
.end method

.method public setDeferredGestureRegion(Landroid/graphics/Region;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->j:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    return-void
.end method

.method public setSystemUiFlags(I)V
    .locals 0

    iput p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->g:I

    return-void
.end method

.method public synthetic t()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->o:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public synthetic u()F
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/shared/system/QuickStepContract;->getWindowCornerRadius(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method public updateGestureTouchRegions()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->h:Lcom/zui/quickstep/SysUINavigationMode$Mode;

    iget-boolean v0, v0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->r:Lcom/zui/quickstep/OrientationTouchTransformer;

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->c:Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {p0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/OrientationTouchTransformer;->d(Lcom/zui/launcher/util/DefaultDisplay$Info;)V

    return-void
.end method

.method public synthetic v()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->b:Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode;->removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    return-void
.end method

.method public synthetic w(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->C:Z

    return-void
.end method

.method public synthetic x()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/quickstep/RecentsAnimationDeviceState;->p:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method
