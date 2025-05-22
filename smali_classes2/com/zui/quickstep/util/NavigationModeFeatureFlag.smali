.class public Lcom/zui/quickstep/util/NavigationModeFeatureFlag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;


# static fields
.field public static final LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;


# instance fields
.field private final a:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/zui/quickstep/SysUINavigationMode$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    sget-object v1, Lcom/zui/launcher/config/BaseFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/zui/launcher/TogglableFlag;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/zui/quickstep/util/k;

    invoke-direct {v2, v1}, Lcom/zui/quickstep/util/k;-><init>(Lcom/zui/launcher/TogglableFlag;)V

    sget-object v1, Lcom/zui/quickstep/util/t;->a:Lcom/zui/quickstep/util/t;

    invoke-direct {v0, v2, v1}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Predicate;)V

    sput-object v0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->LIVE_TILE:Lcom/zui/quickstep/util/NavigationModeFeatureFlag;

    return-void
.end method

.method private constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/zui/quickstep/SysUINavigationMode$Mode;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->a:Ljava/util/function/Supplier;

    iput-object p2, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->b:Ljava/util/function/Predicate;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/SysUINavigationMode$Mode;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/quickstep/SysUINavigationMode$Mode;->hasGestures:Z

    return p0
.end method


# virtual methods
.method public get()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->a:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->c:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {v0}, Lcom/zui/quickstep/SysUINavigationMode;->getMode()Lcom/zui/quickstep/SysUINavigationMode$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V

    sget-object v0, Lcom/zui/quickstep/SysUINavigationMode;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SysUINavigationMode;

    invoke-virtual {p1, p0}, Lcom/zui/quickstep/SysUINavigationMode;->addModeChangeListener(Lcom/zui/quickstep/SysUINavigationMode$NavigationModeChangeListener;)Lcom/zui/quickstep/SysUINavigationMode$Mode;

    return-void
.end method

.method public onNavigationModeChanged(Lcom/zui/quickstep/SysUINavigationMode$Mode;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->b:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/quickstep/util/NavigationModeFeatureFlag;->c:Z

    return-void
.end method
