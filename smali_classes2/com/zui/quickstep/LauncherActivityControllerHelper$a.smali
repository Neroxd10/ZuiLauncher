.class Lcom/zui/quickstep/LauncherActivityControllerHelper$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/LauncherActivityControllerHelper;->prepareHomeUI(Lcom/zui/launcher/Launcher;)Lcom/zui/quickstep/ActivityControlHelper$HomeAnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/views/FloatingIconView;

.field final synthetic b:Lcom/zui/launcher/DeviceProfile;

.field final synthetic c:Z

.field final synthetic d:Landroid/graphics/RectF;

.field final synthetic e:Lcom/zui/launcher/Launcher;

.field final synthetic f:Lcom/zui/quickstep/BaseRecentsView;

.field final synthetic g:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/LauncherActivityControllerHelper;Lcom/zui/launcher/views/FloatingIconView;Lcom/zui/launcher/DeviceProfile;ZLandroid/graphics/RectF;Lcom/zui/launcher/Launcher;Lcom/zui/quickstep/BaseRecentsView;Landroid/view/View;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->a:Lcom/zui/launcher/views/FloatingIconView;

    iput-object p3, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->b:Lcom/zui/launcher/DeviceProfile;

    iput-boolean p4, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->c:Z

    iput-object p5, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->d:Landroid/graphics/RectF;

    iput-object p6, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->e:Lcom/zui/launcher/Launcher;

    iput-object p7, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->f:Lcom/zui/quickstep/BaseRecentsView;

    iput-object p8, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->g:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createActivityAnimationToHome()Lcom/zui/launcher/anim/AnimatorPlaybackController;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->b:Lcom/zui/launcher/DeviceProfile;

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->heightPx:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p0

    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/zui/launcher/LauncherStateManager;->createAnimationToNewWorkspace(Lcom/zui/launcher/LauncherState;JI)Lcom/zui/launcher/anim/AnimatorPlaybackController;

    move-result-object p0

    return-object p0
.end method

.method public getFloatingView()Landroid/view/View;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->a:Lcom/zui/launcher/views/FloatingIconView;

    return-object p0
.end method

.method public getWindowTargetRect()Landroid/graphics/RectF;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->b:Lcom/zui/launcher/DeviceProfile;

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    div-int/lit8 v1, v1, 0x2

    iget v2, v0, Lcom/zui/launcher/DeviceProfile;->availableWidthPx:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->availableHeightPx:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget-boolean v3, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->c:Z

    if-eqz v3, :cond_0

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->d:Landroid/graphics/RectF;

    return-object p0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v3, v2, v1

    sub-float v4, v0, v1

    add-float/2addr v2, v1

    add-float/2addr v0, v1

    invoke-direct {p0, v3, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public playAtomicAnimation(F)V
    .locals 9

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    new-instance v0, Lcom/zui/launcher/anim/AnimatorSetBuilder;

    invoke-direct {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->addFlag(I)V

    sget-object v2, Lcom/zui/launcher/LauncherState;->BACKGROUND_APP:Lcom/zui/launcher/LauncherState;

    sget-object v3, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    const/4 v5, 0x7

    const-wide/16 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v7}, Lcom/zui/launcher/LauncherStateManager;->createAtomicAnimation(Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/LauncherState;Lcom/zui/launcher/anim/AnimatorSetBuilder;IJ)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Lcom/zui/launcher/anim/AnimatorSetBuilder;->build()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->f:Lcom/zui/quickstep/BaseRecentsView;

    invoke-interface {v0}, Lcom/zui/quickstep/BaseRecentsView;->getScroller()Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/widget/OverScroller;->forceFinished(Z)V

    new-instance v0, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;

    iget-object v1, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->e:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/quickstep/LauncherActivityControllerHelper$a;->g:Landroid/view/View;

    invoke-direct {v0, v1, p0, p1}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;-><init>(Lcom/zui/launcher/Launcher;Landroid/view/View;F)V

    invoke-virtual {v0}, Lcom/zui/quickstep/util/StaggeredWorkspaceAnim;->start()V

    return-void
.end method
