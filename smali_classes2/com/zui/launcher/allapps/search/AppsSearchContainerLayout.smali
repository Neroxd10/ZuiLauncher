.class public Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;
.super Lcom/zui/launcher/ExtendedEditText;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/SearchUiManager;
.implements Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.implements Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/zui/launcher/Insettable;


# instance fields
.field private final e:Lcom/zui/launcher/Launcher;

.field private final f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

.field private final g:Landroid/text/SpannableStringBuilder;

.field private h:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field private i:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private final j:F

.field private final k:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/ExtendedEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    new-instance p1, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->j:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->k:F

    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object p2

    const p3, 0x7f080221

    invoke-static {p1, p3, p2}, Lcom/zui/launcher/Utilities;->prefixTextWithIcon(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private c()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onSearchResultsChanged()V

    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->h:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->c()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onClearSearchResult()V

    return-void
.end method

.method public getScrollRangeDelta(Landroid/graphics/Rect;)F
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->j:F

    neg-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->k:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->j:F

    add-float/2addr p1, p0

    return p1
.end method

.method public initialize(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 2

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getApps()Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->h:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v1, p0, v0, p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/zui/launcher/allapps/search/SearchAlgorithm;Lcom/zui/launcher/ExtendedEditText;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public onAppsUpdated()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/zui/launcher/ExtendedEditText;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/EditText;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p3

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p5

    sub-int/2addr p3, p5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    sub-int/2addr p3, p5

    sub-int/2addr p4, p2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    sub-int/2addr p3, p4

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    sub-int/2addr p1, p2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setTranslationX(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->e:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getActiveRecyclerView()Lcom/zui/launcher/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v1

    sub-int/2addr p1, v1

    iget-object v1, v0, Lcom/zui/launcher/DeviceProfile;->inv:Lcom/zui/launcher/InvariantDeviceProfile;

    iget v1, v1, Lcom/zui/launcher/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {p1, v1}, Lcom/zui/launcher/DeviceProfile;->calculateCellWidth(II)I

    move-result v1

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v1, v0

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->h:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->c()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->i:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->g:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    :cond_1
    return-void
.end method

.method public resetSearch()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->f:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    return-void
.end method

.method public setContentVisibility(ILcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .locals 0

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p0, p1, p3}, Lcom/zui/launcher/anim/PropertySetter;->setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->j:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, p0, Lcom/zui/launcher/allapps/search/AppsSearchContainerLayout;->k:F

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroid/widget/EditText;->requestLayout()V

    return-void
.end method
