.class Lcom/zui/launcher/XDockViewArea$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/XDockViewArea;->m(ZLandroid/animation/AnimatorSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[F

.field final synthetic b:Lcom/zui/launcher/XDockViewArea;


# direct methods
.method constructor <init>(Lcom/zui/launcher/XDockViewArea;[F)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/XDockViewArea$a;->b:Lcom/zui/launcher/XDockViewArea;

    iput-object p2, p0, Lcom/zui/launcher/XDockViewArea$a;->a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$a;->b:Lcom/zui/launcher/XDockViewArea;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/launcher/XDockViewArea$a;->b:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v3}, Lcom/zui/launcher/XDockViewArea;->a(Lcom/zui/launcher/XDockViewArea;)Lcom/zui/launcher/XDockView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-eqz v0, :cond_1

    if-ge v3, v2, :cond_1

    move v1, v2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/XDockViewArea$a;->b:Lcom/zui/launcher/XDockViewArea;

    invoke-static {v0}, Lcom/zui/launcher/XDockViewArea;->b(Lcom/zui/launcher/XDockViewArea;)Landroid/widget/TextView;

    move-result-object v2

    iget-object p0, p0, Lcom/zui/launcher/XDockViewArea$a;->a:[F

    invoke-static {v0, v2, v1, p0}, Lcom/zui/launcher/XDockViewArea;->c(Lcom/zui/launcher/XDockViewArea;Landroid/view/View;Z[F)V

    return-void
.end method
