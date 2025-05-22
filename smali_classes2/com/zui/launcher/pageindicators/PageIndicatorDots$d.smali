.class Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/pageindicators/PageIndicatorDots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Z

.field final synthetic b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;Lcom/zui/launcher/pageindicators/PageIndicatorDots$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;-><init>(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->a:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-boolean p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->e(Lcom/zui/launcher/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object p0, p0, Lcom/zui/launcher/pageindicators/PageIndicatorDots$d;->b:Lcom/zui/launcher/pageindicators/PageIndicatorDots;

    invoke-static {p0}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->f(Lcom/zui/launcher/pageindicators/PageIndicatorDots;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/zui/launcher/pageindicators/PageIndicatorDots;->g(Lcom/zui/launcher/pageindicators/PageIndicatorDots;F)V

    :cond_0
    return-void
.end method
