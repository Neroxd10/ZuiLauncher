.class public Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/pageindicators/PageIndicator;


# static fields
.field public static final KEY_SHOWED_PEEK_WORK_TAB:Ljava/lang/String; = "showed_peek_work_tab"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/content/SharedPreferences;

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:I

.field private i:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e:I

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->f:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->h:I

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->j:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c2

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->d:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->a:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->m:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->l:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0700c1

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->n:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->b:Landroid/graphics/Paint;

    const v0, 0x101042c

    invoke-static {p1, v0}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07008c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->c:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->k:Z

    return-void
.end method

.method private a()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/zui/launcher/allapps/r;

    invoke-direct {v0, p0}, Lcom/zui/launcher/allapps/r;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic b(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setPressed(Z)V

    return-void
.end method

.method private c(II)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->f:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e:I

    iput p2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->f:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    invoke-direct {p0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->getLeftTab()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->g:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->c(II)V

    return-void
.end method

.method private e(F)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->g:F

    invoke-direct {p0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->d()V

    return-void
.end method

.method private f(I)V
    .locals 4

    iput p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->h:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getLeftTab()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public highlightWorkTabIfNecessary()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->c:Landroid/content/SharedPreferences;

    const-string v1, "showed_peek_work_tab"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->j:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->a()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->c:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    iget-object v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/2addr v1, v0

    iget v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->m:I

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->n:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e:I

    add-int v3, v2, v1

    int-to-float v5, v3

    iget v3, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->d:I

    sub-int v3, v0, v3

    int-to-float v6, v3

    add-int/2addr v2, v1

    iget v1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->m:I

    add-int/2addr v2, v1

    int-to-float v7, v2

    int-to-float v8, v0

    iget v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->l:I

    int-to-float v9, v0

    int-to-float v10, v0

    iget-object v11, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->a:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->h:I

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->f(I)V

    iget p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->g:F

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e(F)V

    return-void
.end method

.method public setActiveMarker(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->f(I)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->j:I

    if-eq v1, p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onTabChanged(I)V

    :cond_0
    iput p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->j:I

    return-void
.end method

.method public setContainerView(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-void
.end method

.method public setMarkersCount(I)V
    .locals 0

    return-void
.end method

.method public setScroll(II)V
    .locals 0

    int-to-float p1, p1

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/PersonalWorkSlidingTabStrip;->e(F)V

    return-void
.end method
