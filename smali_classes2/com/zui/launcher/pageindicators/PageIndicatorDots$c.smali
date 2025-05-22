.class Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/pageindicators/PageIndicatorDots;->playEntryAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/pageindicators/PageIndicatorDots;


# direct methods
.method constructor <init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;->a:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;->a:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->d(Lcom/zui/launcher/pageindicators/PageIndicatorDots;[F)[F

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;->a:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$c;->a:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
