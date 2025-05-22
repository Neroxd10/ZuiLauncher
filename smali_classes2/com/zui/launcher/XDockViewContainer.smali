.class public Lcom/zui/launcher/XDockViewContainer;
.super Landroid/view/ViewGroup;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/XDockView;

.field private b:Lcom/zui/launcher/XDockViewLayout;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/XDockViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/XDockViewContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/XDockViewContainer;->c:I

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method public calculateParams()V
    .locals 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iput v0, p0, Lcom/zui/launcher/XDockViewContainer;->c:I

    return-void
.end method

.method public doOnConfigurationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewContainer;->calculateParams()V

    iget-object p0, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/XDockViewLayout;->doOnConfigurationChanged()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    iget-object p1, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    if-nez p1, :cond_0

    const p1, 0x7f0a014d

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/XDockViewLayout;

    iput-object p1, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    :cond_0
    iget-object p1, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/zui/launcher/XDockView;

    iput-object p1, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    const/4 p5, 0x1

    invoke-virtual {p0, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v3}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    invoke-virtual {p3, p1, p1, v0, v1}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p4, p2

    if-gt p4, v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p1

    :goto_0
    iget-object p2, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {p2}, Lcom/zui/launcher/XDockView;->isNormalMode()Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p5, :cond_5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    int-to-float p4, v2

    int-to-float v0, p2

    iget-object v1, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->getItemScale()F

    move-result v1

    mul-float/2addr v0, v1

    sub-float/2addr p4, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p4, v0

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    add-int/2addr p4, p1

    iget-object p0, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    add-int/2addr p2, p4

    add-int/2addr p3, p0

    invoke-virtual {p5, p4, p0, p2, p3}, Landroid/view/View;->layout(IIII)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    if-nez v0, :cond_0

    const v0, 0x7f0a014d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockViewLayout;

    iput-object v0, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/XDockView;

    iput-object v0, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->cellHeightPx:I

    iput v1, p0, Lcom/zui/launcher/XDockViewContainer;->c:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockView;->isStackMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    :cond_3
    :goto_1
    invoke-static {v0, p1}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/XDockViewContainer;->c:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/ViewGroup;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v0}, Lcom/zui/launcher/XDockViewLayout;->getProperWidth()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/XDockViewContainer;->b:Lcom/zui/launcher/XDockViewLayout;

    invoke-virtual {v1}, Lcom/zui/launcher/XDockViewLayout;->getRelativeX()I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/XDockViewContainer;->a:Lcom/zui/launcher/XDockView;

    invoke-virtual {v2}, Lcom/zui/launcher/XDockView;->getDisplayWidth()I

    move-result v2

    if-ge v0, v2, :cond_3

    add-int v3, v0, v1

    if-ge v3, v2, :cond_3

    sub-int v0, v2, v1

    goto :goto_1

    :goto_2
    return-void
.end method
