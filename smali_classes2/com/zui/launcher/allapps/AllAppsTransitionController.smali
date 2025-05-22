.class public Lcom/zui/launcher/allapps/AllAppsTransitionController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateHandler;
.implements Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;


# static fields
.field public static final ALL_APPS_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/zui/launcher/allapps/AllAppsTransitionController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private b:Lcom/zui/launcher/views/ScrimView;

.field private final c:Lcom/zui/launcher/Launcher;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsTransitionController$a;

    const-string v1, "allAppsProgress"

    invoke-direct {v0, v1}, Lcom/zui/launcher/allapps/AllAppsTransitionController$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->g:F

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    const v0, 0x7f04019d

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d:Z

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/BaseActivity;->addOnDeviceProfileChangeListener(Lcom/zui/launcher/DeviceProfile$OnDeviceProfileChangeListener;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/AllAppsTransitionController;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/AllAppsTransitionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d()V

    return-void
.end method

.method private c()Z
    .locals 1

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->reset(Z)V

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->reset()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onScrollUpEnd()V

    :cond_2
    :goto_0
    return-void
.end method

.method private e(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setAlphas(ILcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method


# virtual methods
.method public varargs createSpringAnimation([F)Landroid/animation/Animator;
    .locals 8

    new-instance v7, Lcom/zui/launcher/anim/SpringObjectAnimator;

    sget-object v2, Lcom/zui/launcher/allapps/AllAppsTransitionController;->ALL_APPS_PROGRESS:Landroid/util/FloatProperty;

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v3, v1, v0

    const v4, 0x3f666666    # 0.9f

    const/high16 v5, 0x44160000    # 600.0f

    move-object v0, v7

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    return-object v7
.end method

.method f(F)V
    .locals 1

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->g:F

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    int-to-float p1, p1

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->g:F

    sub-float/2addr p1, v0

    :goto_0
    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/views/ScrimView;->reInitUi()V

    :cond_1
    return-void
.end method

.method public getProgress()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    return p0
.end method

.method public getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;
    .locals 1

    new-instance v0, Lcom/zui/launcher/allapps/AllAppsTransitionController$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController$b;-><init>(Lcom/zui/launcher/allapps/AllAppsTransitionController;)V

    return-object v0
.end method

.method public getShiftRange()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    return p0
.end method

.method public highlightWorkTabIfNecessary()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->k()V

    :cond_0
    return-void
.end method

.method public onDeviceProfileChanged(Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d:Z

    iget p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->g:F

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f(F)V

    iget-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAlphaProperty(I)Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/PagedView;->getPageIndicator()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/zui/launcher/pageindicators/PageIndicatorViewCompat;

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setAlphas(ILcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    sget-object p2, Lcom/zui/launcher/anim/PropertySetter;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object p2

    :goto_0
    and-int/lit8 v0, p1, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    const/16 v3, 0xa

    sget-object v4, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p3, v3, v4}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object p3

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getContentView()Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    move v6, v4

    goto :goto_3

    :cond_4
    move v6, v5

    :goto_3
    invoke-virtual {p2, v3, v6, p3}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->hasSearchContent()Z

    move-result v3

    iget-object v6, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v6}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v6

    if-eqz v1, :cond_5

    if-nez v3, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-virtual {p2, v6, v4, p3}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getFloatingHeaderView()Lcom/zui/launcher/allapps/FloatingHeaderView;

    move-result-object v3

    invoke-virtual {v3, v0, v1, p2, p3}, Lcom/zui/launcher/allapps/FloatingHeaderView;->setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getSearchUiManager()Lcom/zui/launcher/allapps/SearchUiManager;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/zui/launcher/allapps/SearchUiManager;->setContentVisibility(ILcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz p0, :cond_7

    sget-object v0, Lcom/zui/launcher/views/ScrimView;->DRAG_HANDLE_ALPHA:Landroid/util/Property;

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_6

    const/16 v2, 0xff

    :cond_6
    invoke-virtual {p2, p0, v0, v2, p3}, Lcom/zui/launcher/anim/PropertySetter;->setInt(Ljava/lang/Object;Landroid/util/Property;ILandroid/animation/TimeInterpolator;)V

    :cond_7
    return-void
.end method

.method public setProgress(F)V
    .locals 5

    iput p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/views/ScrimView;->setProgress(F)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-nez v0, :cond_2

    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    iget-object v4, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    cmpl-float v0, p1, v2

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    sget-object v2, Lcom/zui/launcher/LauncherState;->SPRING_LOADED:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v0, v2}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    mul-float/2addr v0, p1

    :goto_1
    sget-boolean v2, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragController;->isDragCompleted()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    mul-float/2addr v0, p1

    :cond_7
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    :cond_8
    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/zui/launcher/views/ScrimView;->getDragHandleSize()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_9

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v3

    :goto_3
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/util/SystemUiController;->updateUiStateForStyle(IZ)V

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getSystemUiController()Lcom/zui/launcher/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Lcom/zui/launcher/util/SystemUiController;->updateUiState(II)V

    :cond_b
    :goto_4
    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherState;->getVisibleElements(Lcom/zui/launcher/Launcher;)I

    move-result v0

    and-int/2addr v0, v2

    if-eqz v0, :cond_d

    sget-object v0, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v0

    cmpl-float v1, p1, v0

    if-gez v1, :cond_c

    iget-object v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    sget-object v2, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, v2}, Lcom/zui/launcher/Launcher;->isInState(Lcom/zui/launcher/LauncherState;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    sub-float/2addr p1, v0

    iget v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e:F

    mul-float/2addr p1, v0

    iget-object p0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_d
    return-void
.end method

.method public setState(Lcom/zui/launcher/LauncherState;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->setProgress(F)V

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d()V

    return-void
.end method

.method public setStateWithAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;)V
    .locals 5

    sget-boolean v0, Lcom/zui/launcher/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStateWithAnimation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "b/133867119"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/LauncherState;->getVerticalProgress(Lcom/zui/launcher/Launcher;)F

    move-result v0

    iget v1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3, p2}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    invoke-direct {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->d()V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->playNonAtomicComponent()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-boolean v1, p3, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->userControlled:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/zui/launcher/LauncherState;->OVERVIEW:Lcom/zui/launcher/LauncherState;

    if-ne p1, v1, :cond_4

    const/4 v1, 0x6

    sget-object v2, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v1, v2}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/zui/launcher/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->f:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {p0, v2}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->createSpringAnimation([F)Landroid/animation/Animator;

    move-result-object v0

    iget-wide v2, p3, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {p2, v4, v1}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->getInterpolator(ILandroid/view/animation/Interpolator;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->getProgressAnimatorListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p2, v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->play(Landroid/animation/Animator;)V

    invoke-direct {p0, p1, p3, p2}, Lcom/zui/launcher/allapps/AllAppsTransitionController;->e(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherStateManager$AnimationConfig;Lcom/zui/launcher/anim/AnimatorSetBuilder;)V

    return-void
.end method

.method public setupViews(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->a:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->c:Lcom/zui/launcher/Launcher;

    const v0, 0x7f0a030f

    invoke-virtual {p1, v0}, Lcom/zui/launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/views/ScrimView;

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsTransitionController;->b:Lcom/zui/launcher/views/ScrimView;

    return-void
.end method
