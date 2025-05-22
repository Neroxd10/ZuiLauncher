.class Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/allapps/AllAppsContainerView$a;->onAnimationUpdate(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/allapps/AllAppsContainerView$a;


# direct methods
.method constructor <init>(Lcom/zui/launcher/allapps/AllAppsContainerView$a;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;->b:Lcom/zui/launcher/allapps/AllAppsContainerView$a;

    iput p2, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;->b:Lcom/zui/launcher/allapps/AllAppsContainerView$a;

    iget-object p1, p1, Lcom/zui/launcher/allapps/AllAppsContainerView$a;->c:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget p0, p0, Lcom/zui/launcher/allapps/AllAppsContainerView$a$a;->a:I

    invoke-virtual {p1, p0}, Lcom/zui/launcher/views/SpringRelativeLayout;->removeSpringView(I)V

    return-void
.end method
