.class public Lcom/zui/launcher/appprediction/AppsDividerView;
.super Landroid/view/View;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherStateManager$StateListener;
.implements Lcom/zui/launcher/allapps/FloatingHeaderRow;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;
    }
.end annotation


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Landroid/text/TextPaint;

.field private c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

.field private final d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private final e:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private f:Landroid/text/Layout;

.field private g:Z

.field private h:Lcom/zui/launcher/allapps/FloatingHeaderView;

.field private i:Z

.field private j:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/appprediction/AppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/appprediction/AppsDividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    sget-object p2, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    iput-object p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object p2, Lcom/zui/launcher/allapps/FloatingHeaderRow;->NO_ROWS:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    iput-object p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->j:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->k:Z

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    const p2, 0x7f04019d

    invoke-static {p1, p2}, Lcom/zui/launcher/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result p2

    iget-object p3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    if-eqz p2, :cond_0

    const p3, 0x7f060058

    goto :goto_0

    :cond_0
    const p3, 0x7f060057

    :goto_0
    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->d:I

    if-eqz p2, :cond_1

    const p2, 0x7f060056

    goto :goto_1

    :cond_1
    const p2, 0x7f060055

    :goto_1
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->e:I

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->getAllAppsVisitedCount()I

    move-result p0

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 7

    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->i:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->j:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v6, v0, v4

    if-ne v6, p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v6}, Lcom/zui/launcher/allapps/FloatingHeaderRow;->shouldDraw()Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    if-eqz v0, :cond_5

    if-lez v5, :cond_5

    sget-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    goto :goto_2

    :cond_5
    if-ne v5, v1, :cond_0

    sget-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->LINE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    :goto_2
    iget-object v3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    if-eq v3, v0, :cond_8

    iput-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object v3, Lcom/zui/launcher/appprediction/AppsDividerView$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v3, v0

    if-eq v0, v1, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    move v0, v2

    goto :goto_4

    :cond_6
    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int v2, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    iget v3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->e:I

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    iget v3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->d:I

    :goto_3
    invoke-virtual {v1, v3}, Landroid/text/TextPaint;->setColor(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->c()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    iget-object p0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->h:Lcom/zui/launcher/allapps/FloatingHeaderView;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/FloatingHeaderView;->onHeightUpdated()V

    :cond_8
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->k:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private getAllAppsLabelLayout()Landroid/text/Layout;
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->f:Landroid/text/Layout;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    const-string v2, "sans-serif-medium"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0700ac

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f120089

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v0, v3, v2, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->f:Landroid/text/Layout;

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->f:Landroid/text/Layout;

    return-object p0
.end method

.method private getAllAppsVisitedCount()I
    .locals 2

    iget-object p0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "launcher.all_apps_visited_count"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private setAllAppsVisitedCount(I)V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "launcher.all_apps_visited_count"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/zui/launcher/appprediction/AppsDividerView;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/zui/launcher/appprediction/AppsDividerView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->addStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->b()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object v1, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->LINE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0702ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    int-to-float v5, v2

    int-to-float v8, v1

    int-to-float v7, v3

    iget-object v9, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->b:Landroid/text/TextPaint;

    move-object v4, p1

    move v6, v8

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->ALL_APPS_LABEL:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->getAllAppsLabelLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v2, p0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-float p0, v1

    int-to-float v3, v2

    invoke-virtual {p1, p0, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    neg-int p0, v1

    int-to-float p0, p0

    neg-int v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result p2

    invoke-static {p2, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onStateTransitionComplete(Lcom/zui/launcher/LauncherState;)V
    .locals 1

    sget-object v0, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->getAllAppsVisitedCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher/appprediction/AppsDividerView;->setAllAppsVisitedCount(I)V

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->a()Z

    move-result v0

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->b()V

    :cond_1
    iget-boolean p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->g:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/zui/launcher/LauncherStateManager;->removeStateListener(Lcom/zui/launcher/LauncherStateManager$StateListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStateTransitionStart(Lcom/zui/launcher/LauncherState;)V
    .locals 0

    return-void
.end method

.method public setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .locals 0

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;)V
    .locals 1

    iget p1, p2, Lcom/zui/launcher/DeviceProfile;->desiredWorkspaceLeftRightMarginPx:I

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->cellLayoutPaddingLeftRightPx:I

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 0

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    iput-boolean p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->k:Z

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->c()V

    return-void
.end method

.method public setup(Lcom/zui/launcher/allapps/FloatingHeaderView;[Lcom/zui/launcher/allapps/FloatingHeaderRow;Z)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->h:Lcom/zui/launcher/allapps/FloatingHeaderView;

    iput-boolean p3, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->i:Z

    iput-object p2, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->j:[Lcom/zui/launcher/allapps/FloatingHeaderRow;

    invoke-direct {p0}, Lcom/zui/launcher/appprediction/AppsDividerView;->b()V

    return-void
.end method

.method public shouldDraw()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/appprediction/AppsDividerView;->c:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    sget-object v0, Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;->NONE:Lcom/zui/launcher/appprediction/AppsDividerView$DividerType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
