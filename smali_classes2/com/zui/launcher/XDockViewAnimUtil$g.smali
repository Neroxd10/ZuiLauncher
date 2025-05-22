.class Lcom/zui/launcher/XDockViewAnimUtil$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewAnimUtil;->getToWorkSpaceAnim(Landroid/view/View;Landroid/view/View;Landroid/view/View;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:[I

.field final synthetic c:[I

.field final synthetic d:Lcom/zui/launcher/XDockViewAnimUtil;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->d:Lcom/zui/launcher/XDockViewAnimUtil;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->b:[I

    iput-object p4, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->c:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->d:Lcom/zui/launcher/XDockViewAnimUtil;

    iget-object v1, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->b:[I

    iget-object p0, p0, Lcom/zui/launcher/XDockViewAnimUtil$g;->c:[I

    invoke-static {v0, v1, v2, p0, p1}, Lcom/zui/launcher/XDockViewAnimUtil;->d(Lcom/zui/launcher/XDockViewAnimUtil;Landroid/view/View;[I[ILandroid/animation/ValueAnimator;)V

    return-void
.end method
