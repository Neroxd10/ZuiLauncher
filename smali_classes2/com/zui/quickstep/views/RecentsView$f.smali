.class Lcom/zui/quickstep/views/RecentsView$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/views/RecentsView;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/quickstep/views/RecentsView;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/views/RecentsView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/views/RecentsView$f;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    instance-of p1, p3, Lcom/zui/quickstep/views/TaskView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/quickstep/views/RecentsView$f;->a:Lcom/zui/quickstep/views/RecentsView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/PagedView;->snapToPage(I)Z

    iget-object p0, p0, Lcom/zui/quickstep/views/RecentsView$f;->a:Lcom/zui/quickstep/views/RecentsView;

    invoke-static {p0}, Lcom/zui/quickstep/views/RecentsView;->G(Lcom/zui/quickstep/views/RecentsView;)V

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
