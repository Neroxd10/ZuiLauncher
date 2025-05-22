.class Lcom/zui/launcher/fenlei/FenLeiPanelView$i;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/fenlei/FenLeiPanelView;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/zui/launcher/fenlei/FenLeiPanelView;


# direct methods
.method constructor <init>(Lcom/zui/launcher/fenlei/FenLeiPanelView;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iput p2, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->a:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    iget v0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->a:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object p1, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object p0, p0, Lcom/zui/launcher/fenlei/FenLeiPanelView$i;->b:Lcom/zui/launcher/fenlei/FenLeiPanelView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
