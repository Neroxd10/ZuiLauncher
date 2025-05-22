.class public Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/SearchUiManager;
.implements Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
.implements Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;
.implements Lcom/zui/launcher/Insettable;


# instance fields
.field private final a:Lcom/zui/launcher/Launcher;

.field private final b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

.field private final c:Landroid/text/SpannableStringBuilder;

.field private d:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

.field private e:Lcom/zui/launcher/allapps/AllAppsContainerView;

.field private final f:F

.field private final g:F

.field private h:Lcom/zui/launcher/ExtendedEditText;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/zui/launcher/allapps/search/RecommendRowView;

.field private m:Landroid/widget/ImageView;

.field private n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    new-instance p1, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-direct {p1}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->f:F

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->g:F

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->i:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->j:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/AllAppsContainerView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/allapps/search/RecommendRowView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)Lcom/zui/launcher/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    return-object p0
.end method

.method private g()V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget-boolean v1, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v3, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v4, -0x1

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iget-boolean v3, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07008b

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07008a

    :goto_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getAppViewsInsetsWithMarginH()Landroid/graphics/Rect;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0700bf

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v7, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->k:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v7

    add-int/2addr v4, v7

    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isSeascape()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, v5, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    iget v0, v5, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_2
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    move v0, v6

    :goto_1
    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    const/4 v4, 0x1

    const/16 v5, 0x8

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v4

    goto :goto_2

    :cond_3
    move v2, v6

    :goto_2
    iget-object v7, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v7}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getScrollBar()Lcom/zui/launcher/views/RecyclerViewFastScroller;

    move-result-object v7

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v6

    :goto_3
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_6

    goto :goto_4

    :cond_6
    move v4, v6

    :goto_4
    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v5, v6

    :goto_5
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    add-int v4, v3, v0

    invoke-virtual {v2, v4, v6, v3, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_8

    const v4, 0x7f0700b2

    goto :goto_6

    :cond_8
    const v4, 0x7f0700b1

    :goto_6
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v4, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_9
    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    iget-object v4, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v1, :cond_a

    const v2, 0x7f070091

    goto :goto_7

    :cond_a
    const v2, 0x7f070090

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_b

    const v3, 0x7f070093

    goto :goto_8

    :cond_b
    const v3, 0x7f070092

    :goto_8
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-eqz v1, :cond_c

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070095

    goto :goto_9

    :cond_c
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070094

    :goto_9
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v3, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    invoke-virtual {v3, v0, v1, v2, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_d
    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    if-eqz v1, :cond_e

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700c7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v3, v1, v6, v2, v6}, Landroid/view/ViewGroup;->setPadding(IIII)V

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const v1, 0x7f0700d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->i()V

    const v1, 0x7f0a007d

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_e

    const v2, 0x7f0700d0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0700d1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v2, v6, v0, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_e
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->setChildrenVisibility(Z)V

    :cond_f
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v1

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->k:Landroid/widget/RelativeLayout;

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

    return-void
.end method

.method private h()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onSearchResultsChanged()V

    return-void
.end method

.method private i()V
    .locals 6

    new-instance v0, Lcom/zui/launcher/allapps/AllTaskIconAdapter;

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/zui/launcher/allapps/AllTaskIconAdapter;-><init>(Lcom/zui/launcher/Launcher;)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    :goto_0
    new-instance v2, Lcom/zui/launcher/RecyclerViewGridLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/zui/launcher/RecyclerViewGridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    new-instance v3, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;

    invoke-direct {v3, p0, v0, v1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$e;-><init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;Lcom/zui/launcher/allapps/AllTaskIconAdapter;I)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1, v2, p0}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->setup(Lcom/zui/launcher/BaseActivity;Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private setChildrenVisibility(Z)V
    .locals 4

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    const v0, 0x7f0a007f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_8
    return-void
.end method


# virtual methods
.method public clearSearchResult()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->onClearSearchResult()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/TaskIconRecyclerView;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public getScrollRangeDelta(Landroid/graphics/Rect;)F
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->f:F

    neg-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->g:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iget p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->f:F

    add-float/2addr p1, p0

    return p1
.end method

.method public getSearchInput()Lcom/zui/launcher/ExtendedEditText;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    return-object p0
.end method

.method public initialize(Lcom/zui/launcher/allapps/AllAppsContainerView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getApps()Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    iput-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    new-instance v1, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/zui/launcher/allapps/search/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    iget-object v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1, v1, v0, v2, p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->initialize(Lcom/zui/launcher/allapps/search/SearchAlgorithm;Lcom/zui/launcher/ExtendedEditText;Lcom/zui/launcher/Launcher;Lcom/zui/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public moveOverlayToWorkspace()V
    .locals 2

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zui.launcher.action.overlaytoworkspace"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.zui.launcher.permission.SEND_MESSAGE"

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onAppsUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->refreshSearchResult()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/RecommendRowView;->setPredictedApps()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->addUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getAppsView()Lcom/zui/launcher/allapps/AllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/allapps/AllAppsContainerView;->getAppsStore()Lcom/zui/launcher/allapps/AllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/zui/launcher/allapps/AllAppsStore;->removeUpdateListener(Lcom/zui/launcher/allapps/AllAppsStore$OnUpdateListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a01e9

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->k:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0336

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ExtendedEditText;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    const v0, 0x7f0a00c5

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->i:Landroid/widget/TextView;

    const v0, 0x7f0a00d2

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->j:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    new-instance v1, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$a;-><init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Lcom/zui/launcher/ExtendedEditText;->setOnFocusChangedListener(Lcom/zui/launcher/ExtendedEditText$OnFocusChangedListener;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h:Lcom/zui/launcher/ExtendedEditText;

    new-instance v1, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$b;-><init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$c;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$c;-><init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$d;

    invoke-direct {v1, p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout$d;-><init>(Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02e3

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/search/RecommendRowView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->m:Landroid/widget/ImageView;

    const v0, 0x7f0a007e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    iput-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->n:Lcom/zui/launcher/allapps/TaskIconRecyclerView;

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->setChildrenVisibility(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

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

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setTranslationX(F)V

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

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->d:Lcom/zui/launcher/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/zui/launcher/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)Z

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->h()V

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->e:Lcom/zui/launcher/allapps/AllAppsContainerView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/AllAppsContainerView;->setLastSearchQuery(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

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

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

    invoke-virtual {p0}, Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;->focusSearchField()V

    :cond_1
    return-void
.end method

.method public resetSearch()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->b:Lcom/zui/launcher/allapps/search/AllAppsSearchBarController;

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

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->f:F

    neg-float v1, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    iget v2, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->g:F

    sub-float/2addr p1, v2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {p0}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->g()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public showTaskViews(Z)V
    .locals 3

    sget-boolean v0, Lcom/zui/launcher/config/BaseFlags;->MULTI_WITH_RECENTS_ALLAPPS:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    if-eqz p1, :cond_1

    sget-object v2, Lcom/zui/launcher/LauncherState;->ALL_APPS:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/LauncherStateManager;->resetLastStableState()V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/zui/launcher/LauncherState;->NORMAL:Lcom/zui/launcher/LauncherState;

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/LauncherStateManager;->goToState(Lcom/zui/launcher/LauncherState;Z)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->setChildrenVisibility(Z)V

    return-void
.end method

.method public updateZuiDots(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/zui/launcher/util/ShortcutUserKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/zui/launcher/util/ShortcutUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/zui/launcher/util/ShortcutUserKey;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v3, p0, Lcom/zui/launcher/allapps/search/XAppsSearchContainerLayout;->l:Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Lcom/zui/launcher/WorkspaceIconCompat;

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/AppInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v0, v4}, Lcom/zui/launcher/util/ShortcutUserKey;->updateFromAppInfo(Lcom/zui/launcher/AppInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    :goto_1
    check-cast v3, Lcom/zui/launcher/WorkspaceIconCompat;

    invoke-interface {v3, v4, v6}, Lcom/zui/launcher/WorkspaceIconCompat;->applyDotState(Lcom/zui/launcher/ItemInfo;Z)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lcom/zui/launcher/util/ShortcutUserKey;->resetClassName()V

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
