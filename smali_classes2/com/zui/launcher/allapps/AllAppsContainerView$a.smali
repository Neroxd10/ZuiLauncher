.class Lcom/zui/launcher/allapps/AllAppsContainerView$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:F

.field final synthetic c:Lcom/zui/launcher/allapps/AllAppsContainerView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView;F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->c:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iput p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    const v0, 0x3f0ccccd    # 0.55f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->c:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->c:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/views/SpringRelativeLayout;->addSpringView(I)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->c:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->b:F

    const/high16 v3, 0x43070000    # 135.0f

    mul-float/2addr v2, v3

    new-instance v3, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;

    invoke-direct {v3, p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;-><init>(Lcom/zui/launcher/allapps/AllAppsContainerView$a;I)V

    invoke-static {v0, v1, v2, v3}, Lcom/zui/launcher/allapps/AllAppsContainerView;->h(Lcom/zui/launcher/allapps/AllAppsContainerView;FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->a:Z

    :cond_0
    return-void
.end method
