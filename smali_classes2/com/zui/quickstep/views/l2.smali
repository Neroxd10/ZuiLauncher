.class final Lcom/zui/quickstep/views/l2;
.super Landroid/view/View;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1f
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/views/l2$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/drawable/ColorDrawable;

.field private final b:Lcom/zui/quickstep/views/l2$b;

.field private final c:Lcom/zui/quickstep/views/l2$b;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:F

.field private g:F

.field private h:F

.field private i:Z

.field private j:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/l2;->a:Landroid/graphics/drawable/ColorDrawable;

    new-instance p1, Lcom/zui/quickstep/views/l2$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/zui/quickstep/views/l2$b;-><init>(Lcom/zui/quickstep/views/l2$a;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/l2;->b:Lcom/zui/quickstep/views/l2$b;

    new-instance p1, Lcom/zui/quickstep/views/l2$b;

    invoke-direct {p1, p2}, Lcom/zui/quickstep/views/l2$b;-><init>(Lcom/zui/quickstep/views/l2$a;)V

    iput-object p1, p0, Lcom/zui/quickstep/views/l2;->c:Lcom/zui/quickstep/views/l2$b;

    new-instance p1, Lcom/zui/quickstep/views/l2$a;

    invoke-direct {p1, p0}, Lcom/zui/quickstep/views/l2$a;-><init>(Lcom/zui/quickstep/views/l2;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/views/l2;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/views/l2;->h:F

    return p0
.end method

.method private static c(Landroid/graphics/drawable/Drawable;)F
    .locals 5

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v3

    new-instance v4, Lcom/zui/quickstep/views/e;

    invoke-direct {v4, v0}, Lcom/zui/quickstep/views/e;-><init>([F)V

    invoke-interface {v3, v4}, Ljava/util/stream/IntStream;->mapToDouble(Ljava/util/function/IntToDoubleFunction;)Ljava/util/stream/DoubleStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/DoubleStream;->max()Ljava/util/OptionalDouble;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/util/OptionalDouble;->orElse(D)D

    move-result-wide v1

    :goto_0
    double-to-float v0, v1

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private static e(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/view/View;)F
    .locals 1

    invoke-static {}, Lcom/zui/launcher/widget/RoundedCornerEnforcement;->isRoundedCornerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->hasEnforcedCornerRadius()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/widget/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    instance-of p0, p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getClipToOutline()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object p0

    check-cast p0, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;

    invoke-virtual {p0}, Landroid/widget/RemoteViews$RemoteViewOutlineProvider;->getRadius()F

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-nez v0, :cond_1

    instance-of v0, p0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private h()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic i([FI)D
    .locals 0

    aget p0, p0, p1

    float-to-double p0, p0

    return-wide p0
.end method


# virtual methods
.method b()V
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/views/l2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/quickstep/views/l2;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/quickstep/views/l2;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method d()F
    .locals 2

    invoke-direct {p0}, Lcom/zui/quickstep/views/l2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/views/l2;->g:F

    iget-object v1, p0, Lcom/zui/quickstep/views/l2;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/zui/quickstep/views/l2;->c(Landroid/graphics/drawable/Drawable;)F

    move-result v1

    iget-object p0, p0, Lcom/zui/quickstep/views/l2;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {p0}, Lcom/zui/quickstep/views/l2;->c(Landroid/graphics/drawable/Drawable;)F

    move-result p0

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method f(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/view/View;FI)V
    .locals 1

    iput p3, p0, Lcom/zui/quickstep/views/l2;->f:F

    iput-object p2, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/zui/quickstep/views/l2;->e(Lcom/zui/launcher/widget/LauncherAppWidgetHostView;Landroid/view/View;)F

    move-result p1

    iput p1, p0, Lcom/zui/quickstep/views/l2;->g:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/quickstep/views/l2;->i:Z

    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/views/l2;->g(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/l2;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/zui/quickstep/views/l2;->b:Lcom/zui/quickstep/views/l2$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/zui/quickstep/views/l2$b;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->b:Lcom/zui/quickstep/views/l2$b;

    invoke-static {p1}, Lcom/zui/quickstep/views/l2$b;->a(Lcom/zui/quickstep/views/l2$b;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/quickstep/views/l2;->g(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/views/l2;->e:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/zui/quickstep/views/l2;->c:Lcom/zui/quickstep/views/l2$b;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/zui/quickstep/views/l2$b;->b(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->c:Lcom/zui/quickstep/views/l2$b;

    invoke-static {p1}, Lcom/zui/quickstep/views/l2$b;->a(Lcom/zui/quickstep/views/l2$b;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    invoke-virtual {p0, p3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->d:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1, p4}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object p1, p0, Lcom/zui/quickstep/views/l2;->a:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/zui/quickstep/views/l2;->i:Z

    :cond_2
    :goto_0
    return-void
.end method

.method j()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/quickstep/views/l2;->j:Landroid/view/View;

    iput-object v0, p0, Lcom/zui/quickstep/views/l2;->d:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/zui/quickstep/views/l2;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/quickstep/views/l2;->h:F

    iput v1, p0, Lcom/zui/quickstep/views/l2;->f:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method k(FF)V
    .locals 3

    invoke-direct {p0}, Lcom/zui/quickstep/views/l2;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/views/l2;->g:F

    iget v1, p0, Lcom/zui/quickstep/views/l2;->f:F

    sub-float v2, v1, v0

    mul-float/2addr v2, p1

    add-float/2addr v0, v2

    iput v0, p0, Lcom/zui/quickstep/views/l2;->h:F

    iget-object v0, p0, Lcom/zui/quickstep/views/l2;->b:Lcom/zui/quickstep/views/l2$b;

    invoke-virtual {v0, v1, p1}, Lcom/zui/quickstep/views/l2$b;->c(FF)V

    iget-object v0, p0, Lcom/zui/quickstep/views/l2;->c:Lcom/zui/quickstep/views/l2$b;

    iget v1, p0, Lcom/zui/quickstep/views/l2;->f:F

    invoke-virtual {v0, v1, p1}, Lcom/zui/quickstep/views/l2$b;->c(FF)V

    iget-boolean p1, p0, Lcom/zui/quickstep/views/l2;->i:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
