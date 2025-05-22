.class public Lcom/zui/launcher/LauncherState;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/LauncherState$ScaleAndTranslation;,
        Lcom/zui/launcher/LauncherState$PageAlphaProvider;
    }
.end annotation


# static fields
.field public static final ALL_APPS:Lcom/zui/launcher/LauncherState;

.field public static final ALL_APPS_CONTENT:I = 0x10

.field public static final ALL_APPS_HEADER:I = 0x4

.field public static final ALL_APPS_HEADER_EXTRA:I = 0x8

.field public static final BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

.field protected static final DEFAULT_ALPHA_PROVIDER:Lcom/zui/launcher/LauncherState$PageAlphaProvider;

.field public static final EDITVIEW:Lcom/zui/launcher/LauncherState;

.field protected static final FLAG_DISABLE_ACCESSIBILITY:I = 0x2

.field protected static final FLAG_DISABLE_INTERACTION:I = 0x40

.field protected static final FLAG_DISABLE_PAGE_CLIPPING:I = 0x10

.field protected static final FLAG_DISABLE_RESTORE:I = 0x4

.field protected static final FLAG_HAS_SYS_UI_SCRIM:I = 0x200

.field protected static final FLAG_HIDE_BACK_BUTTON:I = 0x100

.field protected static final FLAG_MULTI_PAGE:I = 0x1

.field protected static final FLAG_OVERVIEW_UI:I = 0x80

.field protected static final FLAG_PAGE_BACKGROUNDS:I = 0x20

.field protected static final FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I = 0x8

.field public static final HOTSEAT_ICONS:I = 0x1

.field public static final HOTSEAT_SEARCH_BOX:I = 0x2

.field public static final NONE:I = 0x0

.field public static final NORMAL:Lcom/zui/launcher/LauncherState;

.field public static final NO_OFFSET:F = 0.0f

.field public static final NO_SCALE:F = 1.0f

.field public static final OVERVIEW:Lcom/zui/launcher/LauncherState;

.field public static final OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

.field public static final QUICK_SWITCH:Lcom/zui/launcher/LauncherState;

.field public static final RECENTS_CLEAR_ALL_BUTTON:I = 0x40

.field public static final SPRING_LOADED:Lcom/zui/launcher/LauncherState;

.field public static final VERTICAL_SWIPE_INDICATOR:I = 0x20

.field private static final b:[Lcom/zui/launcher/LauncherState;


# instance fields
.field private final a:I

.field public final containerType:I

.field public final disableInteraction:Z

.field public final disablePageClipping:Z

.field public final disableRestore:Z

.field public final hasMultipleVisiblePages:Z

.field public final hasSysUiScrim:Z

.field public final hasWorkspacePageBackground:Z

.field public final hideBackButton:Z

.field public final ordinal:I

.field public final overviewUi:Z

.field public final transitionDuration:I

.field public final workspaceAccessibilityFlag:I

.field public final workspaceIconsCanBeDragged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/zui/launcher/LauncherState$a;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1}, Lcom/zui/launcher/LauncherState$a;-><init>(Landroid/view/animation/Interpolator;)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/zui/launcher/LauncherState;

    sput-object v0, Lcom/zui/launcher/LauncherState;->b:[Lcom/zui/launcher/LauncherState;

    new-instance v0, Lcom/zui/launcher/LauncherState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x30c

    invoke-direct {v0, v1, v2, v1, v3}, Lcom/zui/launcher/LauncherState;-><init>(IIII)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    new-instance v0, Lcom/zui/launcher/states/SpringLoadedState;

    invoke-direct {v0, v2}, Lcom/zui/launcher/states/SpringLoadedState;-><init>(I)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    new-instance v0, Lcom/zui/launcher/uioverrides/states/AllAppsState;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/states/AllAppsState;-><init>(I)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    new-instance v0, Lcom/zui/launcher/uioverrides/states/OverviewState;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/zui/launcher/uioverrides/states/OverviewState;-><init>(I)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->newPeekState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->newSwitchState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherState;->QUICK_SWITCH:Lcom/zui/launcher/LauncherState;

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/states/OverviewState;->newBackgroundState(I)Lcom/zui/launcher/uioverrides/states/OverviewState;

    move-result-object v0

    sput-object v0, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    new-instance v0, Lcom/zui/launcher/states/EditviewState;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lcom/zui/launcher/states/EditviewState;-><init>(I)V

    sput-object v0, Lcom/zui/launcher/LauncherState;->EDITVIEW:Lcom/zui/launcher/LauncherState;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/launcher/LauncherState;->containerType:I

    iput p3, p0, Lcom/zui/launcher/LauncherState;->transitionDuration:I

    and-int/lit8 p2, p4, 0x20

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->hasWorkspacePageBackground:Z

    and-int/lit8 p2, p4, 0x1

    if-eqz p2, :cond_1

    move p2, p3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->hasMultipleVisiblePages:Z

    and-int/lit8 p2, p4, 0x2

    if-eqz p2, :cond_2

    const/4 p2, 0x4

    goto :goto_2

    :cond_2
    move p2, v0

    :goto_2
    iput p2, p0, Lcom/zui/launcher/LauncherState;->workspaceAccessibilityFlag:I

    and-int/lit8 p2, p4, 0x4

    if-eqz p2, :cond_3

    move p2, p3

    goto :goto_3

    :cond_3
    move p2, v0

    :goto_3
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->disableRestore:Z

    and-int/lit8 p2, p4, 0x8

    if-eqz p2, :cond_4

    move p2, p3

    goto :goto_4

    :cond_4
    move p2, v0

    :goto_4
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->workspaceIconsCanBeDragged:Z

    and-int/lit8 p2, p4, 0x10

    if-eqz p2, :cond_5

    move p2, p3

    goto :goto_5

    :cond_5
    move p2, v0

    :goto_5
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->disablePageClipping:Z

    and-int/lit8 p2, p4, 0x40

    if-eqz p2, :cond_6

    move p2, p3

    goto :goto_6

    :cond_6
    move p2, v0

    :goto_6
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->disableInteraction:Z

    and-int/lit16 p2, p4, 0x80

    if-eqz p2, :cond_7

    move p2, p3

    goto :goto_7

    :cond_7
    move p2, v0

    :goto_7
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    and-int/lit16 p2, p4, 0x100

    if-eqz p2, :cond_8

    move p2, p3

    goto :goto_8

    :cond_8
    move p2, v0

    :goto_8
    iput-boolean p2, p0, Lcom/zui/launcher/LauncherState;->hideBackButton:Z

    and-int/lit16 p2, p4, 0x200

    if-eqz p2, :cond_9

    goto :goto_9

    :cond_9
    move p3, v0

    :goto_9
    iput-boolean p3, p0, Lcom/zui/launcher/LauncherState;->hasSysUiScrim:Z

    iput p1, p0, Lcom/zui/launcher/LauncherState;->ordinal:I

    iput p4, p0, Lcom/zui/launcher/LauncherState;->a:I

    sget-object p2, Lcom/zui/launcher/LauncherState;->b:[Lcom/zui/launcher/LauncherState;

    aput-object p0, p2, p1

    return-void
.end method

.method static synthetic a(F)F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p0, p0, v0

    if-gez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method protected static dispatchWindowStateChanged(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void
.end method

.method public static values()[Lcom/zui/launcher/LauncherState;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->b:[Lcom/zui/launcher/LauncherState;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/launcher/LauncherState;

    return-object v0
.end method


# virtual methods
.method public final getDepth(Landroid/content/Context;)F
    .locals 1

    invoke-static {p1}, Lcom/zui/launcher/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/zui/launcher/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/zui/launcher/DeviceProfile;->isMultiWindowMode:Z

    invoke-virtual {p0, p1, v0}, Lcom/zui/launcher/LauncherState;->getDepth(Landroid/content/Context;Z)F

    move-result p0

    return p0
.end method

.method public final getDepth(Landroid/content/Context;Z)F
    .locals 0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherState;->getDepthUnchecked(Landroid/content/Context;)F

    move-result p0

    return p0
.end method

.method protected getDepthUnchecked(Landroid/content/Context;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getDescription(Lcom/zui/launcher/Launcher;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentPageDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHistoryForState(Lcom/zui/launcher/LauncherState;)Lcom/zui/launcher/LauncherState;
    .locals 0

    sget-object p0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    return-object p0
.end method

.method public getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherState;->getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getOverviewFullscreenProgress()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverviewModalness()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOverviewScaleAndOffset(Lcom/zui/launcher/Launcher;)[F
    .locals 0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getNormalOverviewScaleAndOffset()[F

    move-result-object p0

    return-object p0
.end method

.method public getOverviewScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/uioverrides/UiFactory;->getOverviewScaleAndTranslationForNormalState(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getVerticalProgress(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0
.end method

.method public getVisibleElements(Lcom/zui/launcher/Launcher;)I
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p0

    const/16 v0, 0x21

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->isShown(Lcom/zui/launcher/Launcher;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 v0, 0x20

    :cond_0
    return v0
.end method

.method public getWorkspacePageAlphaProvider(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$PageAlphaProvider;
    .locals 2

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/PagedView;->getNextPage()I

    move-result p1

    new-instance v0, Lcom/zui/launcher/LauncherState$b;

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->ACCEL_2:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p0, v1, p1}, Lcom/zui/launcher/LauncherState$b;-><init>(Lcom/zui/launcher/LauncherState;Landroid/view/animation/Interpolator;I)V

    return-object v0

    :cond_1
    :goto_0
    sget-object p0, Lcom/zui/launcher/LauncherState;->DEFAULT_ALPHA_PROVIDER:Lcom/zui/launcher/LauncherState$PageAlphaProvider;

    return-object p0
.end method

.method public getWorkspacePageIndicatorScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/LauncherState;->getHotseatScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    move-result-object p0

    return-object p0
.end method

.method public getWorkspaceScaleAndTranslation(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/LauncherState$ScaleAndTranslation;
    .locals 1

    new-instance p0, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/zui/launcher/LauncherState$ScaleAndTranslation;-><init>(FFF)V

    return-object p0
.end method

.method public getWorkspaceScrimAlpha(Lcom/zui/launcher/Launcher;)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final hasFlag(I)Z
    .locals 0

    iget p0, p0, Lcom/zui/launcher/LauncherState;->a:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackPressed(Lcom/zui/launcher/Launcher;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed state this --"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Launcher"

    invoke-static {v1, v0}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/LauncherStateManager;->getLastState()Lcom/zui/launcher/LauncherState;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBackPressed state lastState --"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/zui/launcher/Utilities;->printLogi(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/zui/quickstep/SystemUiProxy;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/SystemUiProxy;

    invoke-virtual {p1}, Lcom/zui/quickstep/SystemUiProxy;->exitSplitScreenOnStartHome()V

    :cond_0
    invoke-virtual {p0, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;)V

    :cond_1
    return-void
.end method

.method public onStateDisabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    return-void
.end method

.method public onStateEnabled(Lcom/zui/launcher/Launcher;)V
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/LauncherState;->dispatchWindowStateChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onStateTransitionEnd(Lcom/zui/launcher/Launcher;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/zui/quickstep/util/RecentsViewUtils;->INSTANCE:Lcom/zui/quickstep/util/RecentsViewUtils;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/RecentsViewUtils;->isPhone()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/quickstep/views/RecentsView;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/quickstep/views/RecentsView;->showHintIfNeeded(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getOverviewPanel()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->animateWallpaperValueToNormal()V

    :cond_2
    return-void
.end method

.method public prepareForAtomicAnimation(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 4

    sget-object v0, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/16 v1, 0x9

    if-ne p0, v0, :cond_5

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p2, v0, :cond_5

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL:Landroid/view/animation/Interpolator;

    const/4 p2, 0x1

    invoke-virtual {p3, p2, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x3

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x6

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/zui/launcher/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p3, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    const/4 p0, 0x7

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p0, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    sget-object p0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_7:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result p3

    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/CellLayout;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_1

    move p3, p2

    goto :goto_1

    :cond_1
    move p3, v0

    :cond_2
    :goto_1
    const v1, 0x3f6b851f    # 0.92f

    if-nez p3, :cond_3

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    :cond_3
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move p2, v0

    :goto_2
    if-nez p2, :cond_6

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    if-ne p0, p1, :cond_6

    sget-object p0, Lcom/zui/launcher/LauncherState;->OVERVIEW_PEEK:Lcom/zui/launcher/LauncherState;

    if-ne p2, p0, :cond_6

    sget-object p0, Lcom/zui/launcher/y1;->a:Lcom/zui/launcher/y1;

    invoke-virtual {p3, v1, p0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->setInterpolator(ILandroid/view/animation/Interpolator;)V

    :cond_6
    :goto_3
    return-void
.end method
