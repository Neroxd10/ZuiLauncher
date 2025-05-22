.class public Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:F

.field private final b:F

.field private final c:Landroid/view/View;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/zui/launcher/Launcher;Landroid/view/View;F)V
    .locals 6
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->d:Ljava/util/List;

    iput p3, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->a:F

    iput-object p2, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->c:Landroid/view/View;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    const p3, 0x3f666666    # 0.9f

    mul-float/2addr p2, p3

    const/high16 p3, 0x41b00000    # 22.0f

    div-float/2addr p2, p3

    const p3, 0x3e4ccccd    # 0.2f

    add-float/2addr p2, p3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x7f070795

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p2, p3

    iput p2, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->b:F

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/PagedView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/zui/launcher/CellLayout;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/zui/launcher/CellLayout;->getShortcutsAndWidgets()Lcom/zui/launcher/ShortcutAndWidgetContainer;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v0, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v0, v0, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    :goto_1
    add-int/2addr v0, v1

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_2

    invoke-virtual {p3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v5, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    iget v4, v4, Lcom/zui/launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v5, v4

    invoke-direct {p0, v3, v5, v0}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->a(Landroid/view/View;II)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_3
    if-ltz p3, :cond_4

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/CellLayout$LayoutParams;

    iget v2, v2, Lcom/zui/launcher/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->a(Landroid/view/View;II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object p3

    invoke-virtual {p3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    iget-object p2, p2, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget p2, p2, Lcom/zui/launcher/InvariantDeviceProfile;->numRows:I

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p3, p2, v0}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->a(Landroid/view/View;II)V

    :cond_4
    sget-object p2, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;J)V

    sget-object p2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const-wide/16 v0, 0xfa

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;J)V

    return-void
.end method

.method private a(Landroid/view/View;II)V
    .locals 11

    sub-int/2addr p3, p2

    const/4 p2, 0x1

    add-int/2addr p3, p2

    mul-int/lit8 p3, p3, 0xa

    int-to-long v0, p3

    iget p3, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->b:F

    invoke-virtual {p1, p3}, Landroid/view/View;->setTranslationY(F)V

    new-instance p3, Lcom/zui/launcher/anim/SpringObjectAnimator;

    sget-object v4, Lcom/zui/launcher/LauncherAnimUtils;->VIEW_TRANSLATE_Y:Landroid/util/FloatProperty;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3f333333    # 0.7f

    const/high16 v7, 0x43160000    # 150.0f

    const/4 v9, 0x2

    new-array v8, v9, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->b:F

    aput v3, v8, v2

    const/4 v10, 0x0

    aput v10, v8, p2

    move-object v2, p3

    move-object v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/zui/launcher/anim/SpringObjectAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;FFF[F)V

    invoke-virtual {p3, v0, v1}, Lcom/zui/launcher/anim/SpringObjectAnimator;->setStartDelay(J)V

    iget-object p2, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->d:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v10}, Landroid/view/View;->setAlpha(F)V

    sget-object p2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array p3, v9, [F

    fill-array-data p3, :array_0

    invoke-static {p1, p2, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 p2, 0xfa

    invoke-virtual {p1, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object p0, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->d:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private b(Lcom/zui/launcher/Launcher;Lcom/zui/launcher/LauncherState;J)V
    .locals 2

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    new-instance v1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;

    invoke-direct {v1}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;-><init>()V

    iput-wide p3, v1, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->duration:J

    invoke-virtual {v1, v0}, Lcom/zui/launcher/LauncherStateManager$AnimationConfig;->getPropertySetter(Lcom/zui/launcher/anim/AnimatorSetBuilder;)Lcom/zui/launcher/anim/PropertySetter;

    move-result-object p3

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Workspace;->getStateTransitionAnimation()Lcom/zui/launcher/WorkspaceStateTransitionAnimation;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Lcom/zui/launcher/WorkspaceStateTransitionAnimation;->setScrim(Lcom/zui/launcher/anim/PropertySetter;Lcom/zui/launcher/LauncherState;)V

    iget-object p0, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->d:Ljava/util/List;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    instance-of v2, v1, Lcom/zui/launcher/anim/SpringObjectAnimator;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/zui/launcher/anim/SpringObjectAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->a:F

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/zui/launcher/anim/SpringObjectAnimator;->startSpring(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method
