.class public Lcom/zui/launcher/appprediction/PredictionUiStateManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;
.implements Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;
.implements Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;,
        Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/launcher/appprediction/PredictionUiStateManager;",
            ">;"
        }
    .end annotation
.end field

.field public static final LAST_PREDICTION_ENABLED_STATE:Ljava/lang/String; = "last_prediction_enabled_state"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/zui/launcher/appprediction/DynamicItemCache;

.field private final c:[Ljava/util/List;

.field private d:I

.field private e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

.field private f:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

.field private h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/launcher/appprediction/k;->a:Lcom/zui/launcher/appprediction/k;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a:Landroid/content/Context;

    new-instance v0, Lcom/zui/launcher/appprediction/DynamicItemCache;

    new-instance v1, Lcom/zui/launcher/appprediction/f;

    invoke-direct {v1, p0}, Lcom/zui/launcher/appprediction/f;-><init>(Lcom/zui/launcher/appprediction/PredictionUiStateManager;)V

    invoke-direct {v0, p1, v1}, Lcom/zui/launcher/appprediction/DynamicItemCache;-><init>(Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->b:Lcom/zui/launcher/appprediction/DynamicItemCache;

    sget-object v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->HOME:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    iput-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-static {p1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->d:I

    invoke-virtual {v0, p0}, Lcom/zui/launcher/InvariantDeviceProfile;->addOnChangeListener(Lcom/zui/launcher/InvariantDeviceProfile$OnIDPChangeListener;)V

    invoke-static {}, Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;->values()[Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c:[Ljava/util/List;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "last_prediction_enabled_state"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->i:Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f()Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    return-void
.end method

.method private a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getFloatingHeaderView()Lcom/zui/launcher/allapps/FloatingHeaderView;

    move-result-object p1

    const-class v0, Lcom/zui/launcher/appprediction/PredictionRowView;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/zui/launcher/allapps/FloatingHeaderRow;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/appprediction/PredictionRowView;

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/appprediction/PredictionRowView;->setPredictedApps(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getFloatingHeaderView()Lcom/zui/launcher/allapps/FloatingHeaderView;

    move-result-object v2

    const-class v3, Lcom/zui/launcher/appprediction/PredictionRowView;

    invoke-virtual {v2, v3}, Lcom/zui/launcher/allapps/FloatingHeaderView;->findFixedRowByType(Ljava/lang/Class;)Lcom/zui/launcher/allapps/FloatingHeaderRow;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/appprediction/PredictionRowView;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->isForceInvisible()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    iget-boolean v2, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->isEnabled:Z

    iget-boolean v3, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->isEnabled:Z

    if-ne v2, v3, :cond_6

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    iget-object p1, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eq p0, p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_3

    return p1

    :cond_3
    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_4

    sget-object p0, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_4

    return p1

    :cond_4
    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAllAppsController()Lcom/zui/launcher/allapps/AllAppsTransitionController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgress()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_5

    goto :goto_0

    :cond_5
    move v1, p1

    :cond_6
    :goto_0
    return v1
.end method

.method private c(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f()Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->b(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    :goto_1
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)Lcom/zui/launcher/appprediction/PredictionUiStateManager;
    .locals 1

    new-instance v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;

    invoke-direct {v0, p0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private f()Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;
    .locals 7

    new-instance v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    invoke-direct {v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;-><init>()V

    iget-boolean v1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->i:Z

    iput-boolean v1, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->isEnabled:Z

    if-nez v1, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p0, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c:[Ljava/util/List;

    iget-object v2, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/AppTarget;

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/shortcuts/ShortcutKey;->fromInfo(Landroid/content/pm/ShortcutInfo;)Lcom/zui/launcher/shortcuts/ShortcutKey;

    move-result-object v2

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/zui/launcher/util/ComponentKey;

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/prediction/AppTarget;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    move-object v2, v3

    :goto_1
    iget-object v3, v0, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    new-instance v4, Lcom/zui/launcher/appprediction/ComponentKeyMapper;

    iget-object v5, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a:Landroid/content/Context;

    iget-object v6, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->b:Lcom/zui/launcher/appprediction/DynamicItemCache;

    invoke-direct {v4, v5, v2, v6}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;-><init>(Landroid/content/Context;Lcom/zui/launcher/util/ComponentKey;Lcom/zui/launcher/appprediction/DynamicItemCache;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    return-object v0
.end method

.method private g(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    return-void
.end method

.method private h(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V
    .locals 9

    iget-boolean v0, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->isEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_5

    iget v6, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->d:I

    if-ge v5, v6, :cond_5

    iget-object v6, p1, Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;->apps:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/appprediction/ComponentKeyMapper;

    invoke-virtual {v6}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getComponentClass()Ljava/lang/String;

    move-result-object v7

    const-string v8, "@instantapp"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getComponentKey()Lcom/zui/launcher/util/ComponentKey;

    move-result-object v7

    instance-of v7, v7, Lcom/zui/launcher/shortcuts/ShortcutKey;

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getComponentKey()Lcom/zui/launcher/util/ComponentKey;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/shortcuts/ShortcutKey;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v7}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/zui/launcher/appprediction/ComponentKeyMapper;->getApp(Lcom/zui/launcher/allapps/AllAppsStore;)Lcom/zui/launcher/ItemInfoWithIcon;

    move-result-object v6

    check-cast v6, Lcom/zui/launcher/AppInfo;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0, p0, v6}, Lcom/zui/launcher/icons/IconCache;->updateIconInBackground(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/cache/HandlerRunnable;

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->b:Lcom/zui/launcher/appprediction/DynamicItemCache;

    invoke-virtual {p0, v2, v1}, Lcom/zui/launcher/appprediction/DynamicItemCache;->cacheItems(Ljava/util/List;Ljava/util/List;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private i()V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c:[Ljava/util/List;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v3, v1, :cond_1

    aget-object v6, v0, v3

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    or-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->i:Z

    if-eq v4, v0, :cond_2

    iput-boolean v4, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->i:Z

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_prediction_enabled_state"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    invoke-direct {p0, v5}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c(Z)V

    return-void
.end method


# virtual methods
.method public appPredictorCallback(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)Landroid/app/prediction/AppPredictor$Callback;
    .locals 1

    new-instance v0, Lcom/zui/launcher/appprediction/l;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/appprediction/l;-><init>(Lcom/zui/launcher/appprediction/PredictionUiStateManager;Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V

    return-object v0
.end method

.method public synthetic e(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c:[Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aput-object p2, v0, p1

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->i()V

    return-void
.end method

.method public getClient()Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    return-object p0
.end method

.method public getCurrentState()Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    return-object p0
.end method

.method public onAppsUpdated()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c(Z)V

    return-void
.end method

.method public onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->b(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    invoke-direct {p0, v0}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    return-void
.end method

.method public onIdpChanged(ILcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 0

    iget p1, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numColumns:I

    iput p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->d:I

    return-void
.end method

.method public reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 0

    return-void
.end method

.method public setTargetAppsView(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->f:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->g:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->a(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    :goto_0
    iget-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h:Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->h(Lcom/zui/launcher/appprediction/PredictionUiStateManager$PredictionState;)V

    return-void
.end method

.method public switchClient(Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->e:Lcom/zui/launcher/appprediction/PredictionUiStateManager$Client;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/PredictionUiStateManager;->c(Z)V

    return-void
.end method
