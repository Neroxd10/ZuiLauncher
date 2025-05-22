.class public Lcom/zui/launcher/Launcher;
.super Lcom/zui/launcher/BaseDraggingActivity;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherExterns;
.implements Lcom/zui/launcher/LauncherModel$Callbacks;
.implements Lcom/zui/launcher/LauncherProviderChangeListener;
.implements Lcom/zui/launcher/logging/UserEventDispatcher$UserEventDelegate;
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/Launcher$f2;,
        Lcom/zui/launcher/Launcher$e2;,
        Lcom/zui/launcher/Launcher$h2;,
        Lcom/zui/launcher/Launcher$g2;,
        Lcom/zui/launcher/Launcher$ContentObserverHandler;,
        Lcom/zui/launcher/Launcher$d2;,
        Lcom/zui/launcher/Launcher$AnimationListenerAdapter;,
        Lcom/zui/launcher/Launcher$CustomContentCallbacks;,
        Lcom/zui/launcher/Launcher$OnResumeCallback;,
        Lcom/zui/launcher/Launcher$c2;,
        Lcom/zui/launcher/Launcher$GuestureReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_MANAGED_PROFILE_ADDED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_ADDED"

.field public static final ACTION_MANAGED_PROFILE_REMOVED:Ljava/lang/String; = "android.intent.action.MANAGED_PROFILE_REMOVED"

.field public static final INDEX_AVERAGE:I = 0xd

.field private static final M1:Landroid/view/animation/Interpolator;

.field private static final N1:Landroid/view/animation/Interpolator;

.field private static O1:[B = null

.field public static final ON_CREATE_EVT:Ljava/lang/String; = "Launcher.onCreate"

.field private static final P1:Lcom/zui/launcher/ImageConverterJNI;

.field public static final PKG_UTOUCH:Ljava/lang/String; = "com.zui.utouchcore"

.field private static final Q1:[I

.field private static R1:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/Launcher$e2;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_BIND_PENDING_APPWIDGET:I = 0xc

.field public static final REQUEST_CONFIGURE_LEOSWIDGET:I = 0xf

.field protected static final REQUEST_LAST:I = 0x64

.field public static final REQUEST_RECONFIGURE_APPWIDGET:I = 0xd

.field public static final SETTINGS_KEY_START_APP_PARAM:Ljava/lang/String; = "start_app_param"

.field public static final TAG:Ljava/lang/String; = "Launcher"

.field public static final TAG_UNLOCKANIM:Ljava/lang/String; = "unlockanim"

.field public static final WALLPAPER_TEXT_COLOR_THRESHOLD:I = 0xb4


# instance fields
.field private A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

.field private A0:Landroid/appwidget/AppWidgetProviderInfo;

.field private A1:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

.field private B:Lcom/zui/launcher/LauncherModel;

.field private B0:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field B1:Z

.field private C:Lcom/zui/launcher/model/ModelWriter;

.field private C0:Ljava/lang/String;

.field private final C1:Landroid/os/Handler;

.field private D:Lcom/zui/launcher/icons/IconCache;

.field private D0:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

.field private D1:Z

.field private E:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

.field private E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

.field private E1:I

.field private F:Lcom/zui/launcher/popup/PopupDataProvider;

.field private F0:Lcom/zui/launcher/fenlei/FenleiListView;

.field private F1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:I

.field private G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

.field private G1:J

.field private H:Landroid/content/SharedPreferences;

.field private H0:I

.field private H1:Ljava/util/Timer;

.field private I:Lcom/zui/launcher/util/ActivityResultInfo;

.field private I0:Lcom/zui/launcher/AppStoreReceiver;

.field private I1:Lcom/zui/launcher/statehandlers/DepthController;

.field private J:Lcom/zui/launcher/util/PendingRequestArgs;

.field private J0:I

.field private J1:I

.field private K:I

.field private K0:I

.field private K1:Landroid/animation/ValueAnimator;

.field private L:Lcom/zui/launcher/states/RotationHelper;

.field private L0:Z

.field private L1:I

.field private M:Ljava/lang/Runnable;

.field private M0:I

.field private N:Ljava/util/concurrent/Executor;

.field private N0:I

.field final O:Landroid/os/Handler;

.field O0:Landroid/os/Handler;

.field private final P:Ljava/lang/Runnable;

.field P0:Ljava/lang/Runnable;

.field private Q:Z

.field private Q0:Landroid/os/Handler;

.field private R:F

.field private R0:Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

.field private S:Z

.field private final S0:Landroid/os/Handler;

.field private T:Z

.field private T0:Lcom/zui/launcher/ActiveIconCollector;

.field private U:Ljava/lang/String;

.field private U0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private V:Lcom/zui/launcher/DeviceProfile;

.field private V0:Landroid/database/ContentObserver;

.field private W:Lcom/zui/launcher/graphics/RotationMode;

.field private W0:Landroid/database/ContentObserver;

.field X:[Ljava/lang/String;

.field private X0:Landroid/os/HandlerThread;

.field private Y:Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

.field private Y0:Lcom/zui/launcher/Launcher$ContentObserverHandler;

.field private Z:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

.field private Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

.field private a0:Lcom/zui/launcher/LauncherDownLoadDialog;

.field private a1:Z

.field private b0:Lcom/zui/launcher/util/GalleySendPositionManager;

.field private b1:Landroid/content/BroadcastReceiver;

.field private c0:Landroid/content/BroadcastReceiver;

.field private c1:Z

.field private d0:Z

.field private d1:Lcom/zui/launcher/GlobalSearchView;

.field private e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

.field private e1:Lcom/zui/launcher/LauncherRootView;

.field private f0:Lcom/zui/launcher/GestureManager;

.field private f1:Landroid/app/Dialog;

.field private g0:Lcom/zui/launcher/Launcher$GuestureReceiver;

.field private g1:Z

.field private h0:I

.field private final h1:Landroid/content/BroadcastReceiver;

.field private i0:Lcom/zui/launcher/LauncherCallbacks;

.field private i1:Landroid/content/SharedPreferences;

.field public isBlackWallpaper:Z

.field public isHomeOrBackPressed:Z

.field private j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

.field private j1:Landroid/content/SharedPreferences$Editor;

.field private k:Lcom/zui/launcher/LauncherStateManager;

.field private final k0:Landroid/content/BroadcastReceiver;

.field private k1:Z

.field private l:Lcom/zui/launcher/LauncherAppTransitionManager;

.field private l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

.field private l1:Z

.field private m:Landroid/content/res/Configuration;

.field private m0:Lcom/zui/launcher/LauncherRecommend;

.field private m1:Z

.field public mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

.field public mIsLocationEnd:Z

.field public mIsWidgetFly:Z

.field protected mLauncherView:Landroid/view/View;

.field protected mScrimView:Lcom/zui/launcher/views/ScrimView;

.field public mTextColor:I

.field n:Lcom/zui/launcher/Workspace;

.field private n0:Lcom/zui/launcher/DownloadSpan;

.field private n1:Z

.field o:Lcom/zui/launcher/dragndrop/DragLayer;

.field private o0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o1:Z

.field private p:Lcom/zui/launcher/dragndrop/DragController;

.field private p0:Lcom/zui/launcher/Launcher$d2;

.field private p1:Z

.field private q:Lcom/zui/launcher/widget/WidgetManagerHelper;

.field private q0:Landroid/widget/Toast;

.field private q1:Lcom/zui/launcher/SystemSettingObserver;

.field private r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

.field private r0:Landroid/widget/Toast;

.field private r1:Lcom/zui/launcher/StartAppParams;

.field private final s:[I

.field private s0:Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

.field private s1:Ljava/lang/String;

.field t:Lcom/zui/launcher/HotseatLayout;

.field private t0:Ljava/lang/String;

.field private t1:Z

.field private u:Lcom/zui/launcher/DropTargetBar;

.field private u0:Ljava/lang/String;

.field private u1:I

.field v:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private v0:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/LenovoWidgetViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v1:Z

.field w:Lcom/zui/launcher/allapps/AllAppsTransitionController;

.field private w0:Lcom/zui/launcher/EditViewPanel;

.field private w1:Ljava/lang/String;

.field public wallpaper_alpha:I

.field public wallpaper_averageGray:I

.field private x:Landroid/view/View;

.field private x0:Lcom/zui/launcher/XDockViewArea;

.field private x1:Landroid/widget/Toast;

.field y:Z

.field private y0:Lcom/zui/launcher/XDockView;

.field private y1:Ljava/lang/Runnable;

.field private z:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/zui/launcher/Launcher$OnResumeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private z0:Z

.field private z1:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/effect/QuartInterpolator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/zui/launcher/effect/QuartInterpolator;-><init>(B)V

    sput-object v0, Lcom/zui/launcher/Launcher;->M1:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/zui/launcher/Launcher;->N1:Landroid/view/animation/Interpolator;

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/zui/launcher/Launcher;->O1:[B

    new-instance v0, Lcom/zui/launcher/ImageConverterJNI;

    invoke-direct {v0}, Lcom/zui/launcher/ImageConverterJNI;-><init>()V

    sput-object v0, Lcom/zui/launcher/Launcher;->P1:Lcom/zui/launcher/ImageConverterJNI;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/zui/launcher/Launcher;->Q1:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lcom/zui/launcher/BaseDraggingActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->s:[I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->y:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launcher/Launcher;->G:I

    iput v1, p0, Lcom/zui/launcher/Launcher;->K:I

    new-instance v2, Lcom/zui/launcher/Launcher$k;

    invoke-direct {v2, p0}, Lcom/zui/launcher/Launcher$k;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v2, Lcom/zui/launcher/h1;

    invoke-direct {v2, p0}, Lcom/zui/launcher/h1;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->P:Ljava/lang/Runnable;

    const/4 v2, 0x0

    iput v2, p0, Lcom/zui/launcher/Launcher;->R:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->T:Z

    const-string v3, "com.zui.gallery.widget.AppWidget"

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->U:Ljava/lang/String;

    sget-object v3, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->W:Lcom/zui/launcher/graphics/RotationMode;

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v4, "android.permission.READ_CALENDAR"

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->X:[Ljava/lang/String;

    new-instance v3, Lcom/zui/launcher/Launcher$g0;

    invoke-direct {v3, p0}, Lcom/zui/launcher/Launcher$g0;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->c0:Landroid/content/BroadcastReceiver;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->d0:Z

    new-instance v3, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    invoke-direct {v3}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    new-instance v3, Lcom/zui/launcher/Launcher$a;

    invoke-direct {v3, p0}, Lcom/zui/launcher/Launcher$a;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->k0:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->q0:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->s0:Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->t0:Ljava/lang/String;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->u0:Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->mIsWidgetFly:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->isHomeOrBackPressed:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->z0:Z

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    const-string v4, "SAVED_EDIT_MODE_PARAMS"

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->C0:Ljava/lang/String;

    new-instance v4, Lcom/zui/launcher/l1;

    invoke-direct {v4, p0}, Lcom/zui/launcher/l1;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->D0:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    iput v2, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    iput v2, p0, Lcom/zui/launcher/Launcher;->mTextColor:I

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->O0:Landroid/os/Handler;

    new-instance v4, Lcom/zui/launcher/Launcher$t;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$t;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->P0:Ljava/lang/Runnable;

    const/16 v4, 0x19

    iput v4, p0, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    new-instance v4, Lcom/zui/launcher/Launcher$f2;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$f2;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->Q0:Landroid/os/Handler;

    new-instance v4, Lcom/zui/launcher/Launcher$u;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$u;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->R0:Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->S0:Landroid/os/Handler;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->U0:Ljava/util/List;

    new-instance v4, Lcom/zui/launcher/Launcher$h0;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$h0;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->b1:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->g1:Z

    new-instance v4, Lcom/zui/launcher/Launcher$u0;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$u0;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->h1:Landroid/content/BroadcastReceiver;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->i1:Landroid/content/SharedPreferences;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->k1:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->l1:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->m1:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->n1:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->o1:Z

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->p1:Z

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->q1:Lcom/zui/launcher/SystemSettingObserver;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->t1:Z

    iput v1, p0, Lcom/zui/launcher/Launcher;->u1:I

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->v1:Z

    new-instance v1, Lcom/zui/launcher/Launcher$i1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$i1;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->y1:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->z1:Z

    new-instance v1, Lcom/zui/launcher/Launcher$n1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$n1;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->A1:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->B1:Z

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    new-instance v0, Lcom/zui/launcher/Launcher$p1;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$p1;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->C1:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->D1:Z

    iput v2, p0, Lcom/zui/launcher/Launcher;->E1:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->F1:Ljava/util/List;

    new-instance v0, Lcom/zui/launcher/statehandlers/DepthController;

    invoke-direct {v0, p0}, Lcom/zui/launcher/statehandlers/DepthController;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I1:Lcom/zui/launcher/statehandlers/DepthController;

    const-string v0, "=================new Launcher============"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->v1()V

    return-void
.end method

.method static synthetic A(Lcom/zui/launcher/Launcher;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Launcher;->H2(ZI)V

    return-void
.end method

.method private A0(Lcom/zui/launcher/ItemInfo;J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateAppInWorkspace  itemIfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zdx1"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/Launcher;->playLocateAppAnim(Landroid/view/View;J)V

    return-void
.end method

.method static synthetic B(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/Launcher;->x0(Landroid/view/View;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private B0(ZIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getEditModeScaleInMultiWindow()F

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/zui/launcher/util/SettingsValue;->getEditModeScale()F

    move-result v2

    :goto_0
    if-eqz v1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x4

    :goto_1
    if-eqz p3, :cond_8

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    if-eqz v1, :cond_3

    move v8, v5

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    if-eqz v1, :cond_4

    move v9, v2

    goto :goto_4

    :cond_4
    move v9, v5

    :goto_4
    if-eqz v1, :cond_5

    move v10, v5

    goto :goto_5

    :cond_5
    move v10, v2

    :goto_5
    const/4 v2, 0x0

    if-eqz v1, :cond_6

    move v15, v2

    goto :goto_6

    :cond_6
    move v15, v5

    :goto_6
    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v5, v2

    :goto_7
    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v2, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    sget v6, Lcom/zui/launcher/util/SettingsValue;->ANIM_DURATION_EDITMODE_FIRST_HALF:I

    int-to-long v11, v6

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    move/from16 v6, p2

    int-to-long v11, v6

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    sget-object v6, Lcom/zui/launcher/util/SettingsValue;->ANIM_INTERPOLATOR_EDITMODE_FIRST_HALF:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v13, Landroid/view/animation/ScaleAnimation;

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v6, v13

    move-object v3, v13

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v15, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v2, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v3, Lcom/zui/launcher/Launcher$z;

    invoke-direct {v3, v0, v1, v4}, Lcom/zui/launcher/Launcher$z;-><init>(Lcom/zui/launcher/Launcher;ZI)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    iget-object v3, v0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v3, :cond_9

    invoke-direct {v0, v1, v4}, Lcom/zui/launcher/Launcher;->H2(ZI)V

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_8

    :cond_8
    iget-object v0, v0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    :goto_8
    return-void
.end method

.method private B2(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->identifyWallpaper()Z

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    xor-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Lcom/zui/launcher/CellLayout;->resetDragOutlinePaintColor(Z)V

    invoke-virtual {v5}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_3

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v9, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v9

    if-nez v9, :cond_2

    check-cast v8, Lcom/zui/launcher/LeosWidgetInterface;

    const/4 v9, 0x1

    invoke-interface {v8, v1, v9}, Lcom/zui/launcher/LeosWidgetInterface;->setTimeTextColor(ZZ)V

    goto :goto_2

    :cond_1
    check-cast v8, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-virtual {p0, v8}, Lcom/zui/launcher/Launcher;->C2(Lcom/zui/launcher/LeosWidgetInterface;)V

    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic C(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/dot/ZuiDotDataListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    return-object p0
.end method

.method private C0(Z)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->isAutoReorderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->isLeosReordering()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->A2(Z)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->autoReorder()V

    if-eqz p1, :cond_4

    const p1, 0x7f1200c3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic D(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/globalsearch/HotWordDownLoad;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    return-object p0
.end method

.method private D0(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 9

    iget-object v8, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->iconBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->W0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/zui/launcher/FavoriteWidgetView;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/FavoriteWidgetView;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :goto_0
    iput-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->g:Landroid/view/View;

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->g:Landroid/view/View;

    new-instance v1, Lcom/zui/launcher/Launcher$w0;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/Launcher$w0;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->g:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-boolean v0, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne p0, v0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-eqz p0, :cond_3

    const-string p0, "Launcher"

    const-string v0, "open folder on this screen, so set alpha 0 "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    const-string p0, "DummyAppWidgetView"

    const-string v0, "bindRealWidget   addInScreen  =====   "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {v8}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void
.end method

.method static synthetic D1(Lcom/zui/launcher/AbstractFloatingView;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method private D2()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->S0:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/Launcher$y;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$y;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic E(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/GestureManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->f0:Lcom/zui/launcher/GestureManager;

    return-object p0
.end method

.method private E0(Lcom/zui/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 8

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const-string v0, "DummyAppWidgetView"

    const-string v1, "bindRealWidget inflateAppWidget    --> "

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->s1(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    iput-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->h:Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getChangeGridOptionFlag(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->h:Landroid/appwidget/AppWidgetHostView;

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    invoke-static {v2, p0, v3, v4}, Lcom/zui/launcher/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    :cond_2
    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-boolean v2, p0, Lcom/zui/launcher/AbstractFloatingView;->mIsOpen:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/folder/Folder;->getInfo()Lcom/zui/launcher/FolderInfo;

    move-result-object p0

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne p0, v2, :cond_3

    const/4 p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_4

    const-string p0, "Launcher"

    const-string v2, "open folder on this screen, so set alpha 0 "

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    const-string p0, "bindRealWidget   addInScreen  =====   "

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {p2}, Lcom/zui/launcher/PagedView;->requestLayout()V

    :cond_5
    :goto_1
    return-void
.end method

.method private E2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->y:Z

    return-void
.end method

.method static synthetic F(Lcom/zui/launcher/Launcher;Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Launcher;->G2(Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    return-void
.end method

.method private F0()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->getLastGestureUpTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1388

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic F1(Lcom/zui/launcher/BubbleTextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    return-void
.end method

.method private F2()V
    .locals 3

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherRootView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->e1:Lcom/zui/launcher/LauncherRootView;

    const v0, 0x7f0a0152

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/dragndrop/DragLayer;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragLayer;->getFocusIndicatorHelper()Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    const v1, 0x7f0a0456

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Workspace;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->A1:Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setReorderingChangedListener(Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->initParentViews(Landroid/view/View;)V

    const v0, 0x7f0a02ba

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->x:Landroid/view/View;

    const v0, 0x7f0a01d0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/HotseatLayout;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/dragndrop/DragLayer;->setup(Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/Workspace;)V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->enableLiveUIChanges(Lcom/zui/launcher/Launcher;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->M:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setup(Lcom/zui/launcher/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->lockWallpaperToDefaultPage()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    const v1, 0x7f0a0154

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/DropTargetBar;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->u:Lcom/zui/launcher/DropTargetBar;

    const v0, 0x7f0a009c

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/AllAppsContainerView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0a030f

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/views/ScrimView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->setMoveTarget(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->u:Lcom/zui/launcher/DropTargetBar;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/DropTargetBar;->setup(Lcom/zui/launcher/dragndrop/DragController;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setupViews(Lcom/zui/launcher/allapps/AllAppsContainerView;)V

    const v0, 0x7f0a0164

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/EditViewPanel;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const v0, 0x7f0a017e

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    const v0, 0x7f0a017d

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/fenlei/FenleiListView;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->F0:Lcom/zui/launcher/fenlei/FenleiListView;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/fenlei/FenleiListView;->setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/fenlei/FenLeiPanelView;)V

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->setOverlayChangeListener(Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat$OverlayChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    new-instance v1, Lcom/zui/launcher/Launcher$b2;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$b2;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method static synthetic G(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/DownloadSpan;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    return-object p0
.end method

.method private G0(I)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    if-eqz v0, :cond_2

    iget v1, v0, Lcom/zui/launcher/StartAppParams;->a:I

    int-to-long v2, v1

    iget v4, v0, Lcom/zui/launcher/StartAppParams;->b:I

    if-ltz v1, :cond_0

    iget v1, v0, Lcom/zui/launcher/StartAppParams;->f:I

    int-to-long v2, v1

    iget v4, v0, Lcom/zui/launcher/StartAppParams;->g:I

    :cond_0
    const-wide/16 v0, -0x64

    cmp-long v0, v2, v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p1

    if-ne v4, p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->saveStartAppSettings(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private G1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getShortcutInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    const-string v1, "zdx1"

    const-string v2, "XLauncher.locateApp"

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->I1(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->J1(Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_1
    const/16 p1, -0x65

    if-ne v1, p1, :cond_2

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->H1(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method private G2(Landroid/net/NetworkInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    const v0, 0x7f12032c

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/zui/launcher/DownloadSpan;->addTask(Lcom/zui/launcher/ItemInfo;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v1, v0, :cond_1

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/ItemInfo;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const-string v1, "key_iconBitmap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    iget-object p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const-string v0, "key_packageName"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0xa

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/Launcher;->showLauncherDialog(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p0, p2, p1}, Lcom/zui/launcher/Launcher;->showHintDialog(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;I)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic H(Lcom/zui/launcher/Launcher;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->S:Z

    return p1
.end method

.method private H0(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/Launcher$j0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/Launcher$j0;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-static {p0, v0}, Lcom/zui/launcher/networksdk/NetWorkUtil;->doByNetworkInfo(Landroid/content/Context;Lcom/zui/launcher/networksdk/NetWorkUtil$NetWorkInfoCallBack;)V

    return-void
.end method

.method private H1(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    const-string v0, "zdx1"

    const-string v1, "XLauncher.locateAppInHotseat"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locateAppInHotseat locateItem ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/zui/launcher/Workspace;->i0:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/Launcher;->s2(Lcom/zui/launcher/ItemInfo;I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3c

    :goto_0
    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/Launcher;->z0(Lcom/zui/launcher/ItemInfo;J)V

    :cond_1
    return-void
.end method

.method private H2(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic I(Lcom/zui/launcher/Launcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->g1:Z

    return p0
.end method

.method private I0(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/FolderInfo;)Z
    .locals 3

    iget-object p0, p2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    const/4 p2, 0x0

    if-nez p1, :cond_1

    move-object p1, p2

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    :goto_0
    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-nez v2, :cond_3

    move-object v2, p2

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v0

    :cond_4
    return v1
.end method

.method private I1(Lcom/zui/launcher/ItemInfo;)V
    .locals 4

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/Launcher;->s2(Lcom/zui/launcher/ItemInfo;I)J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.locateAppInWorkspace delay -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zdx1"

    invoke-static {v3, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locateAppInWorkspace itemInfo ->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GlobalSearch"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/Launcher;->A0(Lcom/zui/launcher/ItemInfo;J)V

    return-void
.end method

.method private I2(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/zui/launcher/Launcher;->B0(ZIZ)V

    return-void
.end method

.method static synthetic J(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/GlobalSearchView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method

.method private J1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->D1:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->D1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locateFolder locateItem ->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->L1(Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x65

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->K1(Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method private J2(Lcom/zui/launcher/Launcher$e2;)V
    .locals 5

    sget-object p0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p0, :cond_1

    sget-object v0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher$e2;

    invoke-interface {v0}, Lcom/zui/launcher/Launcher$e2;->o()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    sget-object p0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    if-eq v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-object p0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-void
.end method

.method static synthetic K(Lcom/zui/launcher/Launcher;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->N:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method private K0(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isRecommend()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindItems add recommend "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_0
    return-void
.end method

.method private K1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 2

    const-string v0, "zdx1"

    const-string v1, "XLauncher.locateFolderInHotseat"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->w2(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private K2()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/BaseFlags;->FAKE_LANDSCAPE_UI:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {p0}, Lcom/zui/launcher/states/RotationHelper;->homeScreenCanRotate()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic L()Z
    .locals 1

    invoke-static {}, Lcom/zui/launcher/Launcher;->x1()Z

    move-result v0

    return v0
.end method

.method private L1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->D1:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->D1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    const-string v1, "zdx1"

    const-string v2, "XLauncher.locateFolderInWorkspace"

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->s2(Lcom/zui/launcher/ItemInfo;I)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/Launcher;->x2(Lcom/zui/launcher/model/LocateItem;J)V

    return-void
.end method

.method private L2(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Ljava/lang/String;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "######### WidgetWeatherInfo start ####"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\nerrorCode = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string p1, "\nmValueAQI = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getValueAQI()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nmWeatherID="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getWeatherID()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nmWeatherIdDay = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getWeatherIdDay()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\nmWeatherIdNight = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;->getWeatherIdNight()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "\n######### WidgetWeatherInfo end ####"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic M(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/widget/LauncherAppWidgetHost;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    return-object p0
.end method

.method private M1(Lcom/zui/launcher/AppInfo;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object p0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/LauncherModel;->getItemByComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/model/LocateItem;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/model/LocateItem;->getShortcutInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    return-object p0

    :cond_2
    return-object v1
.end method

.method private M2()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->b1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic N(Lcom/zui/launcher/Launcher;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i1:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method private N0()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->closeTopFloatView()V

    :cond_0
    return-void
.end method

.method private N1(Landroid/view/View;)Landroid/view/animation/Animation;
    .locals 4

    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    sget-object v2, Lcom/zui/launcher/Launcher;->N1:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Lcom/zui/launcher/Launcher$q;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/Launcher$q;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    return-object v0
.end method

.method private N2()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterWeatherServiceListener  weatherServiceIsRegister -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->d0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->d0:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->c0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->d0:Z

    :cond_0
    return-void
.end method

.method static synthetic O(Lcom/zui/launcher/Launcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->c1:Z

    return p0
.end method

.method private O0(ILandroid/content/Intent;ILcom/zui/launcher/util/PendingRequestArgs;)I
    .locals 8

    iget v0, p4, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v1, p4, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->b1(I)I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/16 p2, 0xc

    const/16 p4, 0xd

    if-eq p1, p2, :cond_2

    if-eq p1, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/Launcher;->S0(II)Lcom/zui/launcher/LauncherAppWidgetInfo;

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    invoke-direct {p0, p3, p1}, Lcom/zui/launcher/Launcher;->S0(II)Lcom/zui/launcher/LauncherAppWidgetInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {p2, p3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p2

    if-eqz p2, :cond_5

    new-instance p3, Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    invoke-direct {p3, p2}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-virtual {p3, p0, p1, p4}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;I)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p4, p1, p1}, Lcom/zui/launcher/Launcher;->P0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    goto :goto_0

    :cond_4
    iget v3, p4, Lcom/zui/launcher/ItemInfo;->container:I

    iget v5, p4, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, p4, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v1, p0

    move-object v2, p2

    move v4, v0

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/Launcher;->R0(Landroid/content/Intent;IIIILcom/zui/launcher/util/PendingRequestArgs;)V

    :cond_5
    :goto_0
    return v0
.end method

.method private O1(II)Landroid/view/animation/Animation;
    .locals 3

    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 p1, 0xa

    int-to-long p1, p1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    sget-object p1, Lcom/zui/launcher/Launcher;->N1:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method private O2()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherStateManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    return-object p0
.end method

.method private P1(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
    .locals 0

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    iget-object p5, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p5, :cond_0

    invoke-virtual {p5, p2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    instance-of p2, p1, Lcom/zui/launcher/BubbleTextView;

    const/4 p5, 0x1

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, p5}, Lcom/zui/launcher/BubbleTextView;->setIconVisible(Z)V

    goto :goto_0

    :cond_1
    instance-of p2, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz p2, :cond_2

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p2}, Lcom/zui/launcher/ActiveIconView;->resetIconView()V

    goto :goto_0

    :cond_2
    instance-of p2, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p2, p5}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    :cond_3
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iput-object p3, p0, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    instance-of p0, p1, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz p0, :cond_5

    check-cast p1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {p1, p2}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    goto :goto_1

    :cond_5
    instance-of p0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p0, :cond_6

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method private P2()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->q1:Lcom/zui/launcher/SystemSettingObserver;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/SystemSettingObserver;->setListening(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->q1:Lcom/zui/launcher/SystemSettingObserver;

    :cond_0
    return-void
.end method

.method static synthetic Q(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->q1(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-void
.end method

.method private Q1(ILandroid/content/Intent;Lcom/zui/launcher/util/PendingRequestArgs;)V
    .locals 10

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3}, Lcom/zui/launcher/util/PendingRequestArgs;->getLeosComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v2, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v6

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v4, v1

    iget v7, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v8, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v9, -0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v0, v0, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_4

    return-void

    :cond_4
    instance-of p3, p0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz p3, :cond_6

    check-cast p0, Lcom/zui/launcher/LeosWidgetInterface;

    const/4 p3, -0x1

    if-ne p1, p3, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/zui/launcher/LeosWidgetInterface;->handleConfigureResult(ZLandroid/content/Intent;)V

    :cond_6
    return-void
.end method

.method private Q2()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherApplication;->getWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->R0:Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

    invoke-virtual {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->unRegistWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V

    return-void
.end method

.method static synthetic R(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/StartAppParams;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    return-object p0
.end method

.method private R0(Landroid/content/Intent;IIIILcom/zui/launcher/util/PendingRequestArgs;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v9, p2

    move-object/from16 v1, p6

    invoke-virtual/range {p6 .. p6}, Lcom/zui/launcher/util/PendingRequestArgs;->getRequestCode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_10

    invoke-virtual/range {p6 .. p6}, Lcom/zui/launcher/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v15, v0, Lcom/zui/launcher/Launcher;->s:[I

    move/from16 v14, p3

    invoke-virtual {v0, v9, v14}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v13

    sget-boolean v2, Lcom/zui/launcher/Utilities;->ATLEAST_OREO:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/zui/launcher/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-static {v0, v2, v4, v5}, Lcom/zui/launcher/pm/PinRequestHelper;->createWorkspaceItemFromPinItemRequest(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;J)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string v4, "Launcher"

    const/4 v12, 0x0

    if-nez v2, :cond_5

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object v5, v1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static/range {p0 .. p1}, Lcom/zui/launcher/InstallShortcutReceiver;->fromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_3

    const-string v0, "Unable to parse a valid custom shortcut result"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    new-instance v2, Lcom/zui/launcher/util/PackageManagerHelper;

    invoke-direct {v2, v0}, Lcom/zui/launcher/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    iget-object v5, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual/range {p6 .. p6}, Lcom/zui/launcher/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/zui/launcher/util/PackageManagerHelper;->hasPermissionForActivity(Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring malicious intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v12}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v11, v3

    goto :goto_1

    :cond_5
    move-object v11, v2

    :goto_1
    if-eqz v11, :cond_9

    iget-object v2, v11, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    const-string v2, ""

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v11}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget v5, v11, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v6, v11, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v6, :cond_7

    move v6, v12

    goto :goto_3

    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v6

    iget-object v7, v11, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_3
    invoke-static {v0, v2, v3, v5, v6}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    const v1, 0x7f120622

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v2, v3, v12

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->j2()V

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragController;->getLastDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/folder/Folder;

    if-eqz v1, :cond_8

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getLastDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/folder/Folder;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/Folder;->rearrangeChildren()V

    :cond_8
    return-void

    :cond_9
    if-gez v9, :cond_e

    invoke-virtual {v0, v11}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v8

    if-ltz p4, :cond_c

    if-ltz p5, :cond_c

    aput p4, v15, v12

    aput p5, v15, v10

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/16 v16, 0x0

    move-object v2, v8

    move/from16 v3, p2

    move-object v4, v13

    move-object v5, v15

    move-object/from16 p1, v8

    move-object/from16 v8, v16

    invoke-virtual/range {v1 .. v8}, Lcom/zui/launcher/Workspace;->L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z

    move-result v1

    if-eqz v1, :cond_a

    return-void

    :cond_a
    new-instance v1, Lcom/zui/launcher/DropTarget$DragObject;

    invoke-direct {v1}, Lcom/zui/launcher/DropTarget$DragObject;-><init>()V

    iput-object v11, v1, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v3, 0x0

    const/16 v17, 0x1

    move-object v7, v11

    move-object v11, v2

    move v2, v12

    move-object/from16 v12, p1

    move-object v4, v13

    move-object v14, v15

    move-object v5, v15

    move v15, v3

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v17}, Lcom/zui/launcher/Workspace;->A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    move v1, v10

    goto :goto_4

    :cond_c
    move-object/from16 p1, v8

    move-object v7, v11

    move v2, v12

    move-object v4, v13

    move-object v5, v15

    invoke-virtual {v4, v5, v10, v10}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v1

    :goto_4
    if-nez v1, :cond_d

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v4}, Lcom/zui/launcher/Workspace;->onNoCellFound(Landroid/view/View;)V

    return-void

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    aget v6, v5, v2

    aget v8, v5, v10

    move-object v2, v7

    move/from16 v3, p2

    move/from16 v4, p3

    move v5, v6

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    goto :goto_5

    :cond_e
    move-object v7, v11

    move v2, v12

    invoke-virtual {v0, v9}, Lcom/zui/launcher/Launcher;->findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/FolderInfo;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v0, v7, v1, v2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;IZ)V

    goto :goto_5

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find folder with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to add shortcut."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_5
    return-void
.end method

.method private R1(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/BaseActivity;->mUserEventDispatcher:Lcom/zui/launcher/logging/UserEventDispatcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->t1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->dispatchDeviceProfileChanged()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->reapplyUi()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragLayer;->recreateControllers()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->N0()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->calculateLayoutParams()V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Launcher"

    const-string v1, "onIDPChange-->removeGlobalSearchView force"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView(Z)V

    :cond_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->rebindModel()V

    :cond_3
    return-void
.end method

.method private R2(Lcom/zui/launcher/Launcher$e2;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->isLeosReordering()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->J2(Lcom/zui/launcher/Launcher$e2;)V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method static synthetic S(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/StartAppParams;)Lcom/zui/launcher/StartAppParams;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    return-object p1
.end method

.method private S0(II)Lcom/zui/launcher/LauncherAppWidgetInfo;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getWidgetForAppWidgetId(I)Lcom/zui/launcher/widget/LauncherAppWidgetHostView;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput p2, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez p2, :cond_1

    iput-object v0, v1, Lcom/zui/launcher/LauncherAppWidgetInfo;->pendingItemInfo:Lcom/zui/launcher/model/PackageItemInfo;

    :cond_1
    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    invoke-virtual {p2}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;->isReinflateIfNeeded()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->reInflate()V

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-object v1

    :cond_3
    :goto_0
    const-string p0, "Launcher"

    const-string p1, "Widget update called, when the widget no longer exists."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private S1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 4

    const-string v0, "zdx1"

    const-string v1, "XLauncher.openFolderInHotseat"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3, v1}, Lcom/zui/launcher/Hotseat;->getChildrenItem(II)Landroid/view/View;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.openFolderInHotseat---"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/zui/launcher/folder/FolderIcon;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.openFolderInHotseat---openFolder folder icon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->D1:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->D1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_0
    invoke-static {v1}, Lcom/zui/launcher/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->y2(Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method static synthetic T(Lcom/zui/launcher/Launcher;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Launcher;->u1:I

    return p1
.end method

.method private T1(Lcom/zui/launcher/model/LocateItem;)V
    .locals 6

    iget v0, p0, Lcom/zui/launcher/Launcher;->E1:I

    const/4 v1, 0x0

    const-string v2, "zdx1"

    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    const-string p1, "XLauncher.openFolderInWorkspace waitCount == 6 return"

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    iput v1, p0, Lcom/zui/launcher/Launcher;->E1:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XLauncher.openFolderInWorkspace waitCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/Launcher;->E1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    iget p1, p0, Lcom/zui/launcher/Launcher;->E1:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/zui/launcher/Launcher;->E1:I

    return-void

    :cond_1
    iput v1, p0, Lcom/zui/launcher/Launcher;->E1:I

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/zui/launcher/Workspace;->getFolderViewForItem(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XLauncher.openFolderInWorkspace locateItem -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", folderInfo -->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", view -->"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    instance-of v0, v3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_3

    check-cast v3, Lcom/zui/launcher/folder/FolderIcon;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XLauncher.openFolderInWorkspace---openFolder folder icon: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->D1:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->D1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_2
    const-string v0, "XLauncher.onClickFolderIcon"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/zui/launcher/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->z2(Lcom/zui/launcher/model/LocateItem;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XLauncher.openFolderInWorkspace  else  mIsLocationEnd -->"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method static synthetic U(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    return-object p1
.end method

.method private U1(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->N1(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method static synthetic V(Lcom/zui/launcher/Launcher;Ljava/lang/Long;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/Launcher;->Z0(Ljava/lang/Long;Z)V

    return-void
.end method

.method private V0(Landroid/os/Bundle;)Lzui/app/MessageDialog$Builder;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120333

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lzui/app/MessageDialog$Builder;

    invoke-direct {v2, p0}, Lzui/app/MessageDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f120334

    invoke-virtual {v2, v3}, Lzui/app/MessageDialog$Builder;->setTitle(I)Lzui/app/MessageDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lzui/app/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/Launcher$r0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/Launcher$r0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Lzui/app/MessageDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/MessageDialog$Builder;

    move-result-object v1

    const v2, 0x7f120349

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/zui/launcher/Launcher$s0;

    invoke-direct {v3, p0}, Lcom/zui/launcher/Launcher$s0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2, v3}, Lzui/app/MessageDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    const v2, 0x7f120348

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/zui/launcher/Launcher$t0;

    invoke-direct {v2, p0, p1}, Lcom/zui/launcher/Launcher$t0;-><init>(Lcom/zui/launcher/Launcher;Landroid/os/Bundle;)V

    invoke-virtual {v1, v0, v2}, Lzui/app/MessageDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/MessageDialog$Builder;

    return-object v1
.end method

.method private V1(Lcom/zui/launcher/folder/Folder;Landroid/view/View;J)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v1, 0x6

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "scaleX"

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    const-string v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p2

    const-wide/16 v0, 0x30c

    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {p2, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p3, Lcom/zui/launcher/Launcher$v1;

    invoke-direct {p3, p0}, Lcom/zui/launcher/Launcher$v1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    new-instance p3, Lcom/zui/launcher/Launcher$w1;

    invoke-direct {p3, p0, p2}, Lcom/zui/launcher/Launcher$w1;-><init>(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic W(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/Launcher;->v0(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private W0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00ab

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/DummyAppWidgetView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/DummyAppWidgetView;->applyWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    sget-object v1, Lcom/zui/launcher/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    new-instance v1, Lcom/zui/launcher/Launcher$x0;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/Launcher$x0;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private W1(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->e(Lcom/zui/launcher/Launcher;Landroid/appwidget/AppWidgetHostView;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/appwidget/AppWidgetHostView;->setFocusable(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/appwidget/AppWidgetHostView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method static synthetic X(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    return-object p0
.end method

.method private X0(Landroid/view/View;I)Landroid/animation/ValueAnimator;
    .locals 2

    new-instance p0, Lcom/zui/launcher/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/zui/launcher/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/PropertyListBuilder;->alpha(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/anim/PropertyListBuilder;->scale(F)Lcom/zui/launcher/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p0

    mul-int/lit8 p2, p2, 0x55

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    const p2, 0x3fa66666    # 1.3f

    invoke-direct {p1, p2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private X1(Landroid/view/View;Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    instance-of p0, p1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {p1}, Lcom/zui/launcher/LeosWidgetInterface;->isReconfigurable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2, v0}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setReconfigurable(Z)V

    invoke-interface {p1}, Lcom/zui/launcher/LeosWidgetInterface;->getConfigure()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setConfigureIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic Y(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/Launcher;->P1(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private Y1(Lcom/zui/launcher/widget/PendingAddShortcutInfo;)V
    .locals 14

    iget-object v0, p1, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v1, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iput p1, v0, Lcom/zui/launcher/ItemInfo;->id:I

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->s:[I

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v1, v3}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget-object v6, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v6, :cond_4

    move v6, v12

    goto :goto_1

    :cond_4
    invoke-static {p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v6

    iget-object v7, v0, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v6

    long-to-int v6, v6

    :goto_1
    invoke-static {p0, v3, v4, v5, v6}, Lcom/zui/launcher/LauncherModel;->shortcutGenerallyExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;II)I

    move-result v4

    if-eq v4, v2, :cond_5

    const p1, 0x7f120622

    new-array v0, v11, [Ljava/lang/Object;

    aput-object v3, v0, v12

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    iget v3, v0, Lcom/zui/launcher/ItemInfo;->container:I

    if-gez v3, :cond_a

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v13

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz v3, :cond_8

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-ltz v4, :cond_8

    aput v3, p1, v12

    aput v4, p1, v11

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v4, v13

    move-object v6, v1

    move-object v7, p1

    invoke-virtual/range {v3 .. v10}, Lcom/zui/launcher/Workspace;->L(Landroid/view/View;ILcom/zui/launcher/CellLayout;[IFZLcom/zui/launcher/dragndrop/DragView;)Z

    move-result v3

    if-eqz v3, :cond_6

    iput v2, v0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    return-void

    :cond_6
    new-instance v8, Lcom/zui/launcher/DropTarget$DragObject;

    invoke-direct {v8}, Lcom/zui/launcher/DropTarget$DragObject;-><init>()V

    iput-object v0, v8, Lcom/zui/launcher/DropTarget$DragObject;->dragInfo:Lcom/zui/launcher/ItemInfo;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v4, v13

    move-object v5, v1

    move-object v6, p1

    invoke-virtual/range {v3 .. v9}, Lcom/zui/launcher/Workspace;->A(Landroid/view/View;Lcom/zui/launcher/CellLayout;[IFLcom/zui/launcher/DropTarget$DragObject;Z)Z

    move-result v3

    if-eqz v3, :cond_7

    iput v2, v0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v5, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    return-void

    :cond_7
    move v2, v11

    goto :goto_2

    :cond_8
    invoke-virtual {v1, p1, v11, v11}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    :goto_2
    if-nez v2, :cond_9

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Workspace;->onNoCellFound(Landroid/view/View;)V

    return-void

    :cond_9
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v5, p1, v12

    aget v6, p1, v11

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v13, v0}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    goto :goto_3

    :cond_a
    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/FolderInfo;

    iget p1, v0, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {p0, v0, p1, v12}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;IZ)V

    goto :goto_3

    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Could not find folder with id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to add shortcut."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLoge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method static synthetic Z(Lcom/zui/launcher/Launcher;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->x1:Landroid/widget/Toast;

    return-object p0
.end method

.method private Z0(Ljava/lang/Long;Z)V
    .locals 16

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    const/4 v7, 0x0

    if-eqz v0, :cond_14

    iget-object v1, v6, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget v2, v0, Lcom/zui/launcher/StartAppParams;->a:I

    const/16 v3, -0x64

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    iget v0, v0, Lcom/zui/launcher/StartAppParams;->b:I

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void

    :cond_1
    if-ltz v2, :cond_2

    iget v2, v0, Lcom/zui/launcher/StartAppParams;->f:I

    if-ne v2, v3, :cond_2

    iget v0, v0, Lcom/zui/launcher/StartAppParams;->g:I

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-eq v0, v1, :cond_2

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void

    :cond_2
    iget-object v0, v6, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iput-object v4, v6, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void

    :cond_3
    iget-object v0, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    invoke-direct {v6, v0}, Lcom/zui/launcher/Launcher;->e1(Lcom/zui/launcher/StartAppParams;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void

    :cond_4
    instance-of v0, v8, Lcom/zui/launcher/folder/FolderIcon;

    const/4 v9, 0x1

    if-eqz v0, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {v6, v9}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void

    :cond_6
    :goto_0
    instance-of v1, v8, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v1, :cond_7

    move-object v1, v8

    check-cast v1, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v1, v9}, Lcom/zui/launcher/WorkspaceIconCompat;->forceHideDot(Z)V

    goto :goto_1

    :cond_7
    if-eqz v0, :cond_8

    move-object v1, v8

    check-cast v1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v1, v9}, Lcom/zui/launcher/folder/FolderIcon;->forceHideDot(Z)V

    :cond_8
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    goto :goto_2

    :cond_9
    iget v2, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    :goto_2
    move v3, v2

    if-eqz v0, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    goto :goto_3

    :cond_a
    iget v2, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    :goto_3
    move v5, v2

    invoke-virtual {v6, v8}, Lcom/zui/launcher/Launcher;->createSnapshot(Landroid/view/View;)Landroid/view/View;

    move-result-object v10

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v5, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    instance-of v2, v8, Lcom/zui/launcher/BubbleTextView;

    if-eqz v2, :cond_b

    move-object v4, v8

    check-cast v4, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v4}, Lcom/zui/launcher/BubbleTextView;->getCompoundTopDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_b
    move-object v12, v4

    if-eqz v2, :cond_c

    move-object v2, v8

    check-cast v2, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v2, v7}, Lcom/zui/launcher/BubbleTextView;->setIconVisible(Z)V

    goto :goto_4

    :cond_c
    instance-of v2, v8, Lcom/zui/launcher/ActiveIconView;

    if-eqz v2, :cond_d

    move-object v2, v8

    check-cast v2, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v2}, Lcom/zui/launcher/ActiveIconView;->setBlankIconView()V

    goto :goto_4

    :cond_d
    if-eqz v0, :cond_e

    move-object v2, v8

    check-cast v2, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v2, v7}, Lcom/zui/launcher/folder/FolderIcon;->setBackgroundVisible(Z)V

    :cond_e
    :goto_4
    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v0, :cond_f

    goto :goto_5

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v8}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_6

    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_6

    :cond_11
    if-eqz v0, :cond_12

    :goto_5
    move v0, v7

    goto :goto_6

    :cond_12
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    :goto_6
    move v13, v0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v10

    move v4, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Launcher;->p0(Landroid/view/View;Landroid/view/View;III)[F

    move-result-object v0

    aget v7, v0, v7

    aget v9, v0, v9

    const-wide/16 v0, 0xa0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v4, v2, v0

    const-wide/16 v13, 0x0

    if-gez v4, :cond_13

    sub-long/2addr v0, v2

    goto :goto_7

    :cond_13
    move-wide v0, v13

    :goto_7
    const-wide/16 v2, -0x32

    add-long/2addr v0, v2

    invoke-static {v13, v14, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iget-object v15, v6, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v5, Lcom/zui/launcher/Launcher$d1;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v10

    move-object v4, v12

    move-object v8, v5

    move-object v5, v11

    move v6, v7

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/Launcher$d1;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    invoke-virtual {v15, v8, v13, v14}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_14
    :goto_8
    invoke-virtual {v6, v7}, Lcom/zui/launcher/Launcher;->setDoingCloseAnim(Z)V

    return-void
.end method

.method private Z1(Lcom/zui/launcher/widget/PendingAddShortcutInfo;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0, p1}, Lcom/zui/launcher/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    iget-object p1, p1, Lcom/zui/launcher/widget/PendingAddShortcutInfo;->activityInfo:Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;

    invoke-virtual {p1, p0, v1}, Lcom/zui/launcher/pm/ShortcutConfigActivityInfo;->startConfigActivity(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/zui/launcher/Launcher;->m1(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic a0(Lcom/zui/launcher/Launcher;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->x1:Landroid/widget/Toast;

    return-object p1
.end method

.method private a1(J)V
    .locals 4

    iget v0, p0, Lcom/zui/launcher/Launcher;->u1:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance p1, Lcom/zui/launcher/Launcher$b1;

    invoke-direct {p1, p0}, Lcom/zui/launcher/Launcher$b1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/zui/launcher/Launcher$c1;

    invoke-direct {p1, p0, v0}, Lcom/zui/launcher/Launcher$c1;-><init>(Lcom/zui/launcher/Launcher;I)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a2(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0}, Lcom/zui/launcher/Launcher;->calculateAppStartPos(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)[I

    return-void

    :cond_2
    const/16 v2, -0x64

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    goto :goto_1

    :cond_3
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_1
    move v5, v1

    if-gez v5, :cond_4

    return-void

    :cond_4
    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v3, v1

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v8, -0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0, v1, p1, v0}, Lcom/zui/launcher/Launcher;->calculateAppStartPos(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)[I

    return-void
.end method

.method static synthetic b0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/Launcher;->k1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V

    return-void
.end method

.method private b1(I)I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method private b2(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v2, -0x65

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v0, :cond_2

    return-void

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    instance-of p1, p0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/FolderIcon;->refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic c0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->T1(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private c1()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/zui/launcher/Launcher;->B0(ZIZ)V

    return-void
.end method

.method private c2()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/GestureManager;

    invoke-direct {v0, p0}, Lcom/zui/launcher/GestureManager;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->f0:Lcom/zui/launcher/GestureManager;

    new-instance v0, Lcom/zui/launcher/Launcher$GuestureReceiver;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$GuestureReceiver;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->g0:Lcom/zui/launcher/Launcher$GuestureReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xui.launcher.gesture.scroll.down"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xui.launcher.gesture.scroll.up"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.xui.launcher.gesture.double.click"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->g0:Lcom/zui/launcher/Launcher$GuestureReceiver;

    invoke-virtual {v1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static calImageGray(Landroid/graphics/Bitmap;)V
    .locals 10

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_2

    const/16 v2, 0x5a

    invoke-static {p0, v2}, Lcom/zui/launcher/Utilities;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    const/16 v2, 0x4b0

    if-le v0, v2, :cond_1

    div-int/lit8 v1, v1, 0x4

    div-int/lit8 v0, v0, 0x4

    invoke-static {p0, v1, v0}, Lcom/zui/launcher/Utilities;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :cond_2
    move-object v2, p0

    mul-int p0, v0, v1

    new-array p0, p0, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v5, v0

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    sget-object v2, Lcom/zui/launcher/Launcher;->P1:Lcom/zui/launcher/ImageConverterJNI;

    sget-object v3, Lcom/zui/launcher/Launcher;->O1:[B

    invoke-virtual {v2, v0, v1, p0, v3}, Lcom/zui/launcher/ImageConverterJNI;->argb88882yuv420p(II[I[B)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static cast(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/Launcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/Launcher;",
            ">(",
            "Lcom/zui/launcher/views/ActivityContext;",
            ")TT;"
        }
    .end annotation

    check-cast p0, Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method static synthetic d0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->q2(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private d1(JIIII)Landroid/view/View;
    .locals 4

    const-wide/16 v0, -0x65

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    goto :goto_0

    :cond_0
    const-wide/16 v2, -0x64

    cmp-long p1, p1, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/CellLayout;

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_2

    return-object v1

    :cond_2
    if-nez v0, :cond_6

    if-lez p6, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p2

    const/4 p3, 0x2

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_1

    :cond_3
    move p2, v0

    :goto_1
    const/4 v1, 0x0

    if-ne p2, p6, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->getMaxCount()I

    move-result p0

    if-ne p2, p3, :cond_5

    sub-int/2addr p0, p4

    add-int/lit8 p5, p0, -0x1

    move p4, v1

    goto :goto_2

    :cond_5
    sub-int/2addr p0, p5

    add-int/lit8 p4, p0, -0x1

    move p5, v1

    :goto_2
    invoke-virtual {p1, p4, p5}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1, p4, p5}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private d2()V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->D0:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    invoke-virtual {v0, p0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->t2()V

    return-void
.end method

.method static synthetic e0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->S1(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private e1(Lcom/zui/launcher/StartAppParams;)Landroid/view/View;
    .locals 8

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/StartAppParams;->a:I

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/zui/launcher/StartAppParams;->f:I

    int-to-long v2, v0

    iget v4, p1, Lcom/zui/launcher/StartAppParams;->g:I

    iget v5, p1, Lcom/zui/launcher/StartAppParams;->h:I

    iget v6, p1, Lcom/zui/launcher/StartAppParams;->i:I

    iget v7, p1, Lcom/zui/launcher/StartAppParams;->l:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_1
    int-to-long v1, v0

    iget v3, p1, Lcom/zui/launcher/StartAppParams;->b:I

    iget v4, p1, Lcom/zui/launcher/StartAppParams;->c:I

    iget v5, p1, Lcom/zui/launcher/StartAppParams;->d:I

    iget v6, p1, Lcom/zui/launcher/StartAppParams;->l:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private e2()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.zui.launcher.action_lockscreen"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/zui/launcher/system/SystemBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/zui/launcher/system/SystemBroadcastReceiver;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->E0:Lcom/zui/launcher/system/SystemBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/Launcher;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Launcher;->R:F

    return p0
.end method

.method static synthetic f0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->p2(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private f2()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/Launcher$a1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "start_app_param"

    invoke-direct {v0, p0, p0, v1, v2}, Lcom/zui/launcher/Launcher$a1;-><init>(Lcom/zui/launcher/Launcher;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->q1:Lcom/zui/launcher/SystemSettingObserver;

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/zui/launcher/SystemSettingObserver;->setListening(Z)V

    return-void
.end method

.method static synthetic g(Lcom/zui/launcher/Launcher;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Launcher;->M0:I

    return p0
.end method

.method static synthetic g0(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/model/LocateItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->G1(Lcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method private g1(IIJ)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/Launcher$z1;

    invoke-direct {p2, p0}, Lcom/zui/launcher/Launcher$z1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private g2()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerWeatherServiceListener  weatherServiceIsRegister -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->d0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->d0:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->c0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->d0:Z

    :cond_0
    return-void
.end method

.method public static getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method public static getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I
    .locals 2

    if-nez p1, :cond_0

    const-string p0, "Launcher"

    const-string p1, "getMinSpanForWidget info = null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/zui/launcher/Launcher;->Q1:[I

    return-object p0

    :cond_0
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    invoke-static {p0, v0, v1, p1}, Lcom/zui/launcher/Launcher;->i1(Landroid/content/Context;Landroid/content/ComponentName;II)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/zui/launcher/Launcher;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Launcher;->M0:I

    return p1
.end method

.method static synthetic h0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    return-object p0
.end method

.method private h1()Lcom/zui/launcher/util/GalleySendPositionManager;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->b0:Lcom/zui/launcher/util/GalleySendPositionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/GalleySendPositionManager;

    invoke-direct {v0}, Lcom/zui/launcher/util/GalleySendPositionManager;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->b0:Lcom/zui/launcher/util/GalleySendPositionManager;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->b0:Lcom/zui/launcher/util/GalleySendPositionManager;

    return-object p0
.end method

.method private h2()V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/zui/launcher/Launcher$h2;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$h2;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->W0:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/dot/ZuiDotConstant$ZuiDotSettingValue;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->W0:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Lcom/zui/launcher/Launcher$g2;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$g2;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->V0:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/dot/ZuiDotConstant;->REDHOT_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->V0:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "------registerProvider failed---"

    invoke-static {v1, v0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ContentObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->X0:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/zui/launcher/Launcher$ContentObserverHandler;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->X0:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/Launcher$ContentObserverHandler;-><init>(Lcom/zui/launcher/Launcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->Y0:Lcom/zui/launcher/Launcher$ContentObserverHandler;

    return-void
.end method

.method static synthetic i(Lcom/zui/launcher/Launcher;I)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/Launcher;->M0:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/Launcher;->M0:I

    return v0
.end method

.method static synthetic i0(Lcom/zui/launcher/Launcher;I)I
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Launcher;->J1:I

    return p1
.end method

.method static i1(Landroid/content/Context;Landroid/content/ComponentName;II)[I
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/InvariantDeviceProfile;->defaultWidgetPadding:Landroid/graphics/Rect;

    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, p1

    iget p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p1

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p3, p0

    const/4 p0, 0x0

    invoke-static {p2, p3, p0}, Lcom/zui/launcher/CellLayout;->rectToCell(II[I)[I

    move-result-object p0

    return-object p0
.end method

.method private i2()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->b1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic j(Lcom/zui/launcher/Launcher;I)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/Launcher;->M0:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/Launcher;->M0:I

    return v0
.end method

.method static synthetic j0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/util/PendingRequestArgs;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    return-object p0
.end method

.method private j1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/Launcher;->k1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V

    return-void
.end method

.method private j2()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getLastDropTarget()Lcom/zui/launcher/DropTarget;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-ne v0, v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/Workspace;->getDropToLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->getDragObject()Lcom/zui/launcher/DropTarget$DragObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/zui/launcher/DropTarget$DragObject;->dragSource:Lcom/zui/launcher/DragSource;

    instance-of v0, v0, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/zui/launcher/Launcher;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Launcher;->J0:I

    return p0
.end method

.method static synthetic k0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method private k1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;I)V
    .locals 5

    new-instance v0, Lcom/zui/launcher/Launcher$m1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/zui/launcher/Launcher$m1;-><init>(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V

    sget-object v1, Lcom/zui/launcher/LauncherModel;->sBgDataModel:Lcom/zui/launcher/model/BgDataModel;

    iget v2, p2, Lcom/zui/launcher/CacheInfo;->container:I

    invoke-virtual {v1, v2}, Lcom/zui/launcher/model/BgDataModel;->findFolder(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p2}, Lcom/zui/launcher/LauncherModel;->isModelLoaded()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0x1e

    if-ge p3, p2, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const-wide/16 p1, 0x12c

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->r0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/Launcher;->I0(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/FolderInfo;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    :cond_2
    iget p3, v1, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v0, -0x65

    if-ne p3, v0, :cond_3

    iget-object p3, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    goto :goto_1

    :cond_3
    iget-object p3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v0, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p3, v0}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/CellLayout;

    :goto_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not get layout with folder info screenId:"

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v3, "Launcher"

    invoke-static {v3, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, v1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-ge p3, v3, :cond_5

    :goto_2
    iget p3, p2, Lcom/zui/launcher/CacheInfo;->screen:I

    iget v3, p2, Lcom/zui/launcher/CacheInfo;->cellX:I

    iget p2, p2, Lcom/zui/launcher/CacheInfo;->cellY:I

    invoke-static {p0, p3, v3, p2}, Lcom/zui/launcher/Utilities;->getFolderItemRank(Landroid/content/Context;III)I

    move-result p2

    invoke-virtual {v1, p1, p2, v2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;IZ)V

    goto :goto_3

    :cond_4
    iget v3, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p3, v3, v4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_5

    instance-of v3, p3, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v3, :cond_5

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v3, v1, Lcom/zui/launcher/ItemInfo;->id:I

    iput v3, p1, Lcom/zui/launcher/ItemInfo;->container:I

    check-cast p3, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/zui/launcher/folder/Folder;->isDestroyed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p3}, Lcom/zui/launcher/folder/FolderIcon;->getFolder()Lcom/zui/launcher/folder/Folder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/zui/launcher/folder/Folder;->isFull()Z

    move-result p3

    if-nez p3, :cond_5

    goto :goto_2

    :cond_5
    move v0, v2

    :goto_3
    if-nez v0, :cond_6

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->r0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_6
    return-void
.end method

.method private k2([Ljava/lang/String;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    invoke-static {p0, v4}, Lcom/zui/launcher/Utilities;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

.method static synthetic l(Lcom/zui/launcher/Launcher;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Launcher;->K0:I

    return p0
.end method

.method static synthetic l0(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/fenlei/FenLeiPanelView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    return-object p0
.end method

.method private l1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V
    .locals 3

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    iget p2, p2, Lcom/zui/launcher/CacheInfo;->cellX:I

    const/4 v1, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v0, -0x1

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Lcom/zui/launcher/Hotseat;->getRealChildCount(Lcom/zui/launcher/HotseatLayout;Lcom/zui/launcher/Launcher;)I

    move-result v0

    if-lt p2, v0, :cond_1

    move p2, v0

    :cond_1
    iput v1, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/HotseatLayout;->addShortcutIntoHotseat(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    return-void
.end method

.method private l2()V
    .locals 0

    return-void
.end method

.method static synthetic m(Lcom/zui/launcher/Launcher;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->L0:Z

    return p0
.end method

.method private m0(Lcom/zui/launcher/widget/PendingAddWidgetInfo;)V
    .locals 6

    iget-object v0, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v3

    invoke-virtual {p0, v3, p1, v0, v1}, Lcom/zui/launcher/Launcher;->n0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;)V

    iput-object v2, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iget-object v3, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v5, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v4, v0, v5, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/zui/launcher/Launcher;->n0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;)V

    goto :goto_0

    :cond_1
    const/16 v2, 0xb

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startBindFlow(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)V

    :goto_0
    return-void
.end method

.method private m1(IILandroid/content/Intent;)V
    .locals 10

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/zui/launcher/util/ActivityResultInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/zui/launcher/util/ActivityResultInfo;-><init>(IILandroid/content/Intent;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    if-nez v5, :cond_1

    return-void

    :cond_1
    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    invoke-direct {p0, p2, p3, v5}, Lcom/zui/launcher/Launcher;->Q1(ILandroid/content/Intent;Lcom/zui/launcher/util/PendingRequestArgs;)V

    return-void

    :cond_2
    invoke-virtual {v5}, Lcom/zui/launcher/util/PendingRequestArgs;->getWidgetId()I

    move-result v0

    new-instance v1, Lcom/zui/launcher/Launcher$y0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$y0;-><init>(Lcom/zui/launcher/Launcher;)V

    const/16 v2, 0xb

    const-string v3, "appWidgetId"

    const/16 v7, 0x1f4

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v4, -0x1

    if-ne p1, v2, :cond_6

    if-eqz p3, :cond_3

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    move v2, p1

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    if-nez p2, :cond_4

    invoke-virtual {p0, v8, v2, v5}, Lcom/zui/launcher/Launcher;->T0(IILcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v9, v1, v7, v8}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_1

    :cond_4
    if-ne p2, v4, :cond_5

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/zui/launcher/util/PendingRequestArgs;->getWidgetHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object p1

    const/16 v6, 0x1f4

    move-object v1, p0

    move-object v3, v5

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/zui/launcher/Launcher;->o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/16 v2, 0x9

    if-eq p1, v2, :cond_8

    const/4 v2, 0x5

    if-ne p1, v2, :cond_7

    goto :goto_2

    :cond_7
    move v2, v8

    goto :goto_3

    :cond_8
    :goto_2
    move v2, v9

    :goto_3
    if-eqz v2, :cond_10

    if-eqz p3, :cond_9

    invoke-virtual {p3, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    :cond_9
    if-gez v4, :cond_a

    move v4, v0

    :cond_a
    if-ltz v4, :cond_e

    if-nez p2, :cond_b

    goto :goto_5

    :cond_b
    iget p1, v5, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 p3, -0x64

    if-ne p1, p3, :cond_c

    iget p1, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->b1(I)I

    move-result p1

    iput p1, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    :cond_c
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget p3, v5, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, p3}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/zui/launcher/CellLayout;->setDropPending(Z)V

    new-instance p1, Lcom/zui/launcher/Launcher$s1;

    move-object v1, p1

    move-object v2, p0

    move v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/zui/launcher/Launcher$s1;-><init>(Lcom/zui/launcher/Launcher;IILcom/zui/launcher/util/PendingRequestArgs;Lcom/zui/launcher/CellLayout;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p2

    if-nez p2, :cond_d

    :goto_4
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v9, p1, v7, v8}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_6

    :cond_d
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_6

    :cond_e
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: appWidgetId (EXTRA_APPWIDGET_ID) was not returned from the widget configuration activity. appWidgetId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  resultCode: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " data: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Launcher"

    invoke-static {p2, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8, v4, v5}, Lcom/zui/launcher/Launcher;->T0(IILcom/zui/launcher/util/PendingRequestArgs;)V

    new-instance p1, Lcom/zui/launcher/Launcher$h1;

    invoke-direct {p1, p0}, Lcom/zui/launcher/Launcher$h1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p2

    if-nez p2, :cond_f

    goto :goto_4

    :cond_f
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_6
    return-void

    :cond_10
    const/16 v2, 0xd

    if-eq p1, v2, :cond_16

    const/16 v2, 0xc

    if-ne p1, v2, :cond_11

    goto :goto_8

    :cond_11
    if-ne p1, v9, :cond_14

    if-ne p2, v4, :cond_12

    iget v0, v5, Lcom/zui/launcher/ItemInfo;->container:I

    if-eq v0, v4, :cond_12

    invoke-direct {p0, p1, p3, v4, v5}, Lcom/zui/launcher/Launcher;->O0(ILandroid/content/Intent;ILcom/zui/launcher/util/PendingRequestArgs;)I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v9, v1, v7, v8}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    goto :goto_7

    :cond_12
    if-nez p2, :cond_14

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v9, v1, v7, v8}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :cond_13
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->j2()V

    :cond_14
    :goto_7
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->clearAnimatedView()V

    :cond_15
    return-void

    :cond_16
    :goto_8
    if-ne p2, v4, :cond_17

    invoke-direct {p0, p1, p3, v0, v5}, Lcom/zui/launcher/Launcher;->O0(ILandroid/content/Intent;ILcom/zui/launcher/util/PendingRequestArgs;)I

    :cond_17
    return-void
.end method

.method private m2()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->F1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    sget-object v0, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Workspace;->setState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/zui/launcher/Launcher;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/Launcher;->N0:I

    return p0
.end method

.method private n1()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.lenovo.action.auto_change_textcolor"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.notificationpanel.expand"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.action.WEATHER_WIDGET_CLICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->h1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->initializeDrawListener(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->T:Z

    return-void
.end method

.method private n2(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    iget v0, v0, Lcom/zui/launcher/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/zui/launcher/LauncherState;->values()[Lcom/zui/launcher/LauncherState;

    move-result-object v1

    aget-object v0, v1, v0

    iget-boolean v1, v0, Lcom/zui/launcher/LauncherState;->disableRestore:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    instance-of v1, v0, Lcom/zui/launcher/states/EditviewState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->C0:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    move-object v3, v0

    check-cast v3, Lcom/zui/launcher/states/EditviewState;

    invoke-virtual {v3, v1}, Lcom/zui/launcher/states/EditviewState;->restoreSavedParams([I)V

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_2
    const-string v0, "launcher.request_args"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/PendingRequestArgs;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    :cond_3
    const-string v0, "launcher.request_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Launcher;->K:I

    const-string v0, "launcher.activity_result"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/ActivityResultInfo;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    const-string v0, "launcher.widget_panel"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p0, v2}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->show(Lcom/zui/launcher/Launcher;Z)Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_4
    const-string v0, "launcher.downloading_packages"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->resumeAllDownload(Ljava/util/ArrayList;)V

    :cond_5
    return-void
.end method

.method static synthetic o(Lcom/zui/launcher/Launcher;ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/zui/launcher/Launcher;->L2(ILjava/lang/String;Ljava/lang/String;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private o1()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/LauncherState;->disableInteraction:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v3

    iget v3, v3, Lcom/zui/launcher/LauncherState;->containerType:I

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v4}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(III)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/logging/UserEventDispatcher;->startSession()V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    sget-object v0, Lcom/zui/launcher/model/AppLaunchTracker;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/AppLaunchTracker;

    invoke-virtual {v0}, Lcom/zui/launcher/model/AppLaunchTracker;->onReturnedToHome()V

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/ItemInstallQueue;->resumeModelPush(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->refreshShortcutsIfRequired()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-static {v0}, Lcom/zui/launcher/notification/NotificationListener;->setNotificationsChangedListener(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)V

    invoke-static {p0}, Lcom/zui/launcher/allapps/DiscoveryBounce;->showForHomeIfNeeded(Lcom/zui/launcher/Launcher;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    iget v0, p0, Lcom/zui/launcher/Launcher;->K:I

    if-eq v0, v4, :cond_0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/Launcher;->K:I

    invoke-static {p0, v0}, Lcom/zui/launcher/uioverrides/UiFactory;->resetPendingActivityResults(Lcom/zui/launcher/Launcher;I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->Q:Z

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->Q:Z

    :goto_0
    return-void
.end method

.method private o2()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    const/high16 v0, 0x10000

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    return-void
.end method

.method static synthetic p(Lcom/zui/launcher/Launcher;J)J
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/Launcher;->G1:J

    return-wide p1
.end method

.method private p0(Landroid/view/View;Landroid/view/View;III)[F
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    const/4 v4, 0x2

    new-array v5, v4, [F

    new-array v6, v4, [I

    iget-object v7, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v7, :cond_0

    return-object v5

    :cond_0
    invoke-virtual {v7, p1, v6}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    iget-object v7, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    if-nez v7, :cond_1

    return-object v5

    :cond_1
    iget-object v7, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v7, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-direct {v7, p3, p4}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_2

    aget v0, v6, v9

    add-int/2addr v0, p5

    iput v0, v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    aget p5, v6, v8

    sub-int/2addr v1, p4

    div-int/2addr v1, v4

    add-int/2addr p5, v1

    iput p5, v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    goto :goto_0

    :cond_2
    aget v1, v6, v9

    sub-int/2addr v0, p3

    div-int/2addr v0, v4

    add-int/2addr v1, v0

    iput v1, v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    aget v0, v6, v8

    add-int/2addr v0, p5

    iput v0, v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    :goto_0
    iput-boolean v8, v7, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2, v9}, Landroid/view/View;->setVisibility(I)V

    instance-of p5, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p5, :cond_5

    move-object p5, p1

    check-cast p5, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p5}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewHeight()I

    move-result p5

    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v2, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p3, p1

    sub-int/2addr p3, p5

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p1, p1, Lcom/zui/launcher/StartAppParams;->j:I

    add-int/2addr p3, p1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iget-object p3, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p3, p3, Lcom/zui/launcher/StartAppParams;->j:I

    add-int/2addr p3, p1

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p1, p1, Lcom/zui/launcher/StartAppParams;->k:I

    int-to-float p1, p1

    sub-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr p4, v0

    add-float/2addr p1, p4

    float-to-int p1, p1

    goto :goto_2

    :cond_4
    iget-object p4, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p4, p4, Lcom/zui/launcher/StartAppParams;->j:I

    int-to-float p4, p4

    sub-int/2addr p3, p5

    int-to-float p3, p3

    div-float/2addr p3, v0

    add-float/2addr p4, p3

    float-to-int p3, p4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p4, p4, Lcom/zui/launcher/StartAppParams;->k:I

    add-int/2addr p1, p4

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p4, p1, Lcom/zui/launcher/StartAppParams;->j:I

    iget p1, p1, Lcom/zui/launcher/StartAppParams;->k:I

    move p5, p3

    move p3, p4

    :goto_2
    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    int-to-float p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    iget p0, p0, Lcom/zui/launcher/StartAppParams;->e:I

    int-to-float p0, p0

    const p1, 0x3fd55571

    mul-float/2addr p0, p1

    int-to-float p1, p5

    const/high16 p3, 0x3f800000    # 1.0f

    mul-float/2addr p1, p3

    div-float/2addr p0, p1

    const/4 p1, 0x0

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p2, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    aput p0, v5, v9

    aput p1, v5, v8

    return-object v5
.end method

.method private p1()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->h1:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->T:Z

    :cond_0
    return-void
.end method

.method private p2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 5

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getShortcutInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object p1

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v1, v2, p1}, Lcom/zui/launcher/Hotseat;->getChildrenItem(II)Landroid/view/View;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XLauncher.scrollFolderInHotseat  view --\u300b"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "zdx1"

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.scrollFolderInHotseat---folder view: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/Launcher;->r2(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/Launcher;->y0(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method static synthetic q(Lcom/zui/launcher/Launcher;Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;)Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->s0:Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    return-object p1
.end method

.method private q1(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isInstalling()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/zui/launcher/DownloadSpan;->resumeTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/DownloadSpan;->pauseTask(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->pauseRecommendInfos(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "ro.config.zuk.region"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const p1, 0x7f12034a

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    const-string v2, "key_title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    invoke-virtual {p0, v1, v0}, Lcom/zui/launcher/Launcher;->showLauncherDialog(ILandroid/os/Bundle;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/DownloadSpan;->addTask(Lcom/zui/launcher/ItemInfo;)V

    :goto_1
    return-void
.end method

.method private q2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XLauncher.scrollFolderInWorkspace  locateItem -->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zdx1"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getShortcutInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v0

    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zui/launcher/Workspace;->getViewForTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.scrollFolderInWorkspace  view -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    instance-of p1, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XLauncher.scrollFolderInWorkspace---folder view: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/Launcher;->r2(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/zui/launcher/Launcher;->y0(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method static synthetic r(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->t0:Ljava/lang/String;

    return-object p1
.end method

.method private r0(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->deleteCacheByPackageName(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->bindAppOrFolderLast(Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method private r1(Lcom/zui/launcher/FolderInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/XDockViewLayout;->getChildItemAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/zui/launcher/ItemInfo;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->container:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v3, v4, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v0
.end method

.method private r2(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;)J
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XLauncher.scrollToScreenInFolder, itemInfo 1111  -->"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zdx1"

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/zui/launcher/folder/Folder;->searchFolderAppLocation(Lcom/zui/launcher/ItemInfo;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XLauncher.scrollToScreenInFolder, current 22222  screen: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    const/4 v0, 0x0

    if-lez p0, :cond_0

    move p0, v0

    :goto_0
    iget v1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    sub-int/2addr v1, v0

    if-ge p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->scrollRight()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    if-gez p0, :cond_2

    move p0, v0

    :goto_1
    iget v1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    rsub-int/lit8 v1, v1, 0x0

    if-ge p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->scrollLeft()V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-wide/16 p0, 0x3c

    if-eqz v0, :cond_3

    const-wide/16 p0, 0x190

    :cond_3
    return-wide p0
.end method

.method static synthetic s(Lcom/zui/launcher/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->u0:Ljava/lang/String;

    return-object p1
.end method

.method private s0(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 3

    iget-boolean v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->single:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/zui/launcher/LauncherModel;->getLeosWidgetsByComponent(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f120350

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/Launcher;->t0(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    iput-object v1, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->boundWidget:Landroid/view/View;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/zui/launcher/Launcher;->t0(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private s1(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasOptionFlag(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/qsb/QsbContainerView;->getSearchComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-object v2

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/BaseDraggingActivity;->mIsSafeModeEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/icons/IconCache;Z)V

    invoke-direct {p0, v1, p1}, Lcom/zui/launcher/Launcher;->W1(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return-object v1

    :cond_1
    sget-object v1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v3, "BIND_WIDGET"

    invoke-virtual {v1, v3}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v5, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v6, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Lcom/zui/launcher/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget v5, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v5}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v4

    :goto_0
    invoke-virtual {p1, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    const-string v5, "Launcher"

    const/4 v6, 0x0

    if-nez v3, :cond_b

    iget v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v3, :cond_b

    if-nez v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing restored widget: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " belongs to component "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", as the provider is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    return-object v2

    :cond_4
    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    const/4 v7, 0x4

    if-eqz v3, :cond_9

    const/16 v3, 0x10

    invoke-virtual {p1, v3}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v8}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v8

    iput v8, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget v8, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    or-int/2addr v3, v8

    iput v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    new-instance v3, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {v3, v4}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;-><init>(Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v8, v3, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v8, v3, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v8, v3, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v8, v3, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    invoke-virtual {v3, p0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    const/16 v8, 0x20

    invoke-virtual {p1, v8}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v9, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v3, :cond_5

    invoke-virtual {v9, v3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_5
    move-object v3, v9

    :cond_6
    iget-object v9, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget v10, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v9, v10, v4, v3}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v3

    iput-object v2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->bindOptions:Landroid/content/Intent;

    iget v9, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v9, v9, -0x21

    iput v9, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-eqz v3, :cond_a

    iget-object v3, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_7

    if-eqz v8, :cond_8

    :cond_7
    move v7, v6

    :cond_8
    iput v7, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v7}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-nez v3, :cond_b

    iput v6, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    :cond_a
    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_b
    iget v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    if-nez v3, :cond_d

    if-nez v4, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing invalid widget: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/zui/launcher/logging/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/model/ModelWriter;->deleteWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetHost;)V

    return-object v2

    :cond_c
    iget v0, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v0, v4, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, p0, v2, v4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    goto :goto_3

    :cond_d
    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz v4, :cond_e

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    iget v2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    new-instance v3, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-direct {v3, p0, p1, v5, v6}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/icons/IconCache;Z)V

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->addPendingView(ILcom/zui/launcher/widget/PendingAppWidgetHostView;)V

    goto :goto_2

    :cond_e
    new-instance v0, Lcom/zui/launcher/widget/PendingAppWidgetHostView;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-direct {v0, p0, p1, v2, v6}, Lcom/zui/launcher/widget/PendingAppWidgetHostView;-><init>(Landroid/content/Context;Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/icons/IconCache;Z)V

    :goto_3
    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/Launcher;->W1(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    sget-object p0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-object v0
.end method

.method private s2(Lcom/zui/launcher/ItemInfo;I)J
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const-wide/16 v1, 0x3c

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XLauncher.scrollToScreenInWorkspace, current screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", dest screen:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "zdx1"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    if-le p2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p2, p1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    :goto_0
    sub-int p1, p2, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    const/4 v3, 0x0

    if-le p2, v0, :cond_2

    :goto_1
    if-ge v3, p1, :cond_3

    add-int/lit8 p2, p1, -0x1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p2}, Lcom/zui/launcher/Workspace;->scrollRight()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ge p2, v0, :cond_4

    :goto_2
    sub-int p1, v0, p2

    if-ge v3, p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->scrollLeft()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    const-wide/16 v1, 0x1f4

    :cond_5
    return-wide v1
.end method

.method static synthetic t(Lcom/zui/launcher/Launcher;)Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->R0:Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

    return-object p0
.end method

.method private t1(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 2

    invoke-virtual {p1, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p1, p0, v0}, Lcom/zui/launcher/DeviceProfile;->getMultiWindowProfile(Landroid/content/Context;Landroid/graphics/Point;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->K2()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget-object v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->portraitProfile:Lcom/zui/launcher/DeviceProfile;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->getRotationMode(Lcom/zui/launcher/DeviceProfile;)Lcom/zui/launcher/graphics/RotationMode;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    sget-object p1, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/Launcher;->W:Lcom/zui/launcher/graphics/RotationMode;

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/states/RotationHelper;->updateRotationAnimation()V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onDeviceProfileInitiated()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/zui/launcher/LauncherModel;->getWriter(ZZ)Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    return-void
.end method

.method private t2()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.finishBindingAllApps"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.lenovo.leos.cloud.sync"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.lenovo.leos.cloud.sync.permission.COMMON_SERVICE_MANAGER"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.zui.cloudservice"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.zui.cloudservice.permission.COMMON_SERVICE_MANAGER"

    invoke-virtual {p0, v0, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic u(Lcom/zui/launcher/Launcher;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->Q0:Landroid/os/Handler;

    return-object p0
.end method

.method private u1()V
    .locals 6

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    const v3, 0x7f0d00a3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/XDockViewArea;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    invoke-virtual {v2, v3, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    const v2, 0x7f0a014e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/XDockView;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v1, p0, v2}, Lcom/zui/launcher/XDockViewArea;->setup(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/dragndrop/DragController;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v1}, Landroid/widget/HorizontalScrollView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/dragndrop/DragController;->addDragListener(Lcom/zui/launcher/dragndrop/DragController$DragListener;)V

    :cond_2
    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702b0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702af

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v3, -0x1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->dockviewBarHeightPx:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0702aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    const v5, 0x7f0a014d

    invoke-virtual {v3, v5}, Landroid/widget/HorizontalScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->dockviewTopPaddingPx:I

    invoke-virtual {v3, v1, v0, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, v2}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private u2(IJLcom/zui/launcher/model/LocateItem;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const-string p2, "search locate app"

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->C1:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->C1:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->C1:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic v(Lcom/zui/launcher/Launcher;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->q0:Landroid/widget/Toast;

    return-object p0
.end method

.method private v0(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V
    .locals 10

    move-object v6, p0

    iget-object v0, v6, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x140

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->a1(J)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p5, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v8, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/zui/launcher/Launcher$e1;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move/from16 v3, p6

    move v4, p5

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/zui/launcher/Launcher$e1;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;FFLandroid/animation/ValueAnimator;)V

    invoke-virtual {v8, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Lcom/zui/launcher/Launcher$f1;

    move-object v0, v9

    move v3, p5

    move/from16 v4, p6

    move-object v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/zui/launcher/Launcher$f1;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;FFLandroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p6}, Lcom/zui/launcher/Launcher;->P1(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;FF)V

    return-void
.end method

.method private v1()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->createLauncherCallbacks()Lcom/zui/launcher/LauncherCallbacksCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setLauncherCallbacks(Lcom/zui/launcher/LauncherCallbacks;)Z

    :cond_0
    return-void
.end method

.method private v2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    const/4 v0, 0x5

    const-wide/16 v1, 0xc8

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method static synthetic w(Lcom/zui/launcher/Launcher;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->q0:Landroid/widget/Toast;

    return-object p1
.end method

.method private w0(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->U0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->U0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    return-void

    :cond_1
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/zui/launcher/Launcher$c0;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/Launcher$c0;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lcom/zui/launcher/Launcher$d0;

    invoke-direct {p1, p0, p2}, Lcom/zui/launcher/Launcher$d0;-><init>(Lcom/zui/launcher/Launcher;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private w1(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/Launcher$v0;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/Launcher$v0;-><init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private w2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    const/4 v0, 0x3

    const-wide/16 v1, 0x3c

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method static synthetic x(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/XDockView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    return-object p0
.end method

.method private x0(Landroid/view/View;Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V
    .locals 13

    move-object v1, p0

    iget-object v0, v1, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, -0x2

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->createSnapshot(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :goto_0
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v0

    goto :goto_2

    :cond_0
    move-object/from16 v0, p3

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v4}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/zui/launcher/Launcher;->U0(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v4, v1, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v4}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    :goto_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, v1, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v5}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/XDockViewLayout;->getCellWidth()I

    move-result v5

    invoke-direct {v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    :goto_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getItemScale()F

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setPivotX(F)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v6, v8}, Landroid/view/View;->setScaleY(F)V

    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    new-instance v12, Lcom/zui/launcher/Launcher$x;

    move-object v0, v12

    move-object v1, p0

    move-object v7, p2

    move-object v9, p1

    move-object/from16 v10, p3

    invoke-direct/range {v0 .. v10}, Lcom/zui/launcher/Launcher$x;-><init>(Lcom/zui/launcher/Launcher;[IIIILandroid/view/View;Landroid/view/View;FLandroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static x1()Z
    .locals 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "config_gaussianblur_enabled"

    const-string v2, "bool"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGaussianBlurEnabled, resId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", enabled = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private x2(Lcom/zui/launcher/model/LocateItem;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p3, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method static synthetic y(Lcom/zui/launcher/Launcher;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->U0:Ljava/util/List;

    return-object p0
.end method

.method private y0(Lcom/zui/launcher/folder/Folder;Lcom/zui/launcher/ItemInfo;J)V
    .locals 3

    move-object v0, p2

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/folder/Folder;->getViewForInfo(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animateAppInFolder  itemInfo.toString: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", delay -->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", view -->"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "zdx1"

    invoke-static {v1, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/zui/launcher/Launcher;->V1(Lcom/zui/launcher/folder/Folder;Landroid/view/View;J)V

    goto :goto_0

    :cond_0
    const-string p1, "animateAppInFolder------view==null"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    :goto_0
    return-void
.end method

.method private y2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    const-string v0, "zdx1"

    const-string v1, "sendMessageScrollFolderInHotseat---"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    return-void
.end method

.method static synthetic z(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/EditViewPanel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    return-object p0
.end method

.method private z0(Lcom/zui/launcher/ItemInfo;J)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Hotseat;->getChildrenItem(II)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "itemIfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", view -->"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "zdx1"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/zui/launcher/Launcher;->playLocateAppHotseatAnim(Landroid/view/View;J)V

    return-void
.end method

.method public static synthetic z1(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->o1()V

    return-void
.end method

.method private z2(Lcom/zui/launcher/model/LocateItem;)V
    .locals 3

    const-string v0, "zdx1"

    const-string v1, "sendMessageScrollFolderInWorkspace---"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/zui/launcher/Launcher;->u2(IJLcom/zui/launcher/model/LocateItem;)V

    return-void
.end method


# virtual methods
.method public synthetic A1()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllAppsStore;->disableDeferUpdates(I)V

    return-void
.end method

.method A2(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->z1:Z

    return-void
.end method

.method public synthetic B1(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const/16 v1, 0xa4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->reapplyState(Z)V

    return-void
.end method

.method public synthetic C1(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->removeWidget(I)V

    return-void
.end method

.method C2(Lcom/zui/launcher/LeosWidgetInterface;)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->identifyWallpaper()Z

    move-result p0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/zui/launcher/LeosWidgetInterface;->setTimeTextColor(ZZ)V

    return-void
.end method

.method public synthetic E1(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    return-void
.end method

.method J0(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Workspace;Z)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(I)V

    return v1

    :cond_0
    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    if-eqz p4, :cond_2

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    return v1

    :cond_2
    iget p4, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p4, v2}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_4

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p2, p4}, Lcom/zui/launcher/LauncherModel;->filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    return v1

    :cond_4
    const/16 p4, -0x64

    const/4 v2, 0x2

    new-array v3, v2, [I

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v4, v3, v1

    invoke-virtual {p3, p1, p4, v0, v3}, Lcom/zui/launcher/Workspace;->M(Landroid/view/View;ILcom/zui/launcher/CellLayout;[I)Z

    move-result p4

    if-eqz p4, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "---------------addInscreen----createFolder---------"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug;->saveDoobaLog(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->K0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    return v5

    :cond_5
    new-array p4, v2, [I

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    aput v2, p4, v5

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    aput v2, p4, v1

    invoke-virtual {p3, p1, v0, p4}, Lcom/zui/launcher/Workspace;->B(Landroid/view/View;Lcom/zui/launcher/CellLayout;[I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->K0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_6
    return v5

    :cond_7
    :goto_0
    iget p0, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    return v1
.end method

.method L0(Lcom/zui/launcher/WorkspaceItemInfo;)Z
    .locals 11

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountX()I

    move-result v4

    invoke-virtual {v3}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getCellCountY()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_6

    move v7, v1

    :goto_2
    if-ge v7, v4, :cond_5

    invoke-virtual {v3, v7, v6}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_3

    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v9, v8, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v10, 0x1

    if-eqz v9, :cond_2

    check-cast v8, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p1, v8}, Lcom/zui/launcher/LauncherModel;->filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    return v10

    :cond_2
    instance-of v9, v8, Lcom/zui/launcher/FolderInfo;

    if-eqz v9, :cond_4

    check-cast v8, Lcom/zui/launcher/FolderInfo;

    iget-object v8, v8, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static {p1, v9}, Lcom/zui/launcher/LauncherModel;->filterEquals(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v9

    if-eqz v9, :cond_3

    return v10

    :cond_4
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method M0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 7

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v3, 0x0

    const/16 v4, -0x64

    if-eq v2, v4, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v4}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v2

    if-ltz v2, :cond_8

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v4}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/CellLayout;

    if-nez p0, :cond_2

    return v3

    :cond_2
    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_0
    if-ge v2, v0, :cond_7

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_1
    if-ge v4, v1, :cond_6

    invoke-virtual {p0, v2, v4}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0, v2, v4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/zui/launcher/ItemInfo;

    if-nez v6, :cond_3

    goto :goto_2

    :cond_3
    iget v6, p1, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/ItemInfo;

    iget v5, v5, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v6, v5, :cond_4

    goto :goto_2

    :cond_4
    return v3

    :cond_5
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x1

    return p0

    :cond_8
    :goto_3
    return v3
.end method

.method P0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V
    .locals 7

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {p4, p1}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    :cond_0
    if-nez p4, :cond_1

    return-void

    :cond_1
    new-instance v6, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v6, p1, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput v0, v6, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    invoke-virtual {p4}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isConfigurationOptional()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->setReconfigOptional(Z)V

    :cond_2
    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->spanY:I

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iput v0, v6, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    iget-object v0, p4, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, v6, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    iput-object v0, v6, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p4}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v6, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    const/16 v0, -0x64

    iput v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "completeAddAppWidget needConfig -->  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "   launcherInfo --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DummyAppWidgetView"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    iget v2, p2, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p2, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    if-nez p3, :cond_4

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p2, p0, p1, p4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object p3

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v6}, Lcom/zui/launcher/Workspace;->findViewByInfo(Lcom/zui/launcher/ItemInfo;)Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    invoke-direct {p0, p3, v6}, Lcom/zui/launcher/Launcher;->W1(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    iget-object p1, v6, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->U:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->h1()Lcom/zui/launcher/util/GalleySendPositionManager;

    move-result-object p1

    invoke-virtual {p1, p3, p0}, Lcom/zui/launcher/util/GalleySendPositionManager;->addSendThread(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/Launcher;)V

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p3, v6}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method

.method Q0(Lcom/zui/launcher/LenovoWidgetViewInfo;Landroid/view/View;)V
    .locals 7

    new-instance v6, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-direct {v6, p1}, Lcom/zui/launcher/LenovoWidgetViewInfo;-><init>(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, v6, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    if-nez p2, :cond_0

    iget-object p1, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/zui/launcher/GadgetUtilities;->fetchView(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p2, v6}, Lcom/zui/launcher/Launcher;->X1(Landroid/view/View;Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, p2, v6}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    instance-of p1, p2, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->C2(Lcom/zui/launcher/LeosWidgetInterface;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/zui/launcher/LeosWidgetInterface;->setConfiguring(Z)V

    :cond_1
    return-void
.end method

.method T0(IILcom/zui/launcher/util/PendingRequestArgs;)V
    .locals 12

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-------completeTwoStageWidgetDrop failed: cellLayout is null  screenId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v0, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v0, p3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p1

    iget v0, p3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {p1, v0, v3}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v3, v0, Lcom/zui/launcher/FavoriteWidgetView;

    if-nez v3, :cond_1

    instance-of v3, v0, Lcom/zui/launcher/DummyAppWidgetView;

    if-eqz v3, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iput p2, v3, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iput-object v2, v3, Lcom/zui/launcher/LauncherAppWidgetInfo;->g:Landroid/view/View;

    iget v2, v3, Lcom/zui/launcher/ItemInfo;->id:I

    if-eq v2, v1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 p1, 0x3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p3}, Lcom/zui/launcher/util/PendingRequestArgs;->getWidgetHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, p0, p2, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/Launcher$a2;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/zui/launcher/Launcher$a2;-><init>(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/util/PendingRequestArgs;Landroid/appwidget/AppWidgetHostView;)V

    move v8, p1

    move-object v9, v0

    move-object v7, v1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const/4 p1, 0x4

    move v8, p1

    goto :goto_0

    :cond_5
    move v8, v0

    :goto_0
    move-object v7, v2

    move-object v9, v7

    :goto_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/zui/launcher/dragndrop/DragView;

    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v3, p3

    invoke-virtual/range {v2 .. v11}, Lcom/zui/launcher/Workspace;->animateWidgetDrop(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/CellLayout;Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Ljava/lang/Runnable;ILandroid/view/View;ZZ)V

    goto :goto_2

    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    :cond_7
    :goto_2
    return-void
.end method

.method U0(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 4

    iget-object v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-static {p0, v0, p2, v1}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object v0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0049

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p1, p2, v0}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    sget-object p2, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-object p1
.end method

.method Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/Launcher;->U0(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public addAutoDownload(Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;>;>;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->addAutoDownload(Ljava/lang/String;Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public addFenLeiSkipCase(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 4

    iget-object v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/zui/launcher/category/AllAppsCategory;->addSkipCase(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_0
    return-void
.end method

.method public addLeosWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addLeosWidgetViewToWorkspace(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void
.end method

.method public addLeosWidgetViewToWorkspace(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 11

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;->className:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {p0, v1}, Lcom/zui/launcher/GadgetUtilities;->fetchView(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v2}, Lcom/zui/launcher/LeosWidgetInterface;->isReconfigurable()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setReconfigurable(Z)V

    invoke-interface {v2}, Lcom/zui/launcher/LeosWidgetInterface;->getConfigure()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/zui/launcher/LenovoWidgetViewInfo;->setConfigureIntent(Landroid/content/Intent;)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    const/16 v5, -0x64

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addLeosWidgetViewToWorkspace item = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/zui/launcher/ItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v10, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v4, v0

    invoke-virtual/range {v3 .. v10}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    if-eqz v1, :cond_2

    move-object p1, v0

    check-cast p1, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->C2(Lcom/zui/launcher/LeosWidgetInterface;)V

    :cond_2
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->l2()V

    if-eqz v1, :cond_3

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/zui/launcher/LeosWidgetInterface;->setConfiguring(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPendingItem(Lcom/zui/launcher/PendingAddItemInfo;II[III)V
    .locals 0

    iput p2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iput p3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    const/4 p2, 0x1

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    aget p3, p4, p3

    iput p3, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget p3, p4, p2

    iput p3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    :cond_0
    iput p5, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iput p6, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    iget p3, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eq p3, p2, :cond_5

    const/4 p2, 0x4

    if-eq p3, p2, :cond_4

    const/4 p2, 0x7

    if-eq p3, p2, :cond_3

    const/16 p2, 0x9

    if-eq p3, p2, :cond_2

    const/16 p2, 0xa

    if-ne p3, p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown item type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    check-cast p1, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->Y1(Lcom/zui/launcher/widget/PendingAddShortcutInfo;)V

    goto :goto_1

    :cond_3
    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->s0(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    goto :goto_1

    :cond_4
    :goto_0
    check-cast p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->m0(Lcom/zui/launcher/widget/PendingAddWidgetInfo;)V

    goto :goto_1

    :cond_5
    check-cast p1, Lcom/zui/launcher/widget/PendingAddShortcutInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->Z1(Lcom/zui/launcher/widget/PendingAddShortcutInfo;)V

    :goto_1
    return-void
.end method

.method public addPendingRemovedItems(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public addRecommendWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->addRecommendWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :cond_0
    return-void
.end method

.method public addWeatherWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->registerWeatherDataListener()V

    return-void
.end method

.method public addWidgetAfterAnimation(Lcom/zui/launcher/PendingAddItemInfo;)V
    .locals 1

    instance-of v0, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addWidgetReal(Lcom/zui/launcher/widget/PendingAddWidgetInfo;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addLeosWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addWidgetReal(Lcom/zui/launcher/widget/PendingAddWidgetInfo;)V
    .locals 10

    iget-object v3, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getHandler()Lcom/zui/launcher/widget/WidgetAddFlowHandler;

    move-result-object v8

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v8

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Launcher;->o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v5

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    iget-object v2, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, v5, v2, v0}, Lcom/zui/launcher/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p1

    invoke-virtual/range {v4 .. v9}, Lcom/zui/launcher/Launcher;->o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/zui/launcher/widget/PendingAddWidgetInfo;->info:Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->A0:Landroid/appwidget/AppWidgetProviderInfo;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p1, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    const-string v1, "appWidgetProvider"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 p1, 0xb

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :catch_0
    const-string p0, "MartinAddWidget"

    const-string p1, "error-----widget add error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public adjustViewLayer()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public animateAddWidget(Lcom/zui/launcher/PendingAddItemInfo;II[I[I[ILandroid/view/View;Landroid/graphics/Bitmap;Landroid/util/Size;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p7

    iget-object v5, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v5, :cond_0

    return-void

    :cond_0
    iput v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v3, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    move-object/from16 v5, p6

    iput-object v5, v1, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    const/4 v5, 0x0

    aget v6, p4, v5

    iput v6, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    const/4 v6, 0x1

    aget v7, p4, v6

    iput v7, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    aget v7, p5, v5

    iput v7, v1, Lcom/zui/launcher/ItemInfo;->spanX:I

    aget v7, p5, v6

    iput v7, v1, Lcom/zui/launcher/ItemInfo;->spanY:I

    const v7, 0x7f0a043f

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/widget/WidgetImageView;

    invoke-virtual {v7}, Lcom/zui/launcher/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v7}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    const/16 v8, 0xa

    new-array v8, v8, [F

    invoke-virtual {v4, v8}, Landroid/graphics/Matrix;->getValues([F)V

    aget v4, v8, v5

    const/4 v9, 0x4

    aget v8, v8, v9

    if-eqz p9, :cond_1

    if-eqz p8, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getWidth()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getHeight()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual/range {p9 .. p9}, Landroid/util/Size;->getHeight()I

    move-result v8

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-int v4, v9

    invoke-virtual {v7}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_0

    :cond_2
    check-cast v4, Lcom/zui/launcher/widget/WidgetCell;

    invoke-virtual {v4}, Lcom/zui/launcher/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/zui/launcher/widget/NavigableAppWidgetHostView;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v8

    goto :goto_0

    :cond_3
    move v4, v5

    move v8, v4

    :goto_0
    if-nez v7, :cond_4

    const-string v0, "xwj"

    const-string v1, "animateAddWidget child is null!!"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    const/4 v9, 0x2

    new-array v10, v9, [I

    fill-array-data v10, :array_0

    iget-object v11, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v11, v7, v10}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    aget v7, v10, v5

    aget v7, v10, v6

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v11

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v2, v11, v10}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    new-array v2, v9, [I

    fill-array-data v2, :array_1

    aget v12, p4, v5

    aget v13, p4, v6

    aget v14, p5, v5

    aget v15, p5, v6

    move-object/from16 v16, v2

    invoke-virtual/range {v11 .. v16}, Lcom/zui/launcher/CellLayout;->T(IIII[I)V

    aget v3, v10, v5

    aget v3, v2, v5

    iget-object v3, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v3}, Lcom/zui/launcher/Workspace;->getNewScale()F

    div-int/2addr v4, v9

    aget v3, v10, v6

    aget v2, v2, v6

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getNewScale()F

    div-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getCurrentWorkspaceScreen()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    new-array v3, v9, [I

    aget v4, p5, v5

    aget v7, p5, v6

    invoke-virtual {v2, v3, v4, v7}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    xor-int/2addr v2, v6

    if-eqz v2, :cond_5

    invoke-virtual {v0, v5}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_1

    :cond_5
    aget v2, v3, v5

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget v2, v3, v6

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/Launcher;->addWidgetAfterAnimation(Lcom/zui/launcher/PendingAddItemInfo;)V

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->D2()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public animateShortcut(Lcom/zui/launcher/widget/PendingAddShortcutInfo;II[I[ILandroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v4, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v4, :cond_0

    return-void

    :cond_0
    iput v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    iput v3, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    move-object/from16 v4, p5

    iput-object v4, v1, Lcom/zui/launcher/PendingAddItemInfo;->dropPos:[I

    const/4 v4, 0x0

    aget v5, p4, v4

    iput v5, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    const/4 v5, 0x1

    aget v6, p4, v5

    iput v6, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    const v6, 0x7f0a043f

    move-object/from16 v7, p6

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/widget/WidgetImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    invoke-virtual {v6}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    const/16 v10, 0xa

    new-array v10, v10, [F

    invoke-virtual {v9, v10}, Landroid/graphics/Matrix;->getValues([F)V

    aget v9, v10, v4

    const/4 v11, 0x4

    aget v10, v10, v11

    invoke-virtual {v6}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v9

    float-to-int v9, v11

    invoke-virtual {v6}, Lcom/zui/launcher/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v10

    float-to-int v10, v11

    const/4 v11, 0x2

    new-array v12, v11, [I

    fill-array-data v12, :array_0

    iget-object v13, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v13, v6, v12}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    aget v6, v12, v4

    sub-int/2addr v7, v9

    div-int/2addr v7, v11

    aget v6, v12, v5

    sub-int/2addr v8, v10

    div-int/2addr v8, v11

    new-array v6, v11, [I

    fill-array-data v6, :array_1

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    iget-object v3, v0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v3, v2, v6}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getItemScale()F

    move-result v7

    invoke-virtual {v3, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v8

    if-eqz v8, :cond_1

    iget v8, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    goto :goto_0

    :cond_1
    iget v8, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    :goto_0
    invoke-virtual {v3, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v10

    if-eqz v10, :cond_2

    iget v10, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    goto :goto_1

    :cond_2
    iget v10, v3, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v12

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v13

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v14

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v15

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v16

    sub-int v16, v16, v12

    sub-int v16, v16, v13

    div-int v8, v16, v8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    sub-int/2addr v2, v14

    sub-int/2addr v2, v15

    div-int/2addr v2, v10

    int-to-float v2, v8

    mul-float/2addr v2, v7

    float-to-int v2, v2

    aget v7, v6, v4

    aget v7, p4, v4

    div-int/2addr v2, v11

    div-int/2addr v9, v11

    aget v2, v6, v5

    aget v2, p4, v5

    invoke-virtual {v3, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/DeviceProfile;->iconPaddingTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getCurrentWorkspaceScreen()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    new-array v3, v11, [I

    invoke-virtual {v2, v3, v5, v5}, Lcom/zui/launcher/CellLayout;->findCellForSpan([III)Z

    move-result v2

    xor-int/2addr v2, v5

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    goto :goto_2

    :cond_3
    aget v2, v3, v4

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->cellX:I

    aget v2, v3, v5

    iput v2, v1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-direct/range {p0 .. p1}, Lcom/zui/launcher/Launcher;->Z1(Lcom/zui/launcher/widget/PendingAddShortcutInfo;)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->D2()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public animateWallpaperValueToNormal()V
    .locals 4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getNormalAlphaValue()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    if-le v1, v0, :cond_0

    const/4 v2, 0x0

    const/16 v3, 0x32

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :cond_0
    return-void
.end method

.method public applyDeskBlurByFactor(F)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/Launcher;->L1:I

    rsub-int/lit8 v1, v0, 0x48

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zui/launcher/Launcher;->J1:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    :cond_0
    return-void
.end method

.method public applyDeskBlurByFactorStart()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->J1:I

    iput v0, p0, Lcom/zui/launcher/Launcher;->L1:I

    :cond_1
    return-void
.end method

.method public applyDeskBlurSelfControl(J)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->J1:I

    const/16 v1, 0x48

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zui/launcher/Launcher;->g1(IIJ)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public autoDownloadAfterRestore()V
    .locals 7

    const-string v0, "autoDownloadAfterRestore --------"

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/DownloadSpan;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadSpan;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-static {p0, v2}, Lcom/zui/launcher/LauncherModel;->commitFirstLaunchAfterRestore(Landroid/content/Context;Z)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "after_restore_success_firstlaunch"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "restore_autodownload"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoDownloadAfterRestore    auto  ==== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " firstlaunch ===== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    const-string v4, "restore_autodownload_packagenames"

    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {v5, v0}, Lcom/zui/launcher/DownloadSpan;->addAutoDownload(Ljava/util/Set;)V

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {v0}, Lcom/zui/launcher/DownloadSpan;->resetDownLoadingApp()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    invoke-static {p0, v2}, Lcom/zui/launcher/LauncherModel;->commitFirstLaunchAfterRestore(Landroid/content/Context;Z)V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->o0:Ljava/util/Set;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoDownloadAfterRestore    packageSet==== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->o0:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "autoDownloadAfterRestore -sRecommendInfos-------"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "autoDownloadAfterRestore    find ==== "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->o0:Ljava/util/Set;

    if-eqz v4, :cond_6

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoDownloadAfterRestore    add==== "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DownloadSpan;->addAutoDownload(Ljava/util/Set;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public autoReorder()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->C0(Z)V

    return-void
.end method

.method public bindAddByRecommendItems(Ljava/util/ArrayList;II)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    const-string v0, ">>>>>bindAddByRecommendItems"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    :goto_0
    if-ge p2, p3, :cond_17

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/ItemInfo;

    const/4 v3, 0x0

    instance-of v4, v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>> shortcutInfo "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    :cond_0
    if-nez v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget v2, v3, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v4, -0x65

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v2, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->getRecommendItem(Landroid/content/ComponentName;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v2, :cond_8

    iget-object v2, v3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v8, v7, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_4

    if-nez v8, :cond_6

    :cond_4
    iget-object v8, v7, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_5

    iget-object v8, v7, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, v7

    goto :goto_4

    :cond_6
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-le v7, v8, :cond_16

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    goto :goto_4

    :cond_7
    :goto_2
    iput v6, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v5, v3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-direct {p0, v3}, Lcom/zui/launcher/Launcher;->r0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    const-string v2, "bindAddByRecommendItems add to workspace."

    :goto_3
    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_8
    :goto_4
    if-eqz v2, :cond_16

    iget-object v7, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_9

    goto/16 :goto_7

    :cond_9
    iget v7, v2, Lcom/zui/launcher/ItemInfo;->container:I

    iput v7, v3, Lcom/zui/launcher/ItemInfo;->container:I

    iget v7, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    iput v7, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v7, v2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iput v7, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, v2, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v7, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    iput v6, v3, Lcom/zui/launcher/ItemInfo;->itemType:I

    iput v5, v3, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v3}, Lcom/zui/launcher/ActiveIconCollector;->register(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ">>>>> recommendInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  recommend.id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget v5, v2, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v5, v6, :cond_e

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v5, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v5}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v4

    if-eqz v4, :cond_16

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v5, v6}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/WorkspaceItemInfo;->recommendReplaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {p0, v4, v3}, Lcom/zui/launcher/Launcher;->refreshDummyIcon(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_b
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Landroid/content/ComponentName;)V

    goto :goto_5

    :cond_c
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    :cond_d
    :goto_5
    const-string v2, ">>>>> remove old recommend shortcut on desktop."

    goto/16 :goto_3

    :cond_e
    if-ne v5, v4, :cond_13

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v4, :cond_f

    return-void

    :cond_f
    instance-of v5, v4, Lcom/zui/launcher/HotseatLayout;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/WorkspaceItemInfo;->recommendReplaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)Z

    move-result v5

    if-nez v5, :cond_10

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v5, v6}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/zui/launcher/Launcher;->refreshDummyIcon(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_10
    invoke-virtual {v4}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Landroid/content/ComponentName;)V

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    :cond_12
    :goto_6
    const-string v2, ">>>>> remove old recommend shortcut on hotseat."

    goto/16 :goto_3

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>>>> recommendInfo in folder "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {p0, v4}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v4

    if-eqz v4, :cond_16

    const-string v5, ">>>>> recommendInfo in folder recommendReplaceReal"

    invoke-static {v5}, Lcom/zui/launcher/util/Debug;->saveLauncherRecommendLog(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {v2, v3, v5}, Lcom/zui/launcher/WorkspaceItemInfo;->recommendReplaceReal(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-direct {p0, v4, v3}, Lcom/zui/launcher/Launcher;->b2(Lcom/zui/launcher/FolderInfo;Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_14
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Landroid/content/ComponentName;)V

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    iget-object v3, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_16

    iget-object v2, v2, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    :cond_16
    :goto_7
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void
.end method

.method public bindAddScreens(Lcom/zui/launcher/util/IntArray;)V
    .locals 4

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/IntArray;->get(I)I

    move-result v2

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreenBeforeEmptyScreen(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->handleOverlayScreenIndicator()V

    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->setApps(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bindAllWidgets(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->setAllWidgets(Ljava/util/List;)V

    return-void
.end method

.method public bindAppInfosRemoved(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->removeApps(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public bindAppWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->checkWidgetItemInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->s1(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1, v0, p1}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public bindAppWidgetByProvider(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 11

    iget-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------Launcher--bindAppWidgetByProvider----getComponent  provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v3}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result v3

    iput v3, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    iget v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->needConfig:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isReconfigOptional()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_2

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    if-ne v3, v5, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-eqz v3, :cond_4

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v0, v1}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->D0(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    return v4

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v3

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    iget v6, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v8, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v3, v6}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->hasDuplicatedWidgetId(I)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_5
    invoke-virtual {v3}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v6

    :cond_6
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed---allocateWidgetId "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v0}, Landroid/appwidget/AppWidgetManager;->bindAppWidgetIdIfAllowed(ILandroid/content/ComponentName;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------Launcher--bindAppWidgetByProvider---getProviderInfo-- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "   bindAppWidgetResult: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    if-nez v5, :cond_7

    invoke-virtual {v3, v6}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    return v1

    :cond_7
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v0, v3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v0}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_8
    iput v6, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v0, v5, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->label:Ljava/lang/String;

    iput-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {p0, v5}, Lcom/zui/launcher/Launcher;->getMinSpanForWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)[I

    move-result-object v0

    aget v1, v0, v1

    iput v1, p1, Lcom/zui/launcher/ItemInfo;->minSpanX:I

    aget v0, v0, v4

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->minSpanY:I

    const/4 v0, -0x1

    iput v0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-direct {p0, p1, v5}, Lcom/zui/launcher/Launcher;->E0(Lcom/zui/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    if-ne v1, v0, :cond_9

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v8, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v9, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v10, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    move-object v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/model/ModelWriter;->updateItemInDatabase(Lcom/zui/launcher/ItemInfo;)V

    :goto_1
    return v4

    :catch_0
    move-exception v2

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const-string p0, "-------Launcher--SecurityException---------"

    invoke-static {p0, v2}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed--failed--SecurityException "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v2

    invoke-static {p0, v0}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "------Launcher--bindAppWidgetByProvider---bindAppWidgetIdIfAllowed--failed--IllegalArgumentException "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/util/Debug;->saveAppWidgetLog(Ljava/lang/String;)V

    return v1
.end method

.method public bindAppWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->checkWidgetItemInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->hasDuplicatedWidgetId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/Launcher;->E0(Lcom/zui/launcher/LauncherAppWidgetInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    return-void

    :cond_2
    :goto_0
    const-string v0, "DummyAppWidgetView"

    const-string v1, "bindAppWidgetInfo  appWidgetInfo == null createWidgetByProviderFirst  --> "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindWidgetByProviderFirst(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    return-void
.end method

.method public bindAppsAdded(Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/util/IntArray;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/CachePair;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindAddScreens(Lcom/zui/launcher/util/IntArray;)V

    :cond_0
    const-wide/16 v0, 0x3e8

    const/4 p1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    if-nez p6, :cond_3

    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/ItemInfo;

    instance-of v8, v7, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v8, :cond_1

    check-cast v7, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v7}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, p1

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    or-int/2addr v6, v7

    goto :goto_0

    :cond_2
    if-eqz v6, :cond_3

    move-wide v5, v0

    goto :goto_2

    :cond_3
    move-wide v5, v2

    :goto_2
    cmp-long v7, v5, v2

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance v8, Lcom/zui/launcher/Launcher$d;

    invoke-direct {v8, p0, p5}, Lcom/zui/launcher/Launcher$d;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move p5, p1

    goto :goto_3

    :cond_4
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, p5, v4, v5}, Lcom/zui/launcher/Launcher;->bindAddByRecommendItems(Ljava/util/ArrayList;II)V

    :cond_5
    move p5, v4

    :goto_3
    if-eqz p4, :cond_9

    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    if-nez p6, :cond_7

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v4

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/model/CachePair;

    iget-object v7, v7, Lcom/zui/launcher/model/CachePair;->item:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v7}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_4

    :cond_6
    if-eqz v6, :cond_7

    move-wide v5, v0

    goto :goto_5

    :cond_7
    move-wide v5, v2

    :goto_5
    cmp-long v7, v5, v2

    if-eqz v7, :cond_8

    iget-object p5, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance v7, Lcom/zui/launcher/Launcher$e;

    invoke-direct {v7, p0, p4}, Lcom/zui/launcher/Launcher$e;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {p5, v7, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move p5, p1

    goto :goto_6

    :cond_8
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {p0, p4, v4, v5}, Lcom/zui/launcher/Launcher;->bindCacheItems(Ljava/util/ArrayList;II)V

    :cond_9
    :goto_6
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_e

    if-nez p6, :cond_c

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move v5, v4

    :goto_7
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ItemInfo;

    instance-of v7, v6, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v7, :cond_a

    check-cast v6, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v6}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, p1

    goto :goto_8

    :cond_a
    move v6, v4

    :goto_8
    or-int/2addr v5, v6

    goto :goto_7

    :cond_b
    if-eqz v5, :cond_c

    move-wide v5, v0

    goto :goto_9

    :cond_c
    move-wide v5, v2

    :goto_9
    cmp-long p4, v5, v2

    if-eqz p4, :cond_d

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance p5, Lcom/zui/launcher/Launcher$f;

    invoke-direct {p5, p0, p2}, Lcom/zui/launcher/Launcher$f;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {p4, p5, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    move p5, p1

    goto :goto_a

    :cond_d
    invoke-virtual {p0, p2, v4}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_e
    :goto_a
    if-eqz p3, :cond_13

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_13

    if-nez p6, :cond_11

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move p4, v4

    :goto_b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p6

    if-eqz p6, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/zui/launcher/ItemInfo;

    instance-of v5, p6, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v5, :cond_f

    check-cast p6, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {p6}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result p6

    if-eqz p6, :cond_f

    move p6, p1

    goto :goto_c

    :cond_f
    move p6, v4

    :goto_c
    or-int/2addr p4, p6

    goto :goto_b

    :cond_10
    if-eqz p4, :cond_11

    move-wide v5, v0

    goto :goto_d

    :cond_11
    move-wide v5, v2

    :goto_d
    cmp-long p2, v5, v2

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance p4, Lcom/zui/launcher/Launcher$g;

    invoke-direct {p4, p0, p3}, Lcom/zui/launcher/Launcher$g;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;)V

    invoke-virtual {p2, p4, v5, v6}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_e

    :cond_12
    invoke-virtual {p0, p3, p1}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    :cond_13
    move p1, p5

    :goto_e
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p2

    if-nez p2, :cond_15

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance p2, Lcom/zui/launcher/Launcher$h;

    invoke-direct {p2, p0}, Lcom/zui/launcher/Launcher$h;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_f

    :cond_14
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v4, v4}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreen(ZZ)V

    :cond_15
    :goto_f
    return-void
.end method

.method public bindAppsAddedOrUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/AppInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/AppInfo;->loadLookupKey()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public bindCacheItems(Ljava/util/ArrayList;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/CachePair;",
            ">;II)V"
        }
    .end annotation

    new-instance v0, Lcom/zui/launcher/Launcher$l1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/zui/launcher/Launcher$l1;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;II)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->R2(Lcom/zui/launcher/Launcher$e2;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    :goto_0
    if-ge p2, p3, :cond_c

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/CachePair;

    iget-object v3, v2, Lcom/zui/launcher/model/CachePair;->item:Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v2, v2, Lcom/zui/launcher/model/CachePair;->cache:Lcom/zui/launcher/CacheInfo;

    iget v4, v3, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v5, -0x65

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Lcom/zui/launcher/ActiveIconCollector;->register(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_2
    iget v4, v3, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v6, -0x64

    if-ne v4, v6, :cond_9

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v5}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v4

    if-nez v4, :cond_3

    goto/16 :goto_2

    :cond_3
    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->getCountX()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4}, Lcom/zui/launcher/CellLayout;->getCountY()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-ltz v5, :cond_8

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-gez v6, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v4, v5, v6}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v5

    if-eqz v5, :cond_6

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v7, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v6, v7}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v7, v6, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v7, :cond_5

    const/16 v8, 0x8

    if-ne v7, v8, :cond_6

    :cond_5
    invoke-virtual {v6}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/zui/launcher/WorkspaceItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v6, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v5, v6}, Lcom/zui/launcher/CellLayout;->removeViewAt(II)Landroid/view/View;

    move v5, v1

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->L0(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_7
    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/Workspace;->addInScreenFromBindAndCheck(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v4

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v4, v3, :cond_b

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_2

    :cond_8
    :goto_1
    invoke-direct {p0, v3}, Lcom/zui/launcher/Launcher;->r0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_2

    :cond_9
    if-ne v4, v5, :cond_a

    invoke-direct {p0, v3, v2}, Lcom/zui/launcher/Launcher;->l1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V

    goto :goto_2

    :cond_a
    invoke-direct {p0, v3, v2}, Lcom/zui/launcher/Launcher;->j1(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/CacheInfo;)V

    :cond_b
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void
.end method

.method public bindDeepShortcutMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/zui/launcher/util/ComponentKey;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->setDeepShortcutMap(Ljava/util/HashMap;)V

    return-void
.end method

.method public bindIncrementalDownloadProgressUpdated(Lcom/zui/launcher/AppInfo;)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->updateProgressBar(Lcom/zui/launcher/AppInfo;)V

    :cond_0
    return-void
.end method

.method public bindItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;ZZ)V

    return-void
.end method

.method public bindItems(Ljava/util/List;ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    if-eqz p2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->F0()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    iget-object v5, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x0

    const/4 v9, -0x1

    :goto_1
    if-ge v8, v6, :cond_14

    move-object/from16 v10, p1

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/launcher/ItemInfo;

    iget v12, v11, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v13, -0x65

    if-ne v12, v13, :cond_1

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    iget-object v12, v0, Lcom/zui/launcher/Launcher;->F1:Ljava/util/List;

    iget v13, v11, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :goto_2
    move/from16 v7, p3

    goto/16 :goto_7

    :cond_2
    iget v12, v11, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v13, -0x64

    if-ne v12, v13, :cond_3

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v14, v11, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v12, v14}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v12

    if-nez v12, :cond_3

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v14, v11, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v12, v14}, Lcom/zui/launcher/Workspace;->insertNewWorkspaceScreen(I)V

    :cond_3
    iget v12, v11, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v14, 0x4

    const/4 v15, 0x0

    if-eqz v12, :cond_8

    if-eq v12, v3, :cond_8

    const/4 v2, 0x2

    if-eq v12, v2, :cond_6

    if-eq v12, v14, :cond_5

    packed-switch v12, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid Item Type"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    move-object v2, v11

    check-cast v2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v12, v2, Lcom/zui/launcher/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-static {v0, v12}, Lcom/zui/launcher/GadgetUtilities;->fetchView(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_2

    :cond_4
    invoke-direct {v0, v15, v2}, Lcom/zui/launcher/Launcher;->X1(Landroid/view/View;Lcom/zui/launcher/LenovoWidgetViewInfo;)V

    goto :goto_3

    :cond_5
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "bindItems animateIcons --> "

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "DummyAppWidgetView"

    invoke-static {v12, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v11

    check-cast v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->bindAppWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :goto_3
    move/from16 v7, p3

    goto/16 :goto_6

    :cond_6
    move-object v2, v11

    check-cast v2, Lcom/zui/launcher/FolderInfo;

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v12, :cond_7

    iget-object v12, v2, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v7, v0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    invoke-virtual {v7, v15}, Lcom/zui/launcher/ActiveIconCollector;->register(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_4

    :cond_7
    const v7, 0x7f0d00bd

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v12

    invoke-virtual {v5, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    invoke-static {v7, v0, v12, v2}, Lcom/zui/launcher/folder/FolderIcon;->fromXml(ILcom/zui/launcher/Launcher;Landroid/view/ViewGroup;Lcom/zui/launcher/FolderInfo;)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object v15

    goto :goto_3

    :cond_8
    :pswitch_2
    move-object v2, v11

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->L0(Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_3

    :cond_9
    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v15

    iget v7, v11, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v7, v13, :cond_a

    move/from16 v7, p3

    invoke-virtual {v0, v15, v2, v5, v7}, Lcom/zui/launcher/Launcher;->J0(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Workspace;Z)Z

    move-result v12

    if-nez v12, :cond_b

    goto/16 :goto_7

    :cond_a
    move/from16 v7, p3

    :cond_b
    invoke-direct {v0, v2}, Lcom/zui/launcher/Launcher;->K0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v12, :cond_c

    invoke-virtual {v12, v2}, Lcom/zui/launcher/ActiveIconCollector;->register(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_c
    iget v12, v11, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v12, :cond_d

    move v12, v3

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_e

    invoke-static {}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->getInstance()Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;

    move-result-object v12

    invoke-virtual {v12, v0, v2, v3}, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->saveGameProviderInfo(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    :cond_e
    :goto_6
    if-nez v15, :cond_f

    goto/16 :goto_7

    :cond_f
    iget v2, v11, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/4 v12, 0x0

    if-eq v2, v14, :cond_12

    const/16 v14, 0xa

    if-eq v2, v14, :cond_12

    iget v2, v11, Lcom/zui/launcher/ItemInfo;->container:I

    if-ne v2, v13, :cond_11

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v13, v11, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v13}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_11

    iget v13, v11, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v14, v11, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v13, v14}, Lcom/zui/launcher/CellLayout;->isOccupied(II)Z

    move-result v13

    if-eqz v13, :cond_11

    iget v12, v11, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v13, v11, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v12, v13}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Collision while binding workspace item: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ". Collides with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v12, "Launcher"

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_7

    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "=========addInScreen   : "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/util/Debug;->saveLauncherModelLog(Ljava/lang/String;)V

    invoke-virtual {v5, v15, v11}, Lcom/zui/launcher/Workspace;->addInScreenFromBindAndCheck(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v5}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v2

    iget v13, v11, Lcom/zui/launcher/ItemInfo;->screenId:I

    if-ne v2, v13, :cond_12

    invoke-virtual {v15, v12}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    if-eqz v4, :cond_13

    invoke-virtual {v15, v12}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v15, v12}, Landroid/view/View;->setScaleY(F)V

    invoke-direct {v0, v15, v8}, Lcom/zui/launcher/Launcher;->X0(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget v9, v11, Lcom/zui/launcher/ItemInfo;->screenId:I

    :cond_13
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_14
    if-eqz v4, :cond_16

    const/4 v2, -0x1

    if-le v9, v2, :cond_16

    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/zui/launcher/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    iget-object v3, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v3, v9}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v3

    new-instance v4, Lcom/zui/launcher/n2;

    invoke-direct {v4, v2}, Lcom/zui/launcher/n2;-><init>(Landroid/animation/AnimatorSet;)V

    const-wide/16 v6, 0x1f4

    if-eq v9, v1, :cond_15

    iget-object v1, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance v2, Lcom/zui/launcher/Launcher$i;

    invoke-direct {v2, v0, v3, v4}, Lcom/zui/launcher/Launcher$i;-><init>(Lcom/zui/launcher/Launcher;ILjava/lang/Runnable;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    :cond_15
    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_16
    :goto_8
    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->requestLayout()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bindPromiseAppProgressUpdated(Lcom/zui/launcher/PromiseAppInfo;)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->updatePromiseAppProgress(Lcom/zui/launcher/PromiseAppInfo;)V

    :cond_1
    return-void
.end method

.method public bindRestoreItemsChange(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/zui/launcher/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->updateRestoreItems(Ljava/util/HashSet;)V

    return-void
.end method

.method public bindScreens(Lcom/zui/launcher/util/IntArray;)V
    .locals 3

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isQsbOnFirstScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/IntArray;->indexOf(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/IntArray;->removeValue(I)V

    invoke-virtual {p1, v1, v1}, Lcom/zui/launcher/util/IntArray;->add(II)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindAddScreens(Lcom/zui/launcher/util/IntArray;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->unlockWallpaperFromDefaultPageOnNextLayout()V

    return-void
.end method

.method public bindSearchedApp(Lcom/zui/launcher/WorkspaceItemInfo;Ljava/lang/String;Lcom/zui/launcher/util/IntArray;[IZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindSearchedApp  hasRecommendItem --> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Launcher"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/zui/launcher/ItemInfo;->container:I

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move-object/from16 v2, p3

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->bindAddScreens(Lcom/zui/launcher/util/IntArray;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->Y0(Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v7

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v7, p1, v2, v5}, Lcom/zui/launcher/Launcher;->J0(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/Workspace;Z)Z

    move-result v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bindSearchedApp, cell occupied status is : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    iget-object v6, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v8, v1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v9, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    aget v10, p4, v5

    aget v11, p4, v3

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v6 .. v13}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addInRecommendMap(Lcom/zui/launcher/WorkspaceItemInfo;)V

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDownloadHandler()Lcom/zui/launcher/DownloadSpan;

    move-result-object v2

    iget-object v5, v1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v6, p2

    invoke-virtual {v2, p1, v5, v6}, Lcom/zui/launcher/DownloadSpan;->startTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isOccupied --> "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, v1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v2, v1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v1

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v3, Lcom/zui/launcher/Launcher$g1;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/Launcher$g1;-><init>(Lcom/zui/launcher/Launcher;I)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public bindWidgetByProviderFirst(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 9

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindAppWidgetByProvider(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v8, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->W0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v1

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v4, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v5, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v6, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v7, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    move-object v0, v8

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addRecommendWidget(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    invoke-virtual {v8}, Lcom/zui/launcher/PagedView;->requestLayout()V

    const/4 p0, 0x0

    return p0
.end method

.method public bindWidgetsRestored(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->widgetsRestored(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bindWorkspaceComponentsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-------bindWorkspaceComponentsRemoved  matcher: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->removeItemsByMatcher(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/DragController;->onAppsRemoved(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->removeItemsByMatcher(Lcom/zui/launcher/util/ItemInfoMatcher;)V

    :cond_0
    return-void
.end method

.method public bindWorkspaceItemsChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->b1(Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isDockViewShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/XDockView;->M(Ljava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method protected calculateAppStartPos(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)[I
    .locals 44

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v13

    const/4 v14, 0x2

    new-array v15, v14, [I

    const/4 v6, 0x0

    if-eqz v8, :cond_0

    invoke-virtual {v8, v15}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    move v0, v6

    move v1, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    aget v2, v15, v6

    if-le v2, v5, :cond_1

    aget v2, v15, v6

    rem-int/2addr v2, v5

    aput v2, v15, v6

    :cond_1
    const/4 v3, 0x1

    if-eqz v11, :cond_7

    aget v2, v15, v3

    div-int/lit8 v16, v1, 0x2

    add-int v2, v2, v16

    instance-of v3, v8, Landroid/widget/TextView;

    if-eqz v3, :cond_4

    move-object v3, v8

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Lcom/zui/launcher/Launcher;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/2addr v1, v14

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v18

    sub-int v17, v17, v18

    sub-int v17, v17, v3

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    :goto_1
    aget v18, v15, v6

    add-int v18, v18, v17

    div-int/lit8 v19, v3, 0x2

    add-int v18, v18, v19

    move/from16 v19, v18

    move/from16 v18, v17

    move/from16 v17, v3

    move v3, v0

    move/from16 v0, v17

    goto :goto_2

    :cond_3
    move v3, v1

    move v1, v6

    move/from16 v17, v1

    move/from16 v18, v17

    move/from16 v19, v18

    :goto_2
    move/from16 v16, v0

    move/from16 v20, v17

    move/from16 v21, v18

    move/from16 v22, v19

    move/from16 v17, v1

    move/from16 v19, v2

    move/from16 v18, v3

    goto :goto_4

    :cond_4
    instance-of v3, v8, Lcom/zui/launcher/ActiveIconView;

    if-eqz v3, :cond_6

    move-object v3, v8

    check-cast v3, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    if-eqz v13, :cond_5

    aget v18, v15, v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    add-int v18, v18, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int v18, v18, v3

    div-int/lit8 v3, v17, 0x2

    sub-int v18, v18, v3

    goto :goto_3

    :cond_5
    aget v18, v15, v6

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    add-int v18, v18, v3

    div-int/lit8 v3, v17, 0x2

    add-int v18, v18, v3

    :goto_3
    move/from16 v19, v18

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v21, v6

    move/from16 v20, v17

    move/from16 v22, v19

    const/4 v3, 0x1

    goto/16 :goto_6

    :cond_6
    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v17, v6

    move/from16 v20, v17

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_4
    const/4 v3, 0x1

    goto/16 :goto_7

    :cond_7
    aget v2, v15, v6

    div-int/lit8 v3, v0, 0x2

    add-int v19, v2, v3

    instance-of v2, v8, Landroid/widget/TextView;

    if-eqz v2, :cond_9

    move-object v2, v8

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Lcom/zui/launcher/Launcher;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    div-int/2addr v0, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    const/16 v16, 0x1

    aget v17, v15, v16

    add-int v17, v17, v2

    div-int/lit8 v18, v1, 0x2

    add-int v17, v17, v18

    move/from16 v18, v0

    move v0, v3

    move/from16 v43, v2

    move v2, v1

    move/from16 v1, v43

    goto :goto_5

    :cond_8
    move v2, v1

    move v1, v6

    move v3, v1

    move/from16 v17, v3

    move/from16 v18, v17

    :goto_5
    move/from16 v16, v0

    move/from16 v20, v3

    move/from16 v21, v18

    move/from16 v22, v19

    const/4 v3, 0x1

    move/from16 v18, v2

    move/from16 v19, v17

    move/from16 v17, v1

    goto :goto_7

    :cond_9
    instance-of v2, v8, Lcom/zui/launcher/ActiveIconView;

    if-eqz v2, :cond_a

    move-object v2, v8

    check-cast v2, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    const/4 v3, 0x1

    aget v16, v15, v3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    add-int v16, v16, v2

    div-int/lit8 v2, v17, 0x2

    add-int v2, v16, v2

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v21, v6

    move/from16 v20, v17

    move/from16 v22, v19

    :goto_6
    move/from16 v19, v2

    move/from16 v17, v21

    goto :goto_7

    :cond_a
    const/4 v3, 0x1

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v17, v6

    move/from16 v20, v17

    move/from16 v21, v20

    move/from16 v22, v19

    move/from16 v19, v21

    :goto_7
    iget v0, v9, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_b

    iget-object v0, v7, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, v9, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    goto :goto_8

    :cond_b
    iget v0, v9, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_8
    move v1, v0

    iget v2, v9, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v0, v9, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v14, v9, Lcom/zui/launcher/ItemInfo;->container:I

    if-lez v14, :cond_10

    invoke-virtual {v7, v14}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object v6

    if-eqz v6, :cond_10

    iget v3, v6, Lcom/zui/launcher/ItemInfo;->container:I

    move/from16 v26, v0

    const/16 v0, -0x65

    if-ne v3, v0, :cond_c

    iget v0, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    goto :goto_9

    :cond_c
    iget-object v0, v7, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v3, v6, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v3}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    :goto_9
    move/from16 v27, v0

    iget v0, v6, Lcom/zui/launcher/ItemInfo;->container:I

    move v3, v1

    move/from16 v28, v2

    int-to-long v1, v0

    iget v0, v6, Lcom/zui/launcher/ItemInfo;->cellX:I

    move/from16 v29, v5

    iget v5, v6, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/16 v30, -0x1

    move/from16 v31, v26

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v40, v3

    move/from16 v3, v27

    move/from16 v41, v4

    move/from16 v4, v26

    move/from16 v8, v29

    move/from16 v25, v14

    const/16 v42, 0x0

    move-object v14, v6

    move/from16 v6, v30

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v15}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->getPreviewHeight()I

    move-result v20

    const/4 v1, 0x1

    if-eqz v11, :cond_e

    aget v2, v15, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    if-eqz v13, :cond_d

    aget v3, v15, v42

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v3, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v3, v0

    div-int/lit8 v0, v20, 0x2

    sub-int/2addr v3, v0

    goto :goto_a

    :cond_d
    aget v3, v15, v42

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    add-int/2addr v3, v0

    div-int/lit8 v0, v20, 0x2

    add-int/2addr v3, v0

    :goto_a
    move/from16 v19, v2

    move/from16 v22, v3

    goto :goto_b

    :cond_e
    aget v2, v15, v42

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    aget v3, v15, v1

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    add-int/2addr v3, v0

    div-int/lit8 v0, v20, 0x2

    add-int/2addr v3, v0

    move/from16 v22, v2

    move/from16 v19, v3

    :goto_b
    iget v0, v14, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, v14, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget v3, v14, Lcom/zui/launcher/ItemInfo;->container:I

    move/from16 v35, v0

    move/from16 v36, v2

    move v4, v3

    move/from16 v0, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v34, v27

    goto :goto_d

    :cond_f
    const/4 v1, 0x1

    move/from16 v0, v19

    move/from16 v2, v20

    move/from16 v3, v22

    move/from16 v34, v27

    const/4 v4, -0x1

    goto :goto_c

    :cond_10
    move/from16 v31, v0

    move/from16 v40, v1

    move/from16 v28, v2

    move v1, v3

    move/from16 v41, v4

    move v8, v5

    move/from16 v25, v14

    const/16 v42, 0x0

    move/from16 v0, v19

    move/from16 v2, v20

    move/from16 v3, v22

    const/4 v4, -0x1

    const/16 v34, -0x1

    :goto_c
    const/16 v35, -0x1

    const/16 v36, -0x1

    :goto_d
    const-string v5, "com.lenovo.leos.appstore"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.zui.browser"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_11

    const-string v5, "com.lenovo.browser"

    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    :cond_11
    iput-boolean v1, v7, Lcom/zui/launcher/Launcher;->l1:Z

    :cond_12
    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v6, v41

    if-eqz v12, :cond_13

    sub-int v11, v6, v8

    mul-int/2addr v11, v0

    int-to-float v11, v11

    int-to-float v13, v6

    mul-float/2addr v13, v5

    div-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v13, v8

    int-to-float v14, v2

    mul-float/2addr v14, v5

    div-float/2addr v13, v14

    move v14, v13

    move v13, v11

    move/from16 v11, v42

    goto :goto_e

    :cond_13
    sub-int v11, v8, v6

    mul-int/2addr v11, v3

    int-to-float v11, v11

    int-to-float v13, v8

    mul-float/2addr v13, v5

    div-float/2addr v11, v13

    float-to-int v11, v11

    int-to-float v13, v6

    int-to-float v14, v2

    mul-float/2addr v14, v5

    div-float/2addr v13, v14

    move v14, v13

    move/from16 v13, v42

    :goto_e
    int-to-float v3, v3

    int-to-float v2, v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v2, v15

    sub-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v0, v0

    sub-float/2addr v0, v2

    float-to-int v0, v0

    sub-int v2, v3, v11

    sub-int v11, v0, v13

    sub-float/2addr v14, v5

    div-float v13, v5, v14

    int-to-float v2, v2

    mul-float/2addr v2, v13

    float-to-int v2, v2

    int-to-float v11, v11

    mul-float/2addr v11, v13

    float-to-int v11, v11

    add-int/2addr v3, v2

    int-to-float v3, v3

    int-to-float v8, v8

    mul-float v13, v8, v5

    div-float v29, v3, v13

    add-int/2addr v0, v11

    int-to-float v0, v0

    int-to-float v3, v6

    mul-float/2addr v5, v3

    div-float v30, v0, v5

    const v0, 0x3e99999a    # 0.3f

    const/high16 v5, 0x3f000000    # 0.5f

    const v6, 0x3e2aab8a    # 0.16667f

    if-eqz v12, :cond_14

    mul-float v12, v3, v6

    mul-float/2addr v12, v5

    div-float/2addr v12, v8

    mul-float v13, v3, v0

    div-float/2addr v13, v8

    move/from16 v43, v13

    move v13, v0

    move/from16 v0, v43

    goto :goto_f

    :cond_14
    mul-float v12, v8, v6

    mul-float/2addr v12, v5

    div-float/2addr v12, v3

    mul-float v13, v8, v0

    div-float/2addr v13, v3

    move/from16 v43, v12

    move v12, v6

    move/from16 v6, v43

    :goto_f
    instance-of v14, v9, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v14, :cond_18

    iget v14, v9, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v14, :cond_18

    move/from16 v14, v40

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    if-ltz v25, :cond_15

    if-eq v4, v15, :cond_18

    :cond_15
    const-string v15, "android.permission.WRITE_SETTINGS"

    invoke-static {v7, v15}, Lcom/zui/launcher/Utilities;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_18

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {v29 .. v29}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa0

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, v9, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    if-nez v1, :cond_16

    const-wide/16 v19, 0x0

    goto :goto_10

    :cond_16
    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/compat/UserManagerCompat;

    move-result-object v1

    iget-object v6, v9, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v6}, Lcom/zui/launcher/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v19

    :goto_10
    move-wide/from16 v5, v19

    invoke-virtual {v15, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    new-instance v1, Lcom/zui/launcher/StartAppParams;

    iget v5, v9, Lcom/zui/launcher/ItemInfo;->id:I

    mul-float/2addr v8, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v8, v0

    float-to-int v6, v8

    mul-float/2addr v3, v13

    add-float/2addr v3, v0

    float-to-int v0, v3

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v39, 0x2

    goto :goto_11

    :cond_17
    const/16 v39, 0x1

    :goto_11
    move-object/from16 v23, v1

    move/from16 v24, v5

    move/from16 v26, v14

    move/from16 v27, v28

    move/from16 v28, v31

    move/from16 v31, v6

    move/from16 v32, v0

    move/from16 v33, v4

    move/from16 v37, v2

    move/from16 v38, v11

    invoke-direct/range {v23 .. v39}, Lcom/zui/launcher/StartAppParams;-><init>(IIIIIFFIIIIIIIII)V

    iput-object v1, v7, Lcom/zui/launcher/Launcher;->r1:Lcom/zui/launcher/StartAppParams;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------->start_app_param: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dododod"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, Lcom/zui/launcher/Launcher;->s1:Ljava/lang/String;

    invoke-virtual {v7, v0}, Lcom/zui/launcher/Launcher;->saveStartAppSettings(Ljava/lang/String;)V

    :cond_18
    const/4 v0, 0x4

    new-array v0, v0, [I

    aput v16, v0, v42

    const/4 v1, 0x1

    aput v18, v0, v1

    const/4 v1, 0x2

    aput v21, v0, v1

    const/4 v1, 0x3

    aput v17, v0, v1

    return-object v0
.end method

.method protected calculateAppStartPosInAllapps(Landroid/view/View;)[I
    .locals 10

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    goto :goto_0

    :cond_0
    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    aget v8, v3, v4

    if-le v8, v7, :cond_1

    aget v8, v3, v4

    rem-int/2addr v8, v7

    aput v8, v3, v4

    :cond_1
    if-eqz v0, :cond_5

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr v6, v0

    div-int/2addr v6, v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v5

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_2

    :cond_3
    instance-of p0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int/2addr v6, v5

    div-int/2addr v6, v2

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    sub-int/2addr p0, p1

    sub-int/2addr p0, v5

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    :goto_1
    move v0, p0

    move p0, v6

    move v6, v5

    goto :goto_3

    :cond_5
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr v5, v0

    div-int/2addr v5, v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move p0, v6

    move v6, p1

    move v9, v5

    move v5, v0

    move v0, v9

    goto :goto_2

    :cond_6
    move v0, v4

    move p0, v6

    move v6, v0

    :goto_2
    move v9, v6

    move v6, p0

    move p0, v9

    goto :goto_3

    :cond_7
    instance-of p0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz p0, :cond_8

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v0, v5, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    move v5, v6

    goto :goto_3

    :cond_8
    move p0, v4

    move v0, p0

    :goto_3
    const/4 p1, 0x4

    new-array p1, p1, [I

    aput v5, p1, v4

    const/4 v1, 0x1

    aput v6, p1, v1

    aput v0, p1, v2

    const/4 v0, 0x3

    aput p0, p1, v0

    return-object p1
.end method

.method public callPhone(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p1, "android.permission.CALL_PHONE"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public cancelDeskBlurSelfControl(J)V
    .locals 2

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->J1:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/zui/launcher/Launcher;->g1(IIJ)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->K1:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method public checkAndRebindOverlay()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/Launcher$x1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$x1;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public checkLauncherState(Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->c1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "checkLauncherState  1122double click!!"

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    if-nez v0, :cond_1

    const-string p0, "1122"

    const-string p1, "is locating"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const-string p0, "checkLauncherState  isAnimating  "

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public checkWidgetItemInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "DummyAppWidgetView"

    if-nez p1, :cond_0

    const-string p0, "checkWidgetItemInfo  checkWidgetPlacement  item == null    intercept  "

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->M0(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "checkWidgetItemInfo  checkWidgetPlacement  intercept    "

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public clearDeskBlur()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/config/FeatureFlags;->ENABLE_OVERALL_BLUR:Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/zui/launcher/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/Launcher;->J1:I

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p0

    invoke-static {p0, v0, v0}, Lcom/zui/launcher/BlurUtils;->applyBlur(Landroid/view/ViewRootImpl;IZ)V

    :cond_0
    return-void
.end method

.method public clearPendingBinds()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->markCompleted()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AllAppsStore;->disableDeferUpdatesSilently(I)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public clearPendingExecutor(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    :cond_0
    return-void
.end method

.method public clearSearchAppView()V
    .locals 1

    const-string v0, "clearSearchAppView"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->resetGlobalSearchViewState()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public clickShowOutOfSpaceMessage()V
    .locals 1

    const v0, 0x7f120075

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->S0()V

    return-void
.end method

.method public clickWorkspaceItemInEditViewMode(Landroid/view/View;)V
    .locals 6

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showLayoutLockedToast()V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v1, v0, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v2, -0x65

    if-ne v1, v2, :cond_1

    const-string p0, "Launcher"

    const-string p1, "edit view mode, this info is in hotseat. "

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getAnimationStatus()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/folder/FolderPagedView;->isReordering()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    move v4, v2

    :goto_1
    if-nez v1, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showDockView()V

    const-string v1, "Edit_State"

    const-string v4, "clickicontodockview"

    const-string v5, ""

    invoke-static {v1, v4, v5, v3}, Lcom/zui/launcher/XReaper;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->isDockViewFull()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1, v3}, Lcom/zui/launcher/XDockView;->setAnimationStatus(Z)V

    new-instance v1, Lcom/zui/launcher/Launcher$b0;

    invoke-direct {v1, p0, v0, p1}, Lcom/zui/launcher/Launcher$b0;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    invoke-direct {p0, p1, v1}, Lcom/zui/launcher/Launcher;->w0(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->showOutOfDockViewMessage()V

    instance-of p0, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz p0, :cond_7

    move-object p0, p1

    check-cast p0, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_7
    :goto_2
    return-void
.end method

.method public closeFolderAlphaHandle()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v1, 0xb4

    const/16 v2, 0x19

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4c

    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :goto_0
    return-void
.end method

.method public containsRecommendItem(Landroid/content/ComponentName;)Z
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public containsRecommendItem(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsRecommendWidget(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendWidgetInfos()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public correctRestoreData()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "after_restore_success_firstlaunch"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    return-void
.end method

.method public createActiveIconShortcut(ILandroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 2

    iget-object v0, p3, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-static {p0, v0, p3, v1}, Lcom/zui/launcher/ActiveIconUtil;->getActiveIconView(Landroid/content/Context;Ljava/lang/String;Lcom/zui/launcher/ItemInfoWithIcon;Lcom/zui/launcher/icons/IconCache;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p0, p3, v0}, Lcom/zui/launcher/ActiveIconView;->applyFromShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/view/View;)V

    sget-object p1, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public createLauncherCallbacks()Lcom/zui/launcher/LauncherCallbacksCompat;
    .locals 6

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getOverlayVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x49eca1c7

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x1d88e

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "zui"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v5

    goto :goto_0

    :cond_2
    const-string v3, "google"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/zui/launcher/SearchLauncherCallbacks;

    invoke-direct {v1, p0}, Lcom/zui/launcher/SearchLauncherCallbacks;-><init>(Lcom/zui/launcher/Launcher;)V

    goto :goto_1

    :cond_5
    new-instance v1, Lcom/zui/launcher/GoogleLauncherCallbacks;

    invoke-direct {v1, p0}, Lcom/zui/launcher/GoogleLauncherCallbacks;-><init>(Lcom/zui/launcher/Launcher;)V

    :goto_1
    return-object v1
.end method

.method public createShortcut(Landroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;
    .locals 3

    invoke-virtual {p2}, Lcom/zui/launcher/ItemInfoWithIcon;->isActiveIconApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/LauncherContext;->isCurrentThemeIsDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d0049

    invoke-virtual {p0, v0, p1, p2}, Lcom/zui/launcher/Launcher;->createActiveIconShortcut(ILandroid/view/ViewGroup;Lcom/zui/launcher/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0040

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    sget-object p2, Lcom/zui/launcher/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->mFocusHandler:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherContext;->getTextColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BubbleTextView;->setTextColor(I)V

    return-object p1
.end method

.method public createSnapshot(Landroid/view/View;)Landroid/view/View;
    .locals 1

    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public createSnapshotWidthText(Landroid/view/View;)Landroid/view/View;
    .locals 4

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/SnapTextView;

    invoke-direct {v1, p0}, Lcom/zui/launcher/SnapTextView;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v3, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->iconTextSizePx:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherContext;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/SnapTextView;->setTextColor(I)V

    new-instance v2, Lcom/zui/launcher/graphics/DragPreviewProvider;

    invoke-direct {v2, p1}, Lcom/zui/launcher/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    invoke-virtual {v2}, Lcom/zui/launcher/graphics/DragPreviewProvider;->createDragBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zui/launcher/Utilities;->drawImageDropShadow(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->createIconDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget p0, v0, Lcom/zui/launcher/DeviceProfile;->iconDrawablePaddingPx:I

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p1}, Lcom/zui/launcher/ActiveIconView;->getViewTitle()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    instance-of p0, p0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object p0, p0, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public dismissDockView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->dismissDockView(Z)V

    return-void
.end method

.method public dismissDockView(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->z0:Z

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->z0:Z

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez v1, :cond_0

    const v1, 0x7f120088

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/LauncherState;->getDescription(Lcom/zui/launcher/Launcher;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchTouchEvent called, ev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/132900132"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----Launcher  dispatchTouchEvent  no move ev: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dotGlobalSearchView()V
    .locals 5

    sget-object v0, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->c1:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "Quit"

    const-string v2, "QuitGSNavigation"

    const-string v3, "\u5bfc\u822a\u680f\u9000\u51fa"

    invoke-static {v1, v2, v3, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getIsGlobalAnimatorInterceptState()Z

    move-result v1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Launcher  globalAnimatorInterceptState scaleX -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ",interceptState -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->printLog(Ljava/lang/String;)V

    if-nez v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->exitExcessiveView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->resetSearchAnimatorState()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    return-void
.end method

.method protected downloadHDLauncher()V
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/DownloadHD;->j(Landroid/content/Context;)Lcom/zui/launcher/DownloadHD;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DownloadHD;->start()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    array-length v0, p4

    if-lez v0, :cond_4

    const/4 v0, 0x0

    aget-object v1, p4, v0

    const-string v2, "--all"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Workspace Items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageCount()I

    move-result v2

    const-string v3, "    "

    if-ge v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  Homescreen "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v2}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v2

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  Hotseat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    :goto_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Misc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmWorkspaceLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingRequestArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingActivityResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRotationHelper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1, p3}, Lcom/zui/launcher/views/BaseDragLayer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0, p1, p3}, Lcom/zui/launcher/LauncherStateManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/BaseActivity;->dumpMisc(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :try_start_0
    invoke-static {p3}, Lcom/zui/launcher/logging/FileLog;->flushAll(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/zui/launcher/LauncherModel;->dumpState(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_6

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/zui/launcher/LauncherCallbacks;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6
    invoke-static {}, Lcom/zui/launcher/networksdk/DownloadManager;->getInstance()Lcom/zui/launcher/networksdk/DownloadManager;

    move-result-object p0

    invoke-virtual {p0, p1, p3}, Lcom/zui/launcher/networksdk/DownloadManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enterEditAlphaHandle()V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v1, 0x19

    const/16 v2, 0x32

    const/4 v3, 0x1

    const/16 v4, 0xb4

    if-ge v0, v4, :cond_0

    const/16 v0, 0x4c

    invoke-virtual {p0, v3, v2, v1, v0}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    invoke-virtual {p0, v3, v2, v0, v1}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :goto_0
    return-void
.end method

.method public enterEditMode(Z)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->addExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    :cond_1
    sget-object p1, Lcom/zui/launcher/globalsearch/PivotType;->NORMAL_TO_EDIT:Lcom/zui/launcher/globalsearch/PivotType;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showDockView()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->c1()V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->hasNavigationBar(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/zui/launcher/Utilities;->getNavigationBarHeight()I

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->isHomeOrBackPressed:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->enterEditAlphaHandle()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setLeosWidgetsConfiguring(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/zui/launcher/EditViewPanel;->focusFirstChild()V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method public enterSearch()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->initViewPivotInfo()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setViewScalePoint(I)V

    return-void
.end method

.method public executeOnNextDraw(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->markCompleted()V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AllAppsStore;->enableDeferUpdates(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    new-instance v1, Lcom/zui/launcher/m1;

    invoke-direct {v1, p0}, Lcom/zui/launcher/m1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    invoke-virtual {p1, p0}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->attachTo(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public exitEditAlphaHandle()V
    .locals 5

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v1, 0xb4

    const/16 v2, 0x19

    const/16 v3, 0x32

    const/4 v4, 0x0

    if-ge v0, v1, :cond_1

    const/16 v0, 0x4c

    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInNormalState()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xc

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :cond_2
    :goto_0
    return-void
.end method

.method public exitEditMode(ZZ)Z
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12030e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isDockViewShowing()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    if-lez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->flyBackAllItems()Z

    move-result v2

    if-nez v2, :cond_3

    const-string p0, "------exitEditMode failed--flyBackAllItems failed"

    invoke-static {p0}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    return v0

    :cond_3
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    const-string p1, "MartinExpend"

    const-string p2, "exitEditMode  dismissWidgetListView"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/zui/launcher/globalsearch/PivotType;->EDIT_TO_NORMAL:Lcom/zui/launcher/globalsearch/PivotType;

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance p2, Lcom/zui/launcher/Launcher$a0;

    invoke-direct {p2, p0}, Lcom/zui/launcher/Launcher$a0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, v1, p2, v0, v1}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/Launcher;->I2(Z)V

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->dismissDockView(Z)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/dragndrop/DragController;->removeDropTarget(Lcom/zui/launcher/DropTarget;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->showIndicatorWhenExitEdit()V

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->exitEditAlphaHandle()V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setLeosWidgetsConfiguring(Z)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return v1
.end method

.method public exitEditViewState(Z)V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/AbstractFloatingView;->close(Z)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getAnimationStatus()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_2
    return-void
.end method

.method public exitSearch()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setViewScalePoint(I)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/PagedView;->setEnableOverscroll(Z)V

    :cond_0
    return-void
.end method

.method f1()V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->z1:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->z1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->autoReorder()V

    :cond_0
    return-void
.end method

.method public findFolderIcon(I)Lcom/zui/launcher/folder/FolderIcon;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/folder/FolderIcon;

    return-object p0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public finishBindingAllApps()V
    .locals 4

    const-string v0, "--------------finishBindingAllApps--------------------"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveDoobaLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->F1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const/16 v1, 0xa3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/zui/launcher/Launcher$e0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$e0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance v1, Lcom/zui/launcher/Launcher$f0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$f0;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getGlobalSearchView()Lcom/zui/launcher/GlobalSearchView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->setChangeGridOptionFlag(Landroid/content/Context;Z)V

    return-void
.end method

.method public finishBindingItems(I)V
    .locals 9

    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v1, "finishBindingItems"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "--------------finishBindingItems--------------------"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->saveDoobaLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->restoreInstanceStateForRemainingPages()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->u1()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/HotseatLayout;->reorderAllIcons()V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->E2(Z)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/zui/launcher/util/ActivityResultInfo;->requestCode:I

    iget v4, v2, Lcom/zui/launcher/util/ActivityResultInfo;->resultCode:I

    iget-object v2, v2, Lcom/zui/launcher/util/ActivityResultInfo;->data:Landroid/content/Intent;

    invoke-direct {p0, v3, v4, v2}, Lcom/zui/launcher/Launcher;->m1(IILandroid/content/Intent;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    :cond_2
    sget-object v2, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/model/ItemInstallQueue;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/zui/launcher/model/ItemInstallQueue;->resumeModelPush(I)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2, p1, p1}, Lcom/zui/launcher/PagedView;->setCurrentPage(II)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->setBubbleTextViewColor()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->notifyMissedNumChanged()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-virtual {p1, v2}, Lcom/zui/launcher/dot/ZuiDotDataListener;->setDotDataChangedListener(Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;)V

    :cond_3
    sget-object p1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/zui/launcher/AppStoreHelperProvider;->sendRequestToAppStore(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->justHasExtraEmptyScreen()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->commitExtraEmptyScreen()I

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    new-instance v1, Lcom/zui/launcher/Launcher$l;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$l;-><init>(Lcom/zui/launcher/Launcher;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1, v0, v2}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/Launcher;->H1:Ljava/util/Timer;

    if-eqz v3, :cond_6

    new-instance v4, Lcom/zui/launcher/Launcher$m;

    invoke-direct {v4, p0}, Lcom/zui/launcher/Launcher$m;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v5, 0x0

    const-wide/32 v7, 0x5265c00

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_6
    return-void
.end method

.method public finishFirstPageBind(Lcom/zui/launcher/util/ViewOnDrawExecutor;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->getValue()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    sget-object v2, Lcom/zui/launcher/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    new-array v1, v1, [F

    const/4 v4, 0x0

    aput v3, v1, v4

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p1, :cond_1

    new-instance v1, Lcom/zui/launcher/Launcher$j;

    invoke-direct {v1, p0, p1}, Lcom/zui/launcher/Launcher$j;-><init>(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/util/ViewOnDrawExecutor;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->onLoadAnimationCompleted()V

    :cond_3
    :goto_0
    return-void
.end method

.method public galleryWidgetSend(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->h1()Lcom/zui/launcher/util/GalleySendPositionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/zui/launcher/util/GalleySendPositionManager;->addSendThread(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/Launcher;)V

    :cond_0
    return-void
.end method

.method public galleryWidgetsSend()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getGalleryWidget()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->h1()Lcom/zui/launcher/util/GalleySendPositionManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/zui/launcher/util/GalleySendPositionManager;->addSendThread(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/Launcher;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    return-object p0
.end method

.method public getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->E:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    return-object p0
.end method

.method public getActivityLaunchOptions(Landroid/view/View;)Landroid/app/ActivityOptions;
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->l:Lcom/zui/launcher/LauncherAppTransitionManager;

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/LauncherAppTransitionManager;->getActivityLaunchOptions(Lcom/zui/launcher/Launcher;Landroid/view/View;)Landroid/app/ActivityOptions;

    move-result-object p0

    return-object p0
.end method

.method public getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    return-object p0
.end method

.method public getAllConfiguredLeosWidget()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/zui/launcher/LeosWidgetInterface;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/zui/launcher/LauncherModel;->getConfiguredLeosWidgets()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v4, v2, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v3, v4}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v8

    iget v3, v2, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v6, v3

    iget v9, v2, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v10, v2, Lcom/zui/launcher/ItemInfo;->cellY:I

    const/4 v11, -0x1

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/zui/launcher/Launcher;->d1(JIIII)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getAppStoreReceiver()Lcom/zui/launcher/AppStoreReceiver;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    return-object p0
.end method

.method public getAppTransitionManager()Lcom/zui/launcher/LauncherAppTransitionManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->l:Lcom/zui/launcher/LauncherAppTransitionManager;

    return-object p0
.end method

.method public getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    return-object p0
.end method

.method public getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-object p0
.end method

.method public getCellLayout(II)Lcom/zui/launcher/CellLayout;
    .locals 1

    const/16 v0, -0x65

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getCurrentState()I
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p0, v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDepthController()Lcom/zui/launcher/statehandlers/DepthController;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->I1:Lcom/zui/launcher/statehandlers/DepthController;

    return-object p0
.end method

.method public getDeviceProfile()Lcom/zui/launcher/DeviceProfile;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    :cond_0
    return-object v0
.end method

.method public getDockView()Lcom/zui/launcher/XDockView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    return-object p0
.end method

.method public getDockViewArea()Lcom/zui/launcher/XDockViewArea;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->u1()V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    return-object p0
.end method

.method public getDockViewTargetPosition(Landroid/view/View;Landroid/view/View;)[I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p2}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget-boolean p2, p2, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object p2

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v2, :cond_0

    const v2, 0x7f0702b0

    goto :goto_0

    :cond_0
    const v2, 0x7f0702af

    :goto_0
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    aget v1, v1, v0

    add-int/2addr v1, p0

    aget p2, p2, v0

    if-eq v1, p2, :cond_1

    aget p2, p1, v0

    add-int/2addr p2, p0

    aput p2, p1, v0

    :cond_1
    return-object p1
.end method

.method public getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/popup/PopupDataProvider;

    new-instance v1, Lcom/zui/launcher/g3;

    invoke-direct {v1, p0}, Lcom/zui/launcher/g3;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/popup/PopupDataProvider;-><init>(Lcom/zui/launcher/Launcher;Landroidx/core/util/Consumer;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->getDotInfoForItem(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public getDownloadHandler()Lcom/zui/launcher/DownloadSpan;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/DownloadSpan;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadSpan;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    return-object p0
.end method

.method public getDownloadStatus(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->getDownloadStatus(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :cond_0
    return-void
.end method

.method public getDownloadStatus(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->getDownloadStatus(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_0
    return-void
.end method

.method public getDragController()Lcom/zui/launcher/dragndrop/DragController;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/zui/launcher/views/BaseDragLayer;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetBar()Lcom/zui/launcher/DropTargetBar;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->u:Lcom/zui/launcher/DropTargetBar;

    return-object p0
.end method

.method public getEditViewPanel()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    return-object p0
.end method

.method public getFolderBackgoundColor()I
    .locals 1

    const/16 p0, 0x99

    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method public getFolderCenterPos(Lcom/zui/launcher/folder/Folder;[I)V
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderPagedView;->getCurrentCellLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/views/BaseDragLayer;->getLocationInDragLayer(Landroid/view/View;[I)F

    const/4 p0, 0x0

    aget v1, p2, p0

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p2, p0

    const/4 p0, 0x1

    aget v1, p2, p0

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result p1

    mul-float/2addr v0, p1

    div-float/2addr v0, v3

    add-float/2addr v1, v0

    float-to-int p1, v1

    aput p1, p2, p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->findFolderById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFolderTargetPosition(Lcom/zui/launcher/folder/Folder;Landroid/view/View;Landroid/view/View;)[I
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfo;

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    div-int/2addr v0, v2

    :goto_1
    if-eq v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/folder/Folder;->getContent()Lcom/zui/launcher/folder/FolderPagedView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    :cond_2
    invoke-virtual {p0, p2}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getItemScale()F

    move-result p0

    invoke-virtual {p2}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr p2, p0

    float-to-int p0, p2

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    const/4 p3, 0x0

    aget v1, p1, p3

    add-int/2addr v1, p0

    sub-int/2addr v1, p2

    aput v1, p1, p3

    const/4 p0, 0x1

    aget p2, p1, p0

    add-int/2addr p2, v0

    aput p2, p1, p0

    return-object p1
.end method

.method public getGlobalBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Y:Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchBackground;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->Y:Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Y:Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/globalsearch/GlobalSearchBackground;->getGlobalSearchBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getGlobalSearchView()Lcom/zui/launcher/GlobalSearchView;
    .locals 5

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/zui/launcher/GlobalSearchView;->getNightMode()Z

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGlobalSearchView  searchNightMode -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", localNightMode -->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GlobalSearch"

    invoke-static {v4, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eq v1, v0, :cond_0

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    if-nez v1, :cond_1

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d00c2

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/GlobalSearchView;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/GlobalSearchView;->setNightMode(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getGlobalBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/GlobalSearchView;->setBackgroundBg(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->verityScreenOrientation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->landScreenLayout()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->portScreenLayout()V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    return-object p0
.end method

.method public getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-direct {v0, p0}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->setCurrentPosition(Landroid/content/Context;I)V

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->a1:Z

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    return-object p0
.end method

.method public getHotseat()Lcom/zui/launcher/HotseatLayout;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    return-object p0
.end method

.method public getIndicator()Landroid/view/View;
    .locals 1

    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getIsLocationEnd()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    return p0
.end method

.method public getItemScale()F
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getEditModeItemScaleFactor()F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getLauncherCallbacks()Lcom/zui/launcher/LauncherCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    return-object p0
.end method

.method public getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->a0:Lcom/zui/launcher/LauncherDownLoadDialog;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/LauncherDownLoadDialog;

    invoke-direct {v0}, Lcom/zui/launcher/LauncherDownLoadDialog;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->a0:Lcom/zui/launcher/LauncherDownLoadDialog;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->a0:Lcom/zui/launcher/LauncherDownLoadDialog;

    return-object p0
.end method

.method public getLauncherRootView()Lcom/zui/launcher/LauncherRootView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->e1:Lcom/zui/launcher/LauncherRootView;

    return-object p0
.end method

.method public getLocationPosition(Landroid/view/View;)[I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p1, p0, v0, v1}, Lcom/zui/launcher/Utilities;->getDescendantCoordRelativeToParent(Landroid/view/View;Landroid/view/View;[IZ)F

    return-object v0
.end method

.method public getModel()Lcom/zui/launcher/LauncherModel;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    return-object p0
.end method

.method public getModelWriter()Lcom/zui/launcher/model/ModelWriter;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    return-object p0
.end method

.method public getNormalAlphaValue()I
    .locals 1

    iget p0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v0, 0xb4

    if-le p0, v0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    const/16 p0, 0x19

    return p0
.end method

.method public getNormalOverviewScaleAndOffset()[F
    .locals 0

    const/4 p0, 0x2

    new-array p0, p0, [F

    fill-array-data p0, :array_0

    return-object p0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public getOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->m:Landroid/content/res/Configuration;

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    return p0
.end method

.method public getOverviewPanel()Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->x:Landroid/view/View;

    return-object p0
.end method

.method public getPopupDataProvider()Lcom/zui/launcher/popup/PopupDataProvider;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    return-object p0
.end method

.method public getRecommendDownloadingPackages()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecommendItem(Landroid/content/ComponentName;)Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method public getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRecommendItemList(Z)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendInfos()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecommendWidgetList()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/LauncherModel;->getRecommendWidgetInfos()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppWidgetInfo;->isRecommend()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Lcom/zui/launcher/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public getReturnDialog()Landroid/app/Dialog;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    return-object p0
.end method

.method public bridge synthetic getRootView()Landroid/view/View;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p0

    return-object p0
.end method

.method public getRootView()Lcom/zui/launcher/LauncherRootView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    check-cast p0, Lcom/zui/launcher/LauncherRootView;

    return-object p0
.end method

.method public getRotationHelper()Lcom/zui/launcher/states/RotationHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    return-object p0
.end method

.method public getRotationMode()Lcom/zui/launcher/graphics/RotationMode;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->W:Lcom/zui/launcher/graphics/RotationMode;

    return-object p0
.end method

.method public getScrimView()Lcom/zui/launcher/views/ScrimView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    return-object p0
.end method

.method public getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Z:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    invoke-direct {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->Z:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->Z:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    return-object p0
.end method

.method public getSearchState()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->c1:Z

    return p0
.end method

.method public getSharedPrefs()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->H:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getSpTrackEvent()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i1:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "tractEvent"

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->i1:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->j1:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method public getStateManager()Lcom/zui/launcher/LauncherStateManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    return-object p0
.end method

.method public getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-object v0, p0, p1

    if-eqz v0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBlackOrWhite()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    return p0
.end method

.method public getWeatherDefaultData()V
    .locals 2

    sget-object v0, Lcom/zui/launcher/util/Executors;->UI_HELPER_EXECUTOR:Lcom/zui/launcher/util/LooperExecutor;

    new-instance v1, Lcom/zui/launcher/Launcher$w;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$w;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getWorkspace()Lcom/zui/launcher/Workspace;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    return-object p0
.end method

.method public getWorkspaceSourcePosition([IIIILandroid/view/View;)[I
    .locals 0

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    const/4 p3, 0x0

    aget p5, p1, p3

    add-int/2addr p5, p2

    sub-int/2addr p5, p0

    aput p5, p1, p3

    const/4 p0, 0x1

    aget p2, p1, p0

    add-int/2addr p2, p4

    aput p2, p1, p0

    return-object p1
.end method

.method public getWorkspaceTargetPosition(Landroid/view/View;Landroid/view/View;)[I
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getItemScale()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    iget-object v4, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v4}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v4

    aget v4, v4, v5

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    if-ltz v4, :cond_1

    invoke-virtual/range {p0 .. p1}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v4, v1

    float-to-int v1, v4

    aget v4, v0, v5

    add-int/2addr v4, v1

    sub-int/2addr v4, v2

    aput v4, v0, v5

    aget v1, v0, v7

    add-int/2addr v1, v3

    aput v1, v0, v7

    goto/16 :goto_5

    :cond_1
    iget-object v6, v0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v6, v7}, Lcom/zui/launcher/XDockView;->setAddLayoutMode(Z)V

    invoke-static/range {p0 .. p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v6

    new-array v8, v3, [I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/ItemInfo;

    iget-object v10, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v11, v9, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v10, v11}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v10

    iget-object v11, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v11}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/zui/launcher/Workspace;->getPageIndexForScreenId(I)I

    move-result v11

    iget-object v12, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v12}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/zui/launcher/Launcher;->getLocationPosition(Landroid/view/View;)[I

    move-result-object v12

    if-gez v4, :cond_2

    iget-object v4, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    aput v4, v12, v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v13

    if-eqz v13, :cond_3

    iget v13, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    goto :goto_1

    :cond_3
    iget v13, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    :goto_1
    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v14

    if-eqz v14, :cond_4

    iget v14, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    goto :goto_2

    :cond_4
    iget v14, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    :goto_2
    iget-object v15, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v15}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/ViewGroup;->getWidth()I

    move-result v15

    div-int/2addr v15, v13

    iget-object v13, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v13}, Lcom/zui/launcher/Workspace;->getCurrentDropLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getHeight()I

    move-result v13

    div-int/2addr v13, v14

    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v14

    if-eqz v14, :cond_5

    iget v14, v9, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-static {v14}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v14

    goto :goto_3

    :cond_5
    iget v14, v9, Lcom/zui/launcher/ItemInfo;->cellX:I

    :goto_3
    invoke-virtual {v4}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v9, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v9, v9, Lcom/zui/launcher/ItemInfo;->spanX:I

    iget v6, v6, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v4, v9, v6}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    goto :goto_4

    :cond_6
    iget v4, v9, Lcom/zui/launcher/ItemInfo;->cellY:I

    :goto_4
    aget v6, v12, v5

    mul-int/2addr v14, v15

    add-int/2addr v6, v14

    aput v6, v8, v5

    aget v6, v12, v7

    mul-int/2addr v13, v4

    add-int/2addr v6, v13

    aput v6, v8, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    div-int/2addr v15, v3

    aget v3, v8, v5

    add-int/2addr v3, v15

    sub-int/2addr v3, v2

    sub-int/2addr v10, v11

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v0

    mul-int/2addr v10, v0

    add-int/2addr v3, v10

    aput v3, v8, v5

    aget v0, v8, v7

    add-int/2addr v0, v1

    aput v0, v8, v7

    move-object v0, v8

    :goto_5
    return-object v0
.end method

.method public goToEditViewState(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_0
    return-void
.end method

.method public goToNormalState()V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_0
    return-void
.end method

.method public handlePendingRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->isLeosReordering()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    sget-object v1, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/Launcher$e2;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    sget-object v1, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v2}, Lcom/zui/launcher/Launcher$e2;->o()I

    move-result v3

    if-eqz v3, :cond_1

    return-void

    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/zui/launcher/Launcher$e2;->o()I

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/zui/launcher/Launcher$o1;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$o1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher$o1;->run()V

    :cond_3
    sget-object p0, Lcom/zui/launcher/Launcher;->R1:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public hasVerticalHotseat()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    return p0
.end method

.method public hasWhiteBg()Z
    .locals 1

    sget-object p0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v0, 0xd

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xb4

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public hidePanel(ZI)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/zui/launcher/LauncherCallbacks;->hide(ZI)V

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public hideScrimView()V
    .locals 0

    return-void
.end method

.method public identifyWallpaper()Z
    .locals 1

    sget-object p0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v0, 0xd

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    const/16 v0, 0xb4

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initFirstData(Landroid/content/Context;)V
    .locals 0

    invoke-static {}, Lcom/zui/launcher/networksdk/api/JsonRequest;->getInstance()Lcom/zui/launcher/networksdk/api/JsonRequest;

    invoke-static {}, Lcom/zui/launcher/networksdk/api/FileDownLoad;->getInstance()Lcom/zui/launcher/networksdk/api/FileDownLoad;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/networksdk/api/ImageLoader;->init(Landroid/content/Context;)Lcom/zui/launcher/networksdk/api/ImageLoader;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/category/db/CategoryPreference;->setCategorySharedPreferences(Landroid/content/Context;)V

    return-void
.end method

.method public initFolderOtherApps(Ljava/lang/String;ILjava/util/LinkedHashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/zui/launcher/LauncherModel;->findShortcutInfoByPackageName(Ljava/util/LinkedHashSet;Z)Ljava/util/LinkedHashSet;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->F0:Lcom/zui/launcher/fenlei/FenleiListView;

    invoke-virtual {v0, p3}, Lcom/zui/launcher/fenlei/FenleiListView;->setAppInfos(Ljava/util/LinkedHashSet;)V

    new-instance p3, Lcom/zui/launcher/Launcher$r;

    invoke-direct {p3, p0, p2, p1}, Lcom/zui/launcher/Launcher$r;-><init>(Lcom/zui/launcher/Launcher;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method protected initLauncherView()V
    .locals 3

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00d2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    return-void
.end method

.method public initViewPivotInfo()V
    .locals 9

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getIndicator()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v2

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    if-nez v3, :cond_2

    new-instance v3, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    invoke-direct {v3}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    :cond_2
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v3

    iget-boolean v3, v3, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->verityScreenOrientation()Z

    move-result v4

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    new-instance v6, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-direct {v6, v7, v0}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {v5, v6}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setWorkspacePivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    new-instance v5, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-direct {v5, v6, v1}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {v0, v5}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setIndicatorPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    new-instance v1, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v8

    invoke-direct {v1, v5, v2}, Lcom/zui/launcher/globalsearch/quicksBean/Pivot;-><init>(FF)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setHotseatPivot(Lcom/zui/launcher/globalsearch/quicksBean/Pivot;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setType(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    invoke-virtual {p0, v4}, Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;->setOrientation(Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public invalidateParent(Lcom/zui/launcher/ItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/zui/launcher/FolderInfo;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    iget-object p0, p0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {v1, p0}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;-><init>(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->setFolderInfo(Lcom/zui/launcher/FolderInfo;)V

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->rank:I

    invoke-virtual {v1, p0}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isAnimating(Z)Z

    move-result p0

    return p0
.end method

.method public isAnimating(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mIsAnimating = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->v1:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "mAnimateName = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "mWorkspace.isSwitchingState() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  mWorkspace.isHandlingTouch() = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    :cond_1
    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->v1:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->isSwitchingState()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public isDockViewShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->z0:Z

    return p0
.end method

.method public isDoingCloseAnim()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->t1:Z

    return p0
.end method

.method public isDraggingEnabled()Z
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isFolderOpened()Z
    .locals 0

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/AbstractFloatingView;->isOpen()Z

    move-result p0

    return p0
.end method

.method public isGlobalSearchViewShown()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInEditViewMode()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    return p0
.end method

.method public isInNormalState()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    return p0
.end method

.method public isInOverViewState()Z
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/zui/launcher/LauncherState;->QUICK_SWITCH:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isInState(Lcom/zui/launcher/LauncherState;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNavigationBarDark()Z
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v1, 0xd

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0xb4

    if-le p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isPaused()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->m1:Z

    return p0
.end method

.method public isStatusBarDark()Z
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v1, 0xf

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    const/16 v1, 0xb4

    if-le p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isStatusBarDark(Z)Z
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    return p0

    :cond_0
    sget-object p1, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v0, 0xf

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xb4

    if-le p1, v0, :cond_1

    const/4 p0, 0x1

    :cond_1
    return p0
.end method

.method public isWidgetConfigurable(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWorkspaceLoading()Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/Launcher;->y:Z

    return p0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->y:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    if-eqz p0, :cond_0

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

.method public launcherResume()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->H0()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getLeosWidgetInCurrentPage()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LeosWidgetInterface;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getGalleryWidget()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->h1()Lcom/zui/launcher/util/GalleySendPositionManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Lcom/zui/launcher/util/GalleySendPositionManager;->addSendThread(Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/Launcher;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->switchHotWord()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->m1:Z

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    new-array v3, v2, [[I

    new-array v4, v2, [I

    const/16 v5, -0x64

    aput v5, v4, v0

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v5

    const/4 v6, 0x1

    aput v5, v4, v6

    aput-object v4, v3, v0

    new-array v4, v2, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Lcom/zui/launcher/ActiveIconCollector;->onPageMove([[I)V

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->U0:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_3
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsStore;->justUpdateRecommendApp()V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->lenovoCpuState()V

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->updateWeather()V

    return-void

    :array_0
    .array-data 4
        -0x65
        0x0
    .end array-data
.end method

.method public locateItem(Lcom/zui/launcher/AppInfo;)V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locateItem  info  ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlobalSearch"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "zdx1"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v3

    iget-object p1, p1, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, p1}, Lcom/zui/launcher/LauncherModel;->getItemByComponent(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/zui/launcher/model/LocateItem;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XWorkspace.getItemByComponent--- locateItem:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getShortcutInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XLauncher locateapp---item screen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", item cellX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", item cellY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", item container:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/zui/launcher/model/LocateItem;->getFolderInfo()Lcom/zui/launcher/ItemInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XLauncher locateapp---folder screen:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", folder cellX:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellX:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", folder cellY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", folder container:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->B1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "!isAnimating()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "search locate app"

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->v2(Lcom/zui/launcher/model/LocateItem;)V

    :cond_4
    return-void
.end method

.method public mobaTimeWidgetAnimationState()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getLenovoMobaWeatherTimeAllChild()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/TimeWeatherWidgetView4X2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/timelaweather/View/MobaTimeWeatherWidgetView;->setClockAnimationStatus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public modifyUserEvent(Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 6

    iget-object v0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x1

    aget-object v2, v0, v1

    iget v2, v2, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    const/4 v2, 0x3

    new-array v3, v2, [Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    aput-object v5, v3, v4

    aget-object v0, v0, v1

    aput-object v0, v3, v1

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    iput-object v3, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p0

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p0, v0, :cond_0

    iget-object p0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p0, p0, v1

    const/4 p1, 0x4

    :goto_0
    iput p1, p0, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p0, v0, :cond_1

    iget-object p0, p1, Lcom/zui/launcher/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    aget-object p0, p0, v1

    const/16 p1, 0xc

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public moveItemAllToFolder(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "cannot get folder info"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, v4}, Lcom/zui/launcher/Workspace;->removeViewByInfo(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p1, v4, v2}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/zui/launcher/category/AllAppsCategory;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/category/AllAppsCategory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/category/AllAppsCategory;->showToastThird(Landroid/content/Context;)V

    return-void
.end method

.method public moveItemToFolder(ILjava/util/ArrayList;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/WorkspaceItemInfo;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getFolderInfoById(I)Lcom/zui/launcher/FolderInfo;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "cannot get folder info"

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    rem-int/2addr p3, v1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, p3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Workspace;->removeViewByInfo(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p1, v2, v0}, Lcom/zui/launcher/FolderInfo;->add(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p3
.end method

.method n0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/Launcher;->o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V

    return-void
.end method

.method public notifyMissedNumChanged()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Y0:Lcom/zui/launcher/Launcher$ContentObserverHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->Y0:Lcom/zui/launcher/Launcher$ContentObserverHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public notifySearchState()V
    .locals 0

    return-void
.end method

.method public notifySearchWidetStatus()V
    .locals 8

    new-instance v0, Lcom/zui/xlog/sdk/ParamMap;

    invoke-direct {v0}, Lcom/zui/xlog/sdk/ParamMap;-><init>()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/globalsearch/ObserverManager;->size()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "\u684c\u9762Weight\u72b6\u6001"

    const-string v4, "GSWidgetStatus"

    const-string v5, "Status"

    if-eqz v1, :cond_0

    const-string v1, "GSWidgetStatusOpen"

    const-string v6, "SearchWidget \u5f00\u542f"

    invoke-virtual {v0, v2, v1, v6}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    const-string v6, "GSWidgetStatusClose"

    const-string v7, "SearchWidget \u5173\u95ed"

    invoke-virtual {v0, v1, v6, v7}, Lcom/zui/xlog/sdk/ParamMap;->put(ILjava/lang/String;Ljava/lang/String;)Z

    :goto_0
    invoke-static {v5, v4, v3, v0}, Lcom/zui/launcher/XReaperGlobal;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/zui/xlog/sdk/ParamMap;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->j1:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    const-string v1, "widgetSearchEvent"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->j1:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->j1:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method o0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/WidgetAddFlowHandler;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p4, p0, p1, p2, v0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->startConfigActivity(Lcom/zui/launcher/Launcher;ILcom/zui/launcher/ItemInfo;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/Launcher$c;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$c;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p4, p0}, Lcom/zui/launcher/widget/WidgetAddFlowHandler;->getProviderInfo(Landroid/content/Context;)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/zui/launcher/Launcher;->P0(ILcom/zui/launcher/ItemInfo;Landroid/appwidget/AppWidgetHostView;Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p5, p2}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/Launcher;->K:I

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/Launcher;->m1(IILandroid/content/Intent;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherCallbacks;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onAppWidgetHostReset()V
    .locals 0

    return-void
.end method

.method public onAssistantVisibilityChanged(F)V
    .locals 3

    iput p1, p0, Lcom/zui/launcher/Launcher;->R:F

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object p1

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1, v2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz p0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/views/ScrimView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p0

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================Launcher onAttachedToWindow============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    const-string v0, "Launcher"

    const-string v1, "onBackPressed start-"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "finishAutoCancelActionMode return --"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/zui/launcher/LauncherCallbacks;->handleBackPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "mLauncherCallbacks return --"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    const-string p0, "mDragController.isDragging return --"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed topView --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/AbstractFloatingView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherState;->onBackPressed(Lcom/zui/launcher/Launcher;)V

    :goto_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dotGlobalSearchView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetDaulTimeZoneBg()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->m:Landroid/content/res/Configuration;

    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/zui/launcher/folder/Folder;->setLocaleDependentFields(Landroid/content/res/Resources;Z)V

    :cond_0
    and-int/lit16 v0, v0, 0x480

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->m2()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->R1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->pageIndicatorHeight:I

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->j0:Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    new-instance v1, Lcom/zui/launcher/Launcher$q0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$q0;-><init>(Lcom/zui/launcher/Launcher;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->m:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================Launcher onCreate============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    const-string v0, "Launcher.onCreate"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    sget-object v2, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v3, "Launcher-onCreate"

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->X:[Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/zui/launcher/Launcher;->k2([Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v2

    new-instance v4, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->m:Landroid/content/res/Configuration;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/LauncherAppState;->e(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    new-instance v4, Lcom/zui/launcher/states/RotationHelper;

    invoke-direct {v4, p0}, Lcom/zui/launcher/states/RotationHelper;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/zui/launcher/Launcher;->t1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {v4, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->H:Landroid/content/SharedPreferences;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    new-instance v2, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-direct {v2, p0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->E:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    new-instance v2, Lcom/zui/launcher/dragndrop/DragController;

    invoke-direct {v2, p0}, Lcom/zui/launcher/dragndrop/DragController;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    new-instance v2, Lcom/zui/launcher/allapps/AllAppsTransitionController;

    invoke-direct {v2, p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->w:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    new-instance v2, Lcom/zui/launcher/LauncherStateManager;

    invoke-direct {v2, p0}, Lcom/zui/launcher/LauncherStateManager;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onCreate(Lcom/zui/launcher/Launcher;)V

    new-instance v2, Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-direct {v2, p0}, Lcom/zui/launcher/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    new-instance v2, Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    new-instance v4, Lcom/zui/launcher/g1;

    invoke-direct {v4, p0}, Lcom/zui/launcher/g1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-direct {v2, p0, v4}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;Ljava/util/function/IntConsumer;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v2}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startListening()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->initLauncherView()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->F2()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->setViewInitState()V

    new-instance v2, Lcom/zui/launcher/popup/PopupDataProvider;

    new-instance v4, Lcom/zui/launcher/g3;

    invoke-direct {v4, p0}, Lcom/zui/launcher/g3;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-direct {v2, p0, v4}, Lcom/zui/launcher/popup/PopupDataProvider;-><init>(Lcom/zui/launcher/Launcher;Landroidx/core/util/Consumer;)V

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppTransitionManager;->newInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppTransitionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/zui/launcher/Launcher;->l:Lcom/zui/launcher/LauncherAppTransitionManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/zui/launcher/states/InternalStateHandler;->handleCreate(Lcom/zui/launcher/Launcher;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    const-string v4, "launcher.state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_1
    iget-object v4, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherRecommend;->onDestory()V

    :cond_2
    new-instance v4, Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {v4, p0}, Lcom/zui/launcher/LauncherRecommend;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v4, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->n2(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    const/16 v4, -0x3e9

    if-eqz p1, :cond_3

    const-string v5, "launcher.current_screen"

    invoke-virtual {p1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_3
    iget-object v5, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v5, v4}, Lcom/zui/launcher/LauncherModel;->startLoader(I)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2, v4}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    invoke-direct {p0, v1}, Lcom/zui/launcher/Launcher;->E2(Z)V

    :cond_5
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setDefaultKeyMode(I)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->mLauncherView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherRootView;->dispatchInsets()V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->k0:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->correctRestoreData()V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v2, :cond_6

    invoke-interface {v2, p1}, Lcom/zui/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    :cond_6
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {p1}, Lcom/zui/launcher/states/RotationHelper;->initialize()V

    sget-object p1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p1, v3}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    new-instance v2, Lcom/zui/launcher/Launcher$v;

    invoke-direct {v2, p0}, Lcom/zui/launcher/Launcher$v;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v0, v2}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-nez v0, :cond_7

    new-instance v0, Lcom/zui/launcher/DownloadSpan;

    invoke-direct {v0, p0}, Lcom/zui/launcher/DownloadSpan;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    :cond_7
    sput-boolean p1, Lcom/zui/launcher/globalsearch/utils/GlobalSearchUtils;->CACHE_VALID:Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->registerWeatherDataListener()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->h2()V

    invoke-static {}, Lcom/zui/launcher/LauncherAnimUtils;->onDestroyActivity()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotWordDownLoad()Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->i2()V

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->k1:Z

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->m1:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->registerAppStoreReceiver()V

    const-class p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/Launcher;->h0:I

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getGlobalBackground()Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->e2()V

    new-instance p1, Lcom/zui/launcher/ActiveIconCollector;

    invoke-direct {p1, p0}, Lcom/zui/launcher/ActiveIconCollector;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->f2()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->d2()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->c2()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/zui/launcher/dragndrop/DragLayer;->buildWallpaperCache(Z)V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->n1()V

    new-instance p1, Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-direct {p1}, Lcom/zui/launcher/dot/ZuiDotDataListener;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->N:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->g2()V

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->H1:Ljava/util/Timer;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================Launcher onDestroy============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onDestroy()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->p1()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->M2()V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->N2()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k0:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->setReorderingChangedListener(Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->removeFolderListeners()V

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->g0:Lcom/zui/launcher/Launcher$GuestureReceiver;

    invoke-virtual {v0, v2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->M:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->M:Ljava/lang/Runnable;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherModel;->isCurrentCallbacks(Lcom/zui/launcher/LauncherModel$Callbacks;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->stopLoader()V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherAppState;->e(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherModel;

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->L:Lcom/zui/launcher/states/RotationHelper;

    invoke-virtual {v0}, Lcom/zui/launcher/states/RotationHelper;->destroy()V

    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Launcher"

    const-string v3, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->clearPendingBinds()V

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->removeOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onDestroy()V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherRecommend;->onDestory()V

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/zui/launcher/DownloadSpan;->terminate()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->b0:Lcom/zui/launcher/util/GalleySendPositionManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/zui/launcher/util/GalleySendPositionManager;->clearAll()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->b0:Lcom/zui/launcher/util/GalleySendPositionManager;

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->Q2()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->unregisterZuiDotObserver()V

    invoke-static {}, Lcom/zui/launcher/LauncherAnimUtils;->onDestroyActivity()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    invoke-static {}, Lcom/zui/launcher/globalsearch/ObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/ObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/ObserverManager;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->x:Landroid/view/View;

    instance-of v2, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v2, :cond_8

    check-cast v0, Lcom/zui/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/zui/quickstep/views/RecentsView;->reset()V

    :cond_8
    iput-object v1, p0, Lcom/zui/launcher/Launcher;->x:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-eqz v0, :cond_9

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    :cond_9
    iput-object v1, p0, Lcom/zui/launcher/Launcher;->l:Lcom/zui/launcher/LauncherAppTransitionManager;

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->D0:Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;

    invoke-virtual {v0, v2}, Lcom/zui/quickstep/SysUINavigationMode;->removeModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->P2()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->unregisterAppStoreReceiver()V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->O2()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherDownLoadDialog;->recyclerDialog()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->Y:Lcom/zui/launcher/globalsearch/GlobalSearchBackground;

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->Z:Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuUtills;->recyclerCpuUtils()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->endAllPolling(Z)Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->recycler()V

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->recycler()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->H1:Ljava/util/Timer;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->H1:Ljava/util/Timer;

    :cond_a
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=================Launcher onDetachedFromWindow============"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->debugCreateLog(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rotationChanged, newRotation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mLastRotaion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/Launcher;->h0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/zui/launcher/Launcher;->h0:I

    if-eq p1, v0, :cond_2

    if-ltz p1, :cond_2

    add-int/lit8 v1, v0, -0x2

    if-eq p1, v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->o2()V

    :cond_1
    iput p1, p0, Lcom/zui/launcher/Launcher;->h0:I

    :cond_2
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onEditViewWidgetsBtnClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    sget-object p0, Lcom/zui/launcher/globalsearch/PivotType;->OTHER:Lcom/zui/launcher/globalsearch/PivotType;

    invoke-static {p1}, Lcom/zui/launcher/views/OptionsPopupView;->onWidgetsClicked(Landroid/view/View;)Z

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onEnterAnimationComplete(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->w:Lcom/zui/launcher/allapps/AllAppsTransitionController;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->highlightWorkTabIfNecessary()V

    :cond_0
    return-void
.end method

.method protected onErrorStartingShortcut(Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.CALL_PHONE"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xe

    invoke-static {v1, p1, p2}, Lcom/zui/launcher/util/PendingRequestArgs;->forIntent(ILandroid/content/Intent;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishBindingItems()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherModel;->loadLookupKeys()V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->d0()V

    :cond_0
    return-void
.end method

.method public onFolderOpen(Lcom/zui/launcher/FolderInfo;)V
    .locals 4

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->id:I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/zui/launcher/ActiveIconCollector;->onPageMove([[I)V

    :cond_0
    return-void
.end method

.method public onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->R1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/16 v0, 0x1000

    invoke-virtual {p2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1d

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x33

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/zui/launcher/views/OptionsPopupView;->openWidgets(Lcom/zui/launcher/Launcher;)Z

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/zui/launcher/BubbleTextView;

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/ItemInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->E:Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/ItemInfo;

    const v4, 0x7f0a0053

    invoke-virtual {v2, v0, v3, v4}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/zui/launcher/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/popup/PopupContainerWithArrow;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return v1

    :cond_2
    new-instance v0, Lcom/zui/launcher/keyboard/CustomActionsPopup;

    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/zui/launcher/keyboard/CustomActionsPopup;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/zui/launcher/keyboard/CustomActionsPopup;->show()Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_3
    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object p1, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    return v1

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onLauncherProviderChanged()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/zui/launcher/LauncherCallbacks;->onLauncherProviderChange()V

    :cond_0
    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/BaseActivity;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    iget-object p1, p1, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->t1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->dispatchDeviceProfileChanged()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v1, "NEW_INTENT"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "locateApp"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "QuickSearch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "component"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    if-eqz v2, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.lenovo.action.ACTION_LOCATE_APP"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance v0, Lcom/zui/launcher/Launcher$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$b;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p0

    const v1, 0xc350

    iput v1, p0, Landroid/os/Message;->what:I

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v4, 0x400000

    and-int/2addr v0, v4

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_2

    sget-object v4, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v4}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v6

    invoke-static {p0, p1, v6}, Lcom/zui/launcher/states/InternalStateHandler;->handleNewIntent(Lcom/zui/launcher/Launcher;Landroid/content/Intent;Z)Z

    move-result p1

    if-eqz v5, :cond_9

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v5

    invoke-static {p0, v5}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViews(Lcom/zui/launcher/views/ActivityContext;Z)V

    sget-boolean v5, Lcom/zui/launcher/config/BaseFlags;->DEBUG_FREEFORM:Z

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/systemui/shared/system/QuickStepContract;->hideVisibleUFreeformsByHome()Z

    :cond_3
    sget-object v5, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v5}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    sget-object v6, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v5, v6, v3}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    const-wide/16 v5, 0xc8

    invoke-virtual {p0, v5, v6}, Lcom/zui/launcher/Launcher;->cancelDeskBlurSelfControl(J)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v5, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v5, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {v5}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_5
    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->isStarted()Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/zui/launcher/allapps/AllAppsContainerView;->reset(Z)V

    :cond_6
    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->isHandlingTouch()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/zui/launcher/k2;

    invoke-direct {v4, v0}, Lcom/zui/launcher/k2;-><init>(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_7
    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewIntent resetLocationAppState mIsLocationEnd ="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "GlobalSearch"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v4}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v4

    iget v4, v4, Lcom/zui/launcher/LauncherState;->containerType:I

    invoke-static {v4}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    iget-object v5, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v5}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v5

    iput v5, v4, Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    invoke-static {v2}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    invoke-virtual {v0, v3, v4, v2}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(ILcom/zui/launcher/userevent/nano/LauncherLogProto$Target;Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zui/launcher/util/UiThreadHelper;->hideKeyboardAsync(Lcom/zui/launcher/views/ActivityContext;Landroid/os/IBinder;)V

    :cond_8
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_9

    invoke-interface {v0, p1}, Lcom/zui/launcher/LauncherCallbacks;->onHomeIntent(Z)V

    :cond_9
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->dotGlobalSearchView()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetDaulTimeZoneBg()V

    sget-object p1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getLauncherDownLoadDialog()Lcom/zui/launcher/LauncherDownLoadDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherDownLoadDialog;->dismissDownLoadDialog()V

    return-void
.end method

.method public onPackageInstallResult(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageInstallResult, resultcode====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n package===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/DownloadSpan;->onPackageInstallResult(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPageBoundSynchronously(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/Launcher;->G:I

    return-void
.end method

.method public onPageMove(II)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [[I

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    aput p2, v3, v1

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/zui/launcher/ActiveIconCollector;->onPageMove([[I)V

    :cond_0
    const/16 v0, -0x64

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->G0(I)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 3

    const-string v0, "Launcher"

    const-string v1, "---------->Launcher onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zui/launcher/model/ItemInstallQueue;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/model/ItemInstallQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/model/ItemInstallQueue;->pauseModelPush(I)V

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onPause()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->resetLastGestureUpTime()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->u:Lcom/zui/launcher/DropTargetBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/zui/launcher/DropTargetBar;->animateToVisibility(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onPause()V

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->a1:Z

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->m1:Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->H0()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherViewCurrentPage()Lcom/zui/launcher/TimeWidgetLongClickViewOne;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewOne;->setClockAnimationStatus(Z)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->hasTimeWeatherWidgetView4X2CurrentPage()Lcom/zui/launcher/TimeWeatherWidgetView4X2old;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/AbsTimeWeatherWidgetViewTwo;->setClockAnimationStatus(Z)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewThreeChild()Lcom/zui/launcher/TimeWeatherWidgetViewThreeChild;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/zui/timelaweather/View/TimeWeatherWidgetViewThree;->setClockAnimationStatus(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewFiveChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChild;->setClockAnimationStatus(Z)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getWeatherWidgetViewSixChild()Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/zui/launcher/globalsearch/widgetview/LenovoTogetherViewChildSix;->setClockAnimationStatus(Z)V

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->mobaTimeWidgetAnimationState()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->widgetAnimationWState()V

    :cond_6
    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->endAllPolling(Z)Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->setActivityResumed(Z)V

    return-void
.end method

.method public onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/KeyboardShortcutGroup;",
            ">;",
            "Landroid/view/Menu;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    const/16 v2, 0x1000

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f120085

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1d

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f120734

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x33

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/zui/launcher/keyboard/CustomActionsPopup;

    invoke-direct {v3, p0, v1}, Lcom/zui/launcher/keyboard/CustomActionsPopup;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v3}, Lcom/zui/launcher/keyboard/CustomActionsPopup;->canShow()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Landroid/view/KeyboardShortcutInfo;

    const v4, 0x7f120298

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v5, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/zui/launcher/ItemInfo;

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/ItemInfo;

    invoke-static {v1}, Lcom/zui/launcher/util/ShortcutUtil;->supportsShortcuts(Lcom/zui/launcher/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v3, 0x7f120626

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    invoke-direct {v1, v3, v4, v2}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f1203f1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    const/16 v1, 0xe

    if-ne p1, v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/zui/launcher/util/PendingRequestArgs;->getRequestCode()I

    move-result v2

    if-ne v2, v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    iget v2, v0, Lcom/zui/launcher/ItemInfo;->container:I

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {p0, v2, v3}, Lcom/zui/launcher/Launcher;->getCellLayout(II)Lcom/zui/launcher/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v0, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v4, v0, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v2, v3, v4}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/zui/launcher/util/PendingRequestArgs;->getPendingIntent()Landroid/content/Intent;

    move-result-object v0

    array-length v3, p3

    const/4 v4, 0x0

    if-lez v3, :cond_1

    aget v3, p3, v4

    if-nez v3, :cond_1

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/zui/launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    goto :goto_1

    :cond_1
    const v0, 0x7f1204ee

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f12030c

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherCallbacks;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget p0, p0, Lcom/zui/launcher/Launcher;->G:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/Workspace;->restoreInstanceStateForChild(I)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const-string v0, "Launcher.onResume"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    sget-object v1, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v2, "ON_RESUME"

    invoke-virtual {v1, v2}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onResume()V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->P:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->P:Ljava/lang/Runnable;

    invoke-static {v1, v3}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/Launcher$OnResumeCallback;

    invoke-interface {v3}, Lcom/zui/launcher/Launcher$OnResumeCallback;->onLauncherResume()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->z:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/zui/launcher/LauncherCallbacks;->onResume()V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->launcherResume()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->revertStatusIcon()V

    sget-object p0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    const-string v1, "launcher.current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/LauncherState;->ordinal:I

    const-string v1, "launcher.state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    const-string v1, "launcher.widget_panel"

    if-eqz v0, :cond_1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :goto_0
    const v0, 0x35d8b

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    if-eqz v0, :cond_2

    const-string v2, "launcher.request_args"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    iget v0, p0, Lcom/zui/launcher/Launcher;->K:I

    const-string v2, "launcher.request_code"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->I:Lcom/zui/launcher/util/ActivityResultInfo;

    if-eqz v0, :cond_3

    const-string v2, "launcher.activity_result"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRecommendDownloadingPackages()Ljava/util/ArrayList;

    move-result-object v0

    const-string v2, "launcher.downloading_packages"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    aput v2, v0, v1

    :cond_4
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    aput v1, v0, v2

    :cond_5
    iget-object v1, p0, Lcom/zui/launcher/Launcher;->C0:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_7

    invoke-interface {p0, p1}, Lcom/zui/launcher/LauncherCallbacks;->onSaveInstanceState(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method protected onStart()V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    const-string v1, "Launcher.onStart"

    if-eqz v0, :cond_0

    const-string v0, "b/134532571"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Launcher"

    const-string v2, "Launcher.onStart----"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    invoke-super {p0}, Lcom/zui/launcher/BaseDraggingActivity;->onStart()V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/zui/launcher/LauncherCallbacks;->onStart()V

    :cond_1
    iget-object v2, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v2, v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-static {v2}, Lcom/zui/launcher/notification/NotificationListener;->setNotificationsChangedListener(Lcom/zui/launcher/notification/NotificationListener$NotificationsChangedListener;)V

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    if-eqz v2, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->F:Lcom/zui/launcher/popup/PopupDataProvider;

    invoke-virtual {v2, p0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->setDotDataChangedListener(Lcom/zui/launcher/dot/ZuiDotDataListener$ZuiDotDataChangedListener;)V

    :cond_2
    const/4 p0, 0x0

    invoke-static {v1, p0}, Lcom/zui/launcher/util/RaceConditionTracker;->onEvent(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    return-void
.end method

.method protected onStateSet(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {v0, p1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->setStateIsNormal(Z)V

    iget-boolean p1, p0, Lcom/zui/launcher/Launcher;->Q:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->o1()V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lcom/zui/launcher/LauncherCallbacks;->onStateChanged()V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 4

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onStop()V

    const-string v0, "Launcher"

    const-string v1, "Launcher-onStop, super call"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onStop()V

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v2}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v2

    iget v2, v2, Lcom/zui/launcher/LauncherState;->containerType:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionCommand(III)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->setActivityStarted(Z)V

    invoke-static {}, Lcom/zui/launcher/notification/NotificationListener;->removeNotificationsChangedListener()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->l0:Lcom/zui/launcher/dot/ZuiDotDataListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/dot/ZuiDotDataListener;->removeDotDataChangedListener()V

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->moveToRestState()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->l1:Z

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->onTrimMemory(I)V

    invoke-static {v1}, Lcom/zui/launcher/FirstFrameAnimatorHelper;->setIsVisible(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconCollector;->onLauncherStop()V

    :cond_2
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onTrimMemory(I)V

    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->releaseMemory()I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/zui/launcher/LauncherCallbacks;->onTrimMemory(I)V

    :cond_1
    invoke-static {p0, p1}, Lcom/zui/launcher/uioverrides/UiFactory;->onTrimMemory(Landroid/content/Context;I)V

    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    invoke-super {p0}, Lcom/zui/launcher/BaseActivity;->onUserLeaveHint()V

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->onLauncherStateOrResumeChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    invoke-super {p0, p1}, Lcom/zui/launcher/BaseActivity;->onWindowFocusChanged(Z)V

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->n1:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->o1:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isStatusBarDark()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(IZ)V

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->o1:Z

    :cond_0
    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->p1:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v3, 0xd

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    const/16 v3, 0xb4

    if-le v1, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    :try_start_0
    invoke-static {p0, v1}, Lcom/zui/launcher/Utilities;->setNavigationBarDark(Landroid/app/Activity;Z)V

    invoke-static {p0, v1}, Lcom/zui/launcher/Utilities;->saveNavigationDarkFlag(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set navigationbar color error  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "launcher"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->p1:Z

    :cond_2
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x4

    goto :goto_2

    :cond_3
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v1, v2, v3}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    xor-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->setNavigationBarDark(Landroid/app/Activity;Z)V

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------onWindowFocusChanged----focus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Launcher"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->onWindowFocusChanged()V

    return-void
.end method

.method public openFolderAlphaHandle()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v1, 0xb4

    const/16 v2, 0x19

    const/16 v3, 0x32

    const/4 v4, 0x1

    if-le v0, v1, :cond_1

    const/16 v0, 0xc

    invoke-virtual {p0, v4, v3, v0, v2}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x4c

    invoke-virtual {p0, v4, v3, v2, v0}, Lcom/zui/launcher/Launcher;->setWindowBlur(ZIII)V

    :goto_0
    return-void
.end method

.method public pauseRecommendInfos(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :goto_1
    invoke-virtual {v2}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isDownloadPause()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    goto :goto_3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    :goto_3
    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public pauseRecommendInfos(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public pauseRecommendInfos(Ljava/lang/String;ZI)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v0, p3}, Lcom/zui/launcher/WorkspaceItemInfo;->setDownloadProgress(I)V

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {p1, p3}, Lcom/zui/launcher/ItemInfo;->setDownloadProgress(I)V

    invoke-virtual {p1}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public playFolderAnimExtraInPro()V
    .locals 8

    const-string v0, "ZuiLauncher"

    invoke-static {v0}, Lcom/zui/launcher/util/Debug;->printStack(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/Launcher;->H0:I

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p0, Lcom/zui/launcher/Launcher;->H0:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {p0, v5, v4}, Lcom/zui/launcher/Launcher;->O1(II)Landroid/view/animation/Animation;

    move-result-object v4

    instance-of v5, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v5, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->setShadowsEnabled(Z)V

    invoke-interface {v5, v1}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_1
    new-instance v5, Lcom/zui/launcher/Launcher$n;

    invoke-direct {v5, p0, v3}, Lcom/zui/launcher/Launcher$n;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/HotseatLayout;->showBackground(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    move v4, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_4

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/Launcher;->O1(II)Landroid/view/animation/Animation;

    move-result-object v6

    new-instance v7, Lcom/zui/launcher/Launcher$o;

    invoke-direct {v7, p0, v5}, Lcom/zui/launcher/Launcher$o;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_6
    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    :goto_3
    if-eqz v0, :cond_8

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    invoke-direct {p0, v2, v3}, Lcom/zui/launcher/Launcher;->O1(II)Landroid/view/animation/Animation;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/Launcher$p;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/Launcher$p;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    return-void
.end method

.method public playFolderAnimExtraOutPro(Z)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p0, Lcom/zui/launcher/Launcher;->H0:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p0, Lcom/zui/launcher/Launcher;->H0:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/PagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v6, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v6}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v6}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eq v3, v6, :cond_3

    :cond_1
    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/CellLayout$LayoutParams;

    instance-of v6, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v6, :cond_2

    move-object v6, v3

    check-cast v6, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v6, v5}, Lcom/zui/launcher/WorkspaceIconCompat;->setShadowsEnabled(Z)V

    invoke-interface {v6, v5}, Lcom/zui/launcher/WorkspaceIconCompat;->setTextVisibility(Z)V

    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/Launcher;->U1(Landroid/view/View;Z)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0, v5}, Lcom/zui/launcher/HotseatLayout;->showBackground(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object v0

    move v2, v1

    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v6, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v6}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v6}, Lcom/zui/launcher/Workspace;->getDragInfo()Lcom/zui/launcher/CellLayout$CellInfo;

    move-result-object v6

    iget-object v6, v6, Lcom/zui/launcher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eq v3, v6, :cond_6

    :cond_5
    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    invoke-direct {p0, v3, p1}, Lcom/zui/launcher/Launcher;->U1(Landroid/view/View;Z)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    :goto_3
    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object v2

    if-nez v2, :cond_d

    sget-object v2, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eq v0, v2, :cond_a

    return-void

    :cond_a
    invoke-virtual {v2, v1}, Lcom/zui/launcher/views/ScrimView;->setDragHandleAlpha(I)V

    :cond_b
    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v5}, Landroid/view/View;->setLongClickable(Z)V

    :cond_c
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {v0}, Landroid/view/View;->buildLayer()V

    invoke-direct {p0, v0, p1}, Lcom/zui/launcher/Launcher;->U1(Landroid/view/View;Z)V

    :cond_d
    return-void
.end method

.method public playLocateAppAnim(Landroid/view/View;J)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playLocateAppAnim   target ......"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zdx1"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "playLocateAppAnim------target==null"

    invoke-static {v1, p1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    const-wide/16 v2, 0x30c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p1, Lcom/zui/launcher/Launcher$q1;

    invoke-direct {p1, p0}, Lcom/zui/launcher/Launcher$q1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/zui/launcher/Launcher$r1;

    invoke-direct {p2, p0, v1}, Lcom/zui/launcher/Launcher$r1;-><init>(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->requestLayout()V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public playLocateAppHotseatAnim(Landroid/view/View;J)V
    .locals 6

    const-string v0, "yyyy"

    const-string v1, "playLocateAppHotseatAnim......"

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "zdx1"

    const-string p2, "playLocateAppHotseatAnim------target==null"

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    return-void

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const/4 v3, 0x6

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    const-string v5, "scaleX"

    invoke-static {v5, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    const-string v4, "scaleY"

    invoke-static {v4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Lcom/zui/launcher/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x30c

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance p2, Lcom/zui/launcher/Launcher$t1;

    invoke-direct {p2, p0}, Lcom/zui/launcher/Launcher$t1;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    div-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    add-int/2addr p2, p3

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetLocationAppState()V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz p1, :cond_1

    new-instance p2, Lcom/zui/launcher/Launcher$u1;

    invoke-direct {p2, p0, v1}, Lcom/zui/launcher/Launcher$u1;-><init>(Lcom/zui/launcher/Launcher;Landroid/animation/ValueAnimator;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f8ccccd    # 1.1f
        0x3f7851ec    # 0.97f
        0x3f83d70a    # 1.03f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public preAddApps()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->C:Lcom/zui/launcher/model/ModelWriter;

    invoke-virtual {v0}, Lcom/zui/launcher/model/ModelWriter;->commitDelete()V

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/zui/launcher/i1;

    invoke-direct {v0, p0}, Lcom/zui/launcher/i1;-><init>(Lcom/zui/launcher/AbstractFloatingView;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method q0(Lcom/zui/launcher/CellLayout;IIII)Lcom/zui/launcher/folder/FolderIcon;
    .locals 7

    new-instance v6, Lcom/zui/launcher/FolderInfo;

    invoke-direct {v6}, Lcom/zui/launcher/FolderInfo;-><init>()V

    const v0, 0x7f1203bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v0

    move-object v1, v6

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/zui/launcher/model/ModelWriter;->addItemToDatabase(Lcom/zui/launcher/ItemInfo;IIII)V

    const p2, 0x7f0d00bd

    invoke-static {p2, p0, p1, v6}, Lcom/zui/launcher/folder/FolderIcon;->fromXml(ILcom/zui/launcher/Launcher;Landroid/view/ViewGroup;Lcom/zui/launcher/FolderInfo;)Lcom/zui/launcher/folder/FolderIcon;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p2, p1, v6}, Lcom/zui/launcher/Workspace;->addInScreen(Landroid/view/View;Lcom/zui/launcher/ItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->a0(Landroid/view/View;)Lcom/zui/launcher/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    return-object p1
.end method

.method public reapplyUi()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->K2()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    if-nez v0, :cond_0

    sget-object v0, Lcom/zui/launcher/graphics/RotationMode;->NORMAL:Lcom/zui/launcher/graphics/RotationMode;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->getRotationMode(Lcom/zui/launcher/DeviceProfile;)Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/zui/launcher/Launcher;->W:Lcom/zui/launcher/graphics/RotationMode;

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherRootView;->dispatchInsets()V

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->reapplyState()V

    :cond_3
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/zui/launcher/XDockView;->doOnConfigurationChanged()V

    :cond_4
    return-void
.end method

.method public rebindModel()V
    .locals 2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCtsTestDockedCase()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "Launcher"

    const-string v0, "rebindModel ignore case ----"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/LauncherModel;->startLoader(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/PagedView;->setCurrentPage(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->E2(Z)V

    :cond_1
    return-void
.end method

.method public rebindOverlayService()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->o:Lcom/zui/launcher/dragndrop/DragLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isOverlayEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->hasBindOverlay()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "==========> rebindOverlayService============="

    invoke-static {v0}, Lcom/zui/launcher/LauncherCallbacksCompat;->debugOverlay(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onDestroy()V

    :cond_3
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->resetSearchLauncherCallbacks()V

    return-void
.end method

.method public rebindRecommendWidget([Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/zui/launcher/Launcher$z0;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/Launcher$z0;-><init>(Lcom/zui/launcher/Launcher;[Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->R2(Lcom/zui/launcher/Launcher$e2;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    array-length v0, p1

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->rebindWidgetsByPackageName(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public rebindWidgetByProvider(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    invoke-virtual {v0, v1}, Lcom/zui/launcher/Workspace;->getScreenWithId(I)Lcom/zui/launcher/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v2, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v3, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/zui/launcher/DummyAppWidgetView;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    iput v1, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->bindAppWidgetByProvider(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    check-cast v0, Lcom/zui/launcher/DummyAppWidgetView;

    iget-object v2, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-static {p0, v2}, Lcom/zui/launcher/LauncherModel;->getDummyWidgetSubType(Landroid/content/Context;Landroid/content/ComponentName;)I

    move-result p0

    iput p0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    invoke-virtual {v0, p1}, Lcom/zui/launcher/DummyAppWidgetView;->applyWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;)V

    :cond_4
    :goto_0
    return v1
.end method

.method public rebindWidgetsByPackageName(Ljava/lang/String;)V
    .locals 6

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->rebindWidgetByProvider(Lcom/zui/launcher/LauncherAppWidgetInfo;)Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    if-eqz v4, :cond_1

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeRecommendWidgets(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public recordSearchAppsPos(Lcom/zui/launcher/AppInfo;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->M1(Lcom/zui/launcher/AppInfo;)Lcom/zui/launcher/WorkspaceItemInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->a2(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentScreenId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->G0(I)V

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1}, Lcom/zui/launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "zui.launcher.key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/zui/launcher/Utilities;->saveUsageStat(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public refreshAndBindWidgetsForPackageUser(Lcom/zui/launcher/util/PackageUserKey;)V
    .locals 0
    .param p1    # Lcom/zui/launcher/util/PackageUserKey;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->refreshAndBindWidgetsAndShortcuts(Lcom/zui/launcher/util/PackageUserKey;)V

    return-void
.end method

.method public refreshCpuData()V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getInstance()Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/CpuWidgetObserverManager;->getWidgetCpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/widgetview/LenovoViewCPuParent;->handleCpuData()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshDummyIcon(Landroid/view/View;Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p2}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/icons/cache/BaseIconCache;->remove(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->setIcon(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/WorkspaceItemInfo;->getIcon(Lcom/zui/launcher/icons/IconCache;)Landroid/graphics/Bitmap;

    instance-of v0, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget p0, p0, Lcom/zui/launcher/ItemInfo;->id:I

    invoke-virtual {p1, p2}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    if-ge p1, p0, :cond_2

    iput p0, p2, Lcom/zui/launcher/ItemInfo;->id:I

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/zui/launcher/ActiveIconView;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/zui/launcher/ActiveIconView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v0, v0, Lcom/zui/launcher/ItemInfo;->id:I

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->D:Lcom/zui/launcher/icons/IconCache;

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/ActiveIconView;->refreshDummyIcon(Lcom/zui/launcher/WorkspaceItemInfo;Lcom/zui/launcher/icons/IconCache;)V

    iget p0, p2, Lcom/zui/launcher/ItemInfo;->id:I

    if-ge p0, v0, :cond_2

    iput v0, p2, Lcom/zui/launcher/ItemInfo;->id:I

    :cond_2
    :goto_0
    return-void
.end method

.method protected registerAppStoreReceiver()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/AppStoreReceiver;

    invoke-direct {v0, p0}, Lcom/zui/launcher/AppStoreReceiver;-><init>(Lcom/zui/launcher/Launcher;)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {}, Lcom/zui/launcher/AppStoreUtil;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "com.zui.launcher.permission.REPORT_UITASK"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    invoke-static {}, Lcom/zui/launcher/AppStoreUtil;->getPackageFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public registerWeatherDataListener()V
    .locals 1

    invoke-static {}, Lcom/zui/launcher/Utilities;->isCTAVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/zui/launcher/LeftScreenCompat;->getInstance()Lcom/zui/launcher/LeftScreenCompat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LeftScreenCompat;->showCTADialog()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherApplication;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherApplication;->getWeatherManager()Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->R0:Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;

    invoke-virtual {v0, p0}, Lcom/lenovo/weathercenterSDK/WidgetWeatherManager;->registWeatherListener(Lcom/lenovo/weathercenterSDK/listener/WidgetLocationWeatherInfoListener;)V

    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    iget-object v0, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->R1(Lcom/zui/launcher/InvariantDeviceProfile;)V

    return-void
.end method

.method public removeAutoDownload(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "restore_autodownload_packagenames"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeDownloadTask(Lcom/zui/launcher/ItemInfo;)V
    .locals 4

    instance-of v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v0, v0, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n0:Lcom/zui/launcher/DownloadSpan;

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/DownloadSpan;->deleteTask(Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public removeFenLeiView()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->G0:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public removeGlobalSearchView()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->removeGlobalSearchView(Z)V

    return-void
.end method

.method public removeGlobalSearchView(Z)V
    .locals 3

    sget-object v0, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher removeGlobalSearchView mSearchRunFlag-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/Launcher;->c1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",isForce:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->c1:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->a1:Z

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    new-instance v0, Lcom/zui/launcher/Launcher$i0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$i0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, v0}, Lcom/zui/launcher/GlobalSearchView;->removeFromLayer(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->timeViewFlagChanged()V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getRootView()Lcom/zui/launcher/LauncherRootView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRootView;->setDisallowBackGesture(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/zui/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;ZZ)Z

    move-result p0

    return p0
.end method

.method public removeItem(Landroid/view/View;Lcom/zui/launcher/ItemInfo;ZZ)Z
    .locals 3

    instance-of v0, p2, Lcom/zui/launcher/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->container:I

    invoke-virtual {p4, v0}, Lcom/zui/launcher/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p4

    instance-of v0, p4, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/FolderInfo;

    move-object p4, p2

    check-cast p4, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p1, p4, v1}, Lcom/zui/launcher/FolderInfo;->remove(Lcom/zui/launcher/WorkspaceItemInfo;Z)V

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p4, p1}, Lcom/zui/launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    :goto_0
    if-eqz p3, :cond_6

    :goto_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_2

    :cond_1
    instance-of v0, p2, Lcom/zui/launcher/FolderInfo;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    check-cast p2, Lcom/zui/launcher/FolderInfo;

    instance-of v0, p1, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/folder/FolderIcon;->removeListeners()V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    if-eqz p4, :cond_3

    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->r1(Lcom/zui/launcher/FolderInfo;)Z

    move-result p0

    if-nez p0, :cond_3

    move v2, v1

    :cond_3
    invoke-virtual {p1, p2, v2}, Lcom/zui/launcher/model/ModelWriter;->deleteFolderAndContentsFromDatabase(Lcom/zui/launcher/FolderInfo;Z)V

    goto :goto_2

    :cond_4
    instance-of p4, p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz p4, :cond_5

    check-cast p2, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p4, p1}, Lcom/zui/launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object p1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Lcom/zui/launcher/model/ModelWriter;->deleteWidgetInfo(Lcom/zui/launcher/LauncherAppWidgetInfo;Lcom/zui/launcher/widget/LauncherAppWidgetHost;)V

    goto :goto_2

    :cond_5
    instance-of p4, p2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    if-eqz p4, :cond_7

    check-cast p2, Lcom/zui/launcher/LenovoWidgetViewInfo;

    iget-object p4, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p4, p1}, Lcom/zui/launcher/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    return v1

    :cond_7
    return v2
.end method

.method public removePendingBindItems(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->A:Lcom/zui/launcher/util/ViewOnDrawExecutor;

    if-nez v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidgets(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v1, Lcom/zui/launcher/Launcher$y1;

    invoke-direct {v1, p0, p1, p2}, Lcom/zui/launcher/Launcher$y1;-><init>(Lcom/zui/launcher/Launcher;Ljava/util/HashSet;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/ViewOnDrawExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removePendingRecommendItems()V
    .locals 14

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--#########---removePendingRecommendItems  pkgsNames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher.Model"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-nez v1, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_d

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_c

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v10, v9, Lcom/zui/launcher/WorkspaceItemInfo;

    if-eqz v10, :cond_4

    check-cast v9, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v10, v9, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v10, :cond_3

    iget-object v11, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    :cond_3
    invoke-virtual {v9}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v9}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_3

    :cond_4
    instance-of v10, v9, Lcom/zui/launcher/FolderInfo;

    if-eqz v10, :cond_9

    check-cast v9, Lcom/zui/launcher/FolderInfo;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, v9, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v12, v11, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_6

    iget-object v13, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v13, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    :cond_6
    invoke-virtual {v11}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    iget-object v12, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {v11}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_7
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v9, v8, v2}, Lcom/zui/launcher/FolderInfo;->removeAll(Ljava/util/List;Z)V

    goto :goto_4

    :cond_9
    instance-of v10, v9, Lcom/zui/launcher/LauncherAppWidgetInfo;

    if-eqz v10, :cond_b

    check-cast v9, Lcom/zui/launcher/LauncherAppWidgetInfo;

    iget-object v10, v9, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    iget-object v9, v9, Lcom/zui/launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    :cond_a
    :goto_3
    invoke-virtual {v5, v8}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    :cond_b
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B0:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_e
    :goto_5
    return-void
.end method

.method public removeRecommandShortcut(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->m0:Lcom/zui/launcher/LauncherRecommend;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRecommend;->removeRecommendByUser(Lcom/zui/launcher/WorkspaceItemInfo;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->removeRecommendItem(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeRecommendItem(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Landroid/content/ComponentName;)V

    return-void
.end method

.method public removeRecommendItem(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->removeRecommendItem(Ljava/lang/String;)V

    return-void
.end method

.method public removeRecommendWidget(Landroid/content/ComponentName;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidget(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public removeRecommendWidget(Landroid/content/ComponentName;J)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidget(Landroid/content/ComponentName;J)V

    :cond_0
    return-void
.end method

.method public removeRecommendWidgets(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->B:Lcom/zui/launcher/LauncherModel;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherModel;->removeRecommendWidgets(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeUnusedRecommendItems([Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--#########---removeUnusedRecommendItems  pkgsNames: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Model"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz v2, :cond_b

    if-eqz v1, :cond_b

    array-length v2, v1

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v2, "launcherapps"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/LauncherApps;

    iget-object v2, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getAllShortcutAndWidgetContainers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_b

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Lcom/zui/launcher/CellLayout;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_a

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    if-nez v10, :cond_2

    :cond_1
    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v12, v11, Lcom/zui/launcher/WorkspaceItemInfo;

    const/16 v13, 0x8

    if-eqz v12, :cond_5

    check-cast v11, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v12, v11, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v12, :cond_3

    if-ne v12, v13, :cond_1

    :cond_3
    invoke-virtual {v11}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_4

    invoke-virtual {v11}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v0, v11}, Lcom/zui/launcher/Utilities;->hasLauncherIcon(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_3

    :cond_4
    iget-object v12, v11, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v12, :cond_1

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    :goto_3
    invoke-virtual {v7, v10}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v10

    invoke-virtual {v10, v11}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_2

    :cond_5
    instance-of v12, v11, Lcom/zui/launcher/FolderInfo;

    if-eqz v12, :cond_1

    check-cast v11, Lcom/zui/launcher/FolderInfo;

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    iget-object v14, v11, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/zui/launcher/WorkspaceItemInfo;

    iget v4, v15, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v4, :cond_7

    if-ne v4, v13, :cond_6

    :cond_7
    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v15}, Lcom/zui/launcher/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v0, v15}, Lcom/zui/launcher/Utilities;->hasLauncherIcon(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v7, v10}, Lcom/zui/launcher/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    :cond_8
    iget-object v4, v15, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_6

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/zui/launcher/Launcher;->getModelWriter()Lcom/zui/launcher/model/ModelWriter;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/zui/launcher/model/ModelWriter;->deleteItemFromDatabase(Lcom/zui/launcher/ItemInfo;)V

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    invoke-virtual {v11, v12, v4}, Lcom/zui/launcher/FolderInfo;->removeAll(Ljava/util/List;Z)V

    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_7
    return-void
.end method

.method public removeWeatherWidget(Lcom/zui/launcher/LenovoWidgetViewInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->v0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->Q2()V

    return-void
.end method

.method public reorderItemsManualDown()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1204a0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->isAutoReorderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    new-instance v0, Lcom/zui/launcher/Launcher$j1;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$j1;-><init>(Lcom/zui/launcher/Launcher;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->R2(Lcom/zui/launcher/Launcher$e2;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->reorderItemsManualDown()V

    :cond_8
    :goto_0
    return-void
.end method

.method public reorderItemsManualUp()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/zui/launcher/Utilities;->isLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showLayoutLockedToast()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->shouldExchangeXY()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/zui/launcher/util/SettingsValue;->isAutoReorderEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->y1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    new-instance v0, Lcom/zui/launcher/Launcher$k1;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$k1;-><init>(Lcom/zui/launcher/Launcher;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/Launcher;->R2(Lcom/zui/launcher/Launcher$e2;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->reorderItemsManualUp()V

    :cond_8
    :goto_0
    return-void
.end method

.method public resetDaulTimeZoneBg()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->daulTimeZoneCancelLongPress()V

    return-void
.end method

.method public resetLocationAppState()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetLocationAppState mIsLocationEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->mIsLocationEnd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GlobalSearch"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "search locate app"

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    return-void
.end method

.method public resetRecommendInfoFlag(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/WorkspaceItemInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " resetRecommendInfoFlag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/DownloadSpan$LOG;->i(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v2, v1}, Lcom/zui/launcher/ItemInfo;->setInstallLock(Z)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    invoke-virtual {p1, v1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public resetSearchLauncherCallbacks()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->v1()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/zui/launcher/LauncherCallbacks;->onCreate(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/zui/launcher/LauncherCallbacks;->onAttachedToWindow()V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isPaused()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    invoke-interface {p0}, Lcom/zui/launcher/LauncherCallbacks;->onResume()V

    :cond_2
    return-void
.end method

.method public restartRecommendInfos(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v1}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfo;->isStartDownload()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ItemInfo;->setDownloadPause(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppWidgetInfo;->c()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public revertStatusIcon()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "revertStatusIcon mPaused======= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/zui/launcher/Launcher;->m1:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->m1:Z

    if-nez v0, :cond_4

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/zui/launcher/AbstractFloatingView;->getOpenView(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xb4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    :try_start_0
    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->setNavigationBarDark(Landroid/app/Activity;Z)V

    invoke-static {p0, v0}, Lcom/zui/launcher/Utilities;->saveNavigationDarkFlag(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set navigationbar color error  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "launcher"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    sget-object v0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v4, 0xf

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    if-le v0, v1, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    const-string v1, "is_launcher_status_bar_dark"

    const/4 v4, 0x3

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/zui/launcher/Launcher;->setDarkStatusIcon(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v4, v2}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    const-string v0, "true"

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v3}, Lcom/zui/launcher/Launcher;->setDarkStatusIcon(Z)V

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v4, v2}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    const-string v0, "false"

    :goto_3
    invoke-static {p0, v1, v0}, Lcom/zui/launcher/Utilities;->setExportValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public saveLauncherPivotState()V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->initViewPivotInfo()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setViewScalePoint(I)V

    return-void
.end method

.method public saveStartAppSettings(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "start_app_param"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public saveStatusBarColor(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->m1:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->isStatusBarDark(Z)Z

    move-result p1

    const-string v0, "is_launcher_status_bar_dark"

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/zui/launcher/Utilities;->setExportValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setAnimating(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " setAnimating "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/util/Debug$R5;->echo(Ljava/lang/Object;)V

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->v1:Z

    iput-object p2, p0, Lcom/zui/launcher/Launcher;->w1:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->f1()V

    :cond_0
    return-void
.end method

.method public setBubbleTextViewColor()V
    .locals 8

    const-string v0, "yudl"

    const-string v1, "Launcher  setBubbleTextViewColor --- "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/zui/launcher/Launcher;->O1:[B

    const/16 v1, 0xd

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    iput v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 v3, 0xb4

    const/4 v4, 0x0

    if-le v0, v3, :cond_0

    const/high16 v0, -0x1000000

    iput-boolean v4, p0, Lcom/zui/launcher/Launcher;->isBlackWallpaper:Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/zui/launcher/Launcher;->mTextColor:I

    invoke-static {p0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/LauncherAppState;->getLauncherContext()Lcom/zui/launcher/LauncherContext;

    move-result-object v5

    const-string v6, "com.xui.launcher.action_title_color"

    invoke-direct {p0, v6, v0}, Lcom/zui/launcher/Launcher;->w1(Ljava/lang/String;I)V

    invoke-virtual {v5, v0, v2}, Lcom/zui/launcher/LauncherContext;->setTextColor(IZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.zui.launcher.WALLPAPER_TEXT_COLOR"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/zui/launcher/Launcher;->O1:[B

    aget-byte v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    if-le v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    iget-boolean v5, p0, Lcom/zui/launcher/Launcher;->n1:Z

    if-eqz v5, :cond_2

    :try_start_0
    invoke-static {p0, v1}, Lcom/zui/launcher/Utilities;->setNavigationBarDark(Landroid/app/Activity;Z)V

    invoke-static {p0, v1}, Lcom/zui/launcher/Utilities;->saveNavigationDarkFlag(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set navigationbar color error  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "launcher"

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lcom/zui/launcher/Launcher;->p1:Z

    :goto_2
    const-string v5, "launcher_wallpaper_color"

    const-string v6, "wallpaper_color"

    if-eqz v1, :cond_3

    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "0"

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "1"

    :goto_3
    invoke-static {p0, v5, v1}, Lcom/zui/launcher/Utilities;->setExportValues(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {v0}, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;->setColor()V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->u:Lcom/zui/launcher/DropTargetBar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/zui/launcher/DropTargetBar;->onWallpaperColorChanged()V

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v2}, Lcom/zui/launcher/HotseatLayout;->showBackground(Z)V

    :cond_6
    invoke-direct {p0, v4}, Lcom/zui/launcher/Launcher;->B2(Z)V

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    if-le v0, v3, :cond_7

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v2}, Lcom/zui/launcher/EditViewPanel;->setTextColor(Z)V

    goto :goto_4

    :cond_7
    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->w0:Lcom/zui/launcher/EditViewPanel;

    if-eqz v0, :cond_8

    invoke-virtual {v0, v4}, Lcom/zui/launcher/EditViewPanel;->setTextColor(Z)V

    :cond_8
    :goto_4
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->mScrimView:Lcom/zui/launcher/views/ScrimView;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->resetDragHandleDrawable()V

    :cond_9
    return-void
.end method

.method public setDarkStatusIcon(Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.SYSTEM_UI_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "status_bar_dark"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setDoingCloseAnim(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->t1:Z

    iget p1, p0, Lcom/zui/launcher/Launcher;->u1:I

    if-lez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/Launcher;->u1:I

    :cond_0
    return-void
.end method

.method public setDrawRootViewBackground(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->e1:Lcom/zui/launcher/LauncherRootView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherRootView;->setDrawBackground(Z)V

    :cond_0
    return-void
.end method

.method public setLauncherCallbacks(Lcom/zui/launcher/LauncherCallbacks;)Z
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    const/4 p0, 0x1

    return p0
.end method

.method public setLauncherOverlay(Lcom/zui/launcher/LauncherOverlay;)V
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/zui/launcher/Launcher$c2;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$c2;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-interface {p1, v0}, Lcom/zui/launcher/LauncherOverlay;->setOverlayCallbacks(Lcom/zui/launcher/LauncherOverlayCallbacks;)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->setLauncherOverlay(Lcom/zui/launcher/LauncherOverlay;)V

    return-void
.end method

.method public setLeosWidgetsConfiguring(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAllConfiguredLeosWidget()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LeosWidgetInterface;

    invoke-interface {v0, p1}, Lcom/zui/launcher/LeosWidgetInterface;->setConfiguring(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setQuickSearchBarAlpha(F)V
    .locals 1

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setRecommendInfosReady(Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    invoke-virtual {v0}, Lcom/zui/launcher/WorkspaceItemInfo;->d()V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/ItemInfo;->setReadyDownload(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setSearchState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->c1:Z

    return-void
.end method

.method protected setViewInitState()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->showScrimView()V

    return-void
.end method

.method public setViewScalePoint(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/zui/launcher/LauncherAppState;->getInstanceNoCreate()Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getInvariantDeviceProfile()Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->verityScreenOrientation()Z

    move-result v2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->e0:Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/Workspace;->padGlobalSearchPivotLocation(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/Workspace;->initLandScalePivot(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p0, p1}, Lcom/zui/launcher/Workspace;->initPortScalePivot(Lcom/zui/launcher/globalsearch/quicksBean/ViewPivotInfo;I)V

    :goto_0
    return-void
.end method

.method public setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->J:Lcom/zui/launcher/util/PendingRequestArgs;

    return-void
.end method

.method public setWindowBlur(ZIII)V
    .locals 1

    iput p3, p0, Lcom/zui/launcher/Launcher;->J0:I

    iput p4, p0, Lcom/zui/launcher/Launcher;->K0:I

    iput-boolean p1, p0, Lcom/zui/launcher/Launcher;->L0:Z

    if-eqz p1, :cond_0

    iput p3, p0, Lcom/zui/launcher/Launcher;->M0:I

    goto :goto_0

    :cond_0
    iput p4, p0, Lcom/zui/launcher/Launcher;->M0:I

    :goto_0
    if-ltz p2, :cond_1

    const/16 p1, 0x1f4

    if-le p2, p1, :cond_2

    :cond_1
    const/16 p2, 0x32

    :cond_2
    iget p1, p0, Lcom/zui/launcher/Launcher;->wallpaper_averageGray:I

    const/16 p3, 0xb4

    const/16 v0, 0xa

    if-le p1, p3, :cond_3

    const/4 p1, 0x2

    iput p1, p0, Lcom/zui/launcher/Launcher;->N0:I

    goto :goto_1

    :cond_3
    iput v0, p0, Lcom/zui/launcher/Launcher;->N0:I

    :goto_1
    const/16 p1, 0x64

    if-le p4, p1, :cond_4

    iput v0, p0, Lcom/zui/launcher/Launcher;->N0:I

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/Launcher;->O0:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->P0:Ljava/lang/Runnable;

    int-to-long p2, p2

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setWindowBlurForLeftScreen(I)V
    .locals 1

    const/16 v0, 0x99

    if-le p1, v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWindowBlurValue(I)V

    :goto_0
    return-void
.end method

.method public setWindowBlurValue(I)V
    .locals 2

    iput p1, p0, Lcom/zui/launcher/Launcher;->wallpaper_alpha:I

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->e1:Lcom/zui/launcher/LauncherRootView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->postInvalidate()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/RecentsView;->setWorkspaceWindowBlur(I)V

    :cond_1
    return-void
.end method

.method public showDockView()V
    .locals 2

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->z0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/Launcher;->u1()V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->calculateLayoutParams()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->x0:Lcom/zui/launcher/XDockViewArea;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->y0:Lcom/zui/launcher/XDockView;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/dragndrop/DragController;->addDropTarget(Lcom/zui/launcher/DropTarget;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/XDockViewLayout;->setRelativeX(F)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/Launcher;->z0:Z

    return-void
.end method

.method public showHintDialog(Landroid/content/Context;Lcom/zui/launcher/WorkspaceItemInfo;I)V
    .locals 3

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget v0, p2, Lcom/zui/launcher/ItemInfo;->id:I

    int-to-long v0, v0

    const-string v2, "key_deleteitem_longid"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object p2, p2, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    const-string v0, "key_packageName"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "key_action_type"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/Launcher;->showLauncherDialog(ILandroid/os/Bundle;)V

    return-void
.end method

.method protected showLauncherDialog(ILandroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    const v0, 0x7f120348

    const v1, 0x7f120349

    const v2, 0x7f12033f

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "invalid parameter of create dialog : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Launcher"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12034a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lzui/app/ActionDialog$Builder;

    invoke-direct {p2, p0}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1}, Lzui/app/ActionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/zui/launcher/Launcher$n0;

    invoke-direct {p2, p0}, Lcom/zui/launcher/Launcher$n0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p2}, Lzui/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/zui/launcher/Launcher$o0;

    invoke-direct {v1, p0}, Lcom/zui/launcher/Launcher$o0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p2, v1}, Lzui/app/ActionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/zui/launcher/Launcher$p0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$p0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p1, p2, v0}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    invoke-virtual {p1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/zui/launcher/Launcher;->V0(Landroid/os/Bundle;)Lzui/app/MessageDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lzui/app/MessageDialog$Builder;->create()Lzui/app/MessageDialog;

    move-result-object p1

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12033e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Lzui/app/ActionDialog$Builder;

    invoke-direct {v2, p0}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p2}, Lzui/app/ActionDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lzui/app/ActionDialog$Builder;

    move-result-object p2

    new-instance v2, Lcom/zui/launcher/Launcher$k0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/Launcher$k0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p2, v2}, Lzui/app/ActionDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lzui/app/ActionDialog$Builder;

    move-result-object p2

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/Launcher$l0;

    invoke-direct {v2, p0}, Lcom/zui/launcher/Launcher$l0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p2, v1, v2}, Lzui/app/ActionDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/zui/launcher/Launcher$m0;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$m0;-><init>(Lcom/zui/launcher/Launcher;)V

    invoke-virtual {p2, p1, v0}, Lzui/app/ActionDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    invoke-virtual {p2}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->f1:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showLayoutLockedToast()V
    .locals 1

    const v0, 0x7f1204a0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(I)V

    return-void
.end method

.method public showOutOfFolderMessage()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p0:Lcom/zui/launcher/Launcher$d2;

    const v1, 0x7f1203bf

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/launcher/Launcher$d2;

    invoke-direct {v0, p0, v1}, Lcom/zui/launcher/Launcher$d2;-><init>(Lcom/zui/launcher/Launcher;I)V

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->p0:Lcom/zui/launcher/Launcher$d2;

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Lcom/zui/launcher/Launcher$d2;->a(Lcom/zui/launcher/Launcher$d2;I)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->p0:Lcom/zui/launcher/Launcher$d2;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->O:Landroid/os/Handler;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->p0:Lcom/zui/launcher/Launcher$d2;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showOutOfSpaceMessage(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const p1, 0x7f1203f3

    goto :goto_0

    :cond_0
    const p1, 0x7f12054f

    :goto_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->showOutOfSpaceToast(I)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->S0()V

    return-void
.end method

.method public showOutOfSpaceToast(I)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showOutOfSpaceToast(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->r0:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showScrimView()V
    .locals 0

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/zui/launcher/Launcher;->K:I

    :cond_0
    invoke-static {p0}, Lcom/zui/quickstep/SysUINavigationMode;->getSystemGestureMode(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    if-eq p2, v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lcom/zui/launcher/uioverrides/UiFactory;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z
    .locals 8
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    const-string v0, "b/132900132"

    const-string v1, "startActivitySafely outer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------Launcher  startActivitySafely  tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClick"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/zui/launcher/BaseActivity;->hasBeenResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Lcom/zui/launcher/j1;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/zui/launcher/j1;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V

    invoke-static {v1}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->clearSwipeSharedState(Z)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/zui/launcher/BaseDraggingActivity;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/zui/launcher/ItemInfo;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    instance-of p3, p1, Lcom/zui/launcher/BubbleTextView;

    if-eqz p3, :cond_2

    check-cast p1, Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p1, v1}, Lcom/zui/launcher/BubbleTextView;->setStayPressed(Z)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->addOnResumeCallback(Lcom/zui/launcher/Launcher$OnResumeCallback;)V

    new-instance p0, Lcom/zui/launcher/k1;

    invoke-direct {p0, p1}, Lcom/zui/launcher/k1;-><init>(Lcom/zui/launcher/BubbleTextView;)V

    const-wide/16 p3, 0x1c2

    invoke-virtual {p1, p0, p3, p4}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return p2
.end method

.method public startBinding()V
    .locals 3

    sget-object v0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    const-string v1, "startBinding"

    invoke-virtual {v0, v1}, Lcom/zui/launcher/util/TraceHelper;->beginSection(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    const v2, 0x35d8b

    invoke-static {p0, v0, v2}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenViews(Lcom/zui/launcher/views/ActivityContext;ZI)V

    invoke-direct {p0, v0}, Lcom/zui/launcher/Launcher;->E2(Z)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->p:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/zui/launcher/dragndrop/DragController;->cancelDrag()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->I()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->removeAllWorkspaceScreens()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->r:Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->clearViews()V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Hotseat;->resetLayout(Z)V

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/ActiveIconCollector;->clear()V

    :cond_1
    sget-object p0, Lcom/zui/launcher/util/TraceHelper;->INSTANCE:Lcom/zui/launcher/util/TraceHelper;

    invoke-virtual {p0, v1}, Lcom/zui/launcher/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    return-void
.end method

.method public startDownLoadDummyApp(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 2

    iget-object v0, p1, Lcom/zui/launcher/WorkspaceItemInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/zui/launcher/AppStoreUtil;->isInAppStoreList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/AppStoreReceiver;->sendTaskManagerMessage(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/ItemInfo;->subItemType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const-string v0, "ro.config.zuk.region"

    const-string v1, "unknow"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "row"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f120347

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/launcher/Launcher;->H0(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iput p2, p0, Lcom/zui/launcher/Launcher;->K:I

    :cond_0
    if-eq p2, v0, :cond_1

    invoke-static/range {p0 .. p7}, Lcom/zui/launcher/uioverrides/UiFactory;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :try_start_0
    invoke-super/range {p0 .. p7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    new-instance p0, Landroid/content/ActivityNotFoundException;

    invoke-direct {p0}, Landroid/content/ActivityNotFoundException;-><init>()V

    throw p0
.end method

.method public startLeosWidgetConfig(Lcom/zui/launcher/LenovoWidgetViewInfo;Lcom/zui/launcher/LeosWidgetInterface;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/zui/launcher/LeosWidgetInterface;->getConfigure()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/zui/launcher/LeosWidgetInterface;->getConfigure()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/LenovoWidgetViewInfo;->getConfigureIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/LenovoWidgetViewInfo;->getConfigureIntent()Landroid/content/Intent;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    return-void

    :cond_2
    const/16 v0, 0xf

    invoke-static {v0, p1}, Lcom/zui/launcher/util/PendingRequestArgs;->forLeosWidget(ILcom/zui/launcher/LenovoWidgetViewInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startRecommendInfos(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendItem(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->getRecommendWidgets(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object p0

    const/4 p1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/LauncherAppWidgetInfo;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ItemInfo;->setStartDownload(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 1

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string p4, "source"

    const-string v0, "launcher-search"

    invoke-virtual {p3, p4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p4, p0, Lcom/zui/launcher/Launcher;->i0:Lcom/zui/launcher/LauncherCallbacks;

    if-eqz p4, :cond_1

    invoke-interface {p4, p1, p2, p3}, Lcom/zui/launcher/LauncherCallbacks;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z

    move-result p4

    if-nez p4, :cond_2

    :cond_1
    const/4 p4, 0x1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    :cond_2
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->k:Lcom/zui/launcher/LauncherStateManager;

    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    return-void
.end method

.method public startWidgetConfigActivity(Lcom/zui/launcher/LauncherAppWidgetInfo;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/zui/launcher/LauncherAppWidgetInfo;->appWidgetId:I

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->q:Lcom/zui/launcher/widget/WidgetManagerHelper;

    invoke-virtual {v1, v0}, Lcom/zui/launcher/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/zui/launcher/widget/LauncherAppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/zui/launcher/util/PendingRequestArgs;->forWidgetInfo(ILcom/zui/launcher/widget/WidgetAddFlowHandler;Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/PendingRequestArgs;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Launcher;->setWaitingForResult(Lcom/zui/launcher/util/PendingRequestArgs;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAppWidgetHost()Lcom/zui/launcher/widget/LauncherAppWidgetHost;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, p0, v0, v1}, Lcom/zui/launcher/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/zui/launcher/BaseDraggingActivity;II)V

    :cond_1
    return-void
.end method

.method public switchHotWord()V
    .locals 3

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->k1:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->Z0:Lcom/zui/launcher/globalsearch/HotWordDownLoad;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->setCurrentPosition(Landroid/content/Context;I)V

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->k1:Z

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " switchHotword  finish -->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLauncherPause -->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/Launcher;->a1:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isLauncherStop -->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/zui/launcher/Launcher;->l1:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlobalSearch.HotWordDownLoad"

    invoke-static {v2, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/zui/launcher/globalsearch/HotWordDownLoad;->loadFinish:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->a1:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/zui/launcher/Launcher;->l1:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->switchWidgetState()V

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->a1:Z

    iput-boolean v1, p0, Lcom/zui/launcher/Launcher;->l1:Z

    :cond_2
    return-void
.end method

.method t0(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/launcher/Launcher;->u0(Lcom/zui/launcher/ItemInfo;Landroid/view/View;I)V

    return-void
.end method

.method u0(Lcom/zui/launcher/ItemInfo;Landroid/view/View;I)V
    .locals 1

    new-instance v0, Lcom/zui/launcher/Launcher$s;

    invoke-direct {v0, p0}, Lcom/zui/launcher/Launcher$s;-><init>(Lcom/zui/launcher/Launcher;)V

    check-cast p1, Lcom/zui/launcher/LenovoWidgetViewInfo;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/Launcher;->Q0(Lcom/zui/launcher/LenovoWidgetViewInfo;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p3, p2}, Lcom/zui/launcher/Workspace;->removeExtraEmptyScreenDelayed(ZLjava/lang/Runnable;IZ)V

    :cond_0
    return-void
.end method

.method public unregisterActiveCollector(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconCollector;->unregister(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_0
    return-void
.end method

.method protected unregisterAppStoreReceiver()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/Launcher;->I0:Lcom/zui/launcher/AppStoreReceiver;

    return-void
.end method

.method public unregisterZuiDotObserver()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->V0:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->V0:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->V0:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->W0:Landroid/database/ContentObserver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->W0:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/zui/launcher/Launcher;->W0:Landroid/database/ContentObserver;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->X0:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->X0:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public updateAllAppsStore()V
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsStore;->justUpdateAllApps()V

    :cond_0
    return-void
.end method

.method public updateInsets(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/BaseActivity;->mDeviceProfile:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/Launcher;->W:Lcom/zui/launcher/graphics/RotationMode;

    invoke-virtual {v1, p0, p1, v0}, Lcom/zui/launcher/graphics/RotationMode;->mapInsets(Landroid/content/Context;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->V:Lcom/zui/launcher/DeviceProfile;

    invoke-virtual {p0, v0}, Lcom/zui/launcher/DeviceProfile;->updateInsets(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/launcher/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->updateNotificationDots(Ljava/util/function/Predicate;)V

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsStore;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_0
    return-void
.end method

.method public updateRegisterActiveCollector(Lcom/zui/launcher/WorkspaceItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/ActiveIconCollector;->unregister(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->T0:Lcom/zui/launcher/ActiveIconCollector;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/ActiveIconCollector;->register(Lcom/zui/launcher/WorkspaceItemInfo;)V

    :cond_0
    return-void
.end method

.method public updateWeather()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/zui/launcher/Launcher;->G1:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1d4c0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWeatherDefaultData()V

    :cond_1
    return-void
.end method

.method public updateWeatherWidget()V
    .locals 5

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getAllLeosWidget()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWeatherWidget size   -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Launcher"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/zui/launcher/Launcher;->s0:Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;

    iget-object v3, p0, Lcom/zui/launcher/Launcher;->t0:Ljava/lang/String;

    iget-object v4, p0, Lcom/zui/launcher/Launcher;->u0:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4}, Lcom/zui/launcher/LeosWidgetInterface;->analyzeWidgetWeatherData(Lcom/lenovo/weathercenter/entity/WidgetWeatherInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateWorkspaceScroll()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->updateCurrentPageScroll()V

    :cond_0
    return-void
.end method

.method public updateZuiDots(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/Workspace;->updateZuiDots(Ljava/util/Set;)V

    invoke-static {p0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->v:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->updateZuiDots(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public verifySearchView()V
    .locals 3

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->verityScreenOrientation()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGlobalSearchView orientation -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GlobalSearch"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->landScreenLayout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {v0}, Lcom/zui/launcher/GlobalSearchView;->portScreenLayout()V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/Launcher;->d1:Lcom/zui/launcher/GlobalSearchView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public verityScreenOrientation()Z
    .locals 1

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDisplayWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/zui/launcher/Utilities;->getDisplayHeight(Landroid/content/Context;)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public widgetAnimationWState()V
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getLenovoCpuTogetherCurrentChild()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/globalsearch/widgetview/LenovoCPuViewChild;->setClockAnimationStatus(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method y1(Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->t:Lcom/zui/launcher/HotseatLayout;

    if-eqz p0, :cond_0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
