.class public final Lcom/zui/launcher/widget/picker/WidgetsListHeader;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/zui/launcher/icons/cache/HandlerRunnable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:I

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Z

.field private j:Lcom/zui/launcher/widget/picker/c0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->a:Z

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->i:Z

    invoke-static {p1}, Lcom/zui/launcher/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/views/ActivityContext;

    invoke-interface {v1}, Lcom/zui/launcher/views/ActivityContext;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/zui/launcher/R$styleable;->WidgetsListRowHeader:[I

    invoke-virtual {p1, p2, v2, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    iget p2, v1, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->d:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/picker/WidgetsListHeader;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->i:Z

    return p0
.end method

.method private b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->d:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->d:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->a:Z

    if-eqz p0, :cond_0

    check-cast v0, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/icons/PlaceHolderIconDrawable;->animateIconUpdate(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private c(Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setIcon(Lcom/zui/launcher/model/PackageItemInfo;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setTitles(Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->verifyHighRes()V

    return-void
.end method

.method private d(Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {p0, v0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setIcon(Lcom/zui/launcher/model/PackageItemInfo;)V

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setTitles(Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;)V

    invoke-virtual {p1}, Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;->isWidgetListShown()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->verifyHighRes()V

    return-void
.end method

.method static synthetic f(Lcom/zui/launcher/model/WidgetItem;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/WidgetItem;->label:Ljava/lang/String;

    return-object p0
.end method

.method private setIcon(Lcom/zui/launcher/model/PackageItemInfo;)V
    .locals 3

    iget v0, p1, Lcom/zui/launcher/model/PackageItemInfo;->category:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/ItemInfoWithIcon;->newIcon(Landroid/content/Context;)Lcom/zui/launcher/icons/FastBitmapDrawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f08023c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->b(Landroid/graphics/drawable/Drawable;)V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private setTitles(Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    if-nez v1, :cond_0

    iget v1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget v1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    const v2, 0x7f100002

    const v3, 0x7f100001

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v1, :cond_1

    iget v6, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    if-lez v6, :cond_1

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v0, v2, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget p1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {v0, v3, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f120745

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget v1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->widgetsCount:I

    if-lez v1, :cond_2

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, p1, v5

    invoke-virtual {v0, v2, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget p1, p1, Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;->shortcutsCount:I

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setTitles(Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->f:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/zui/launcher/model/PackageItemInfo;

    iget-object v1, v1, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/zui/launcher/widget/model/WidgetsListBaseEntry;->mWidgets:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/zui/launcher/widget/picker/z;->a:Lcom/zui/launcher/widget/picker/z;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object p1

    const-string v1, ", "

    invoke-static {v1}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public applyFromItemInfoWithIcon(Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->c(Lcom/zui/launcher/widget/model/WidgetsListHeaderEntry;)V

    return-void
.end method

.method public applyFromItemInfoWithIcon(Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->d(Lcom/zui/launcher/widget/model/WidgetsListSearchHeaderEntry;)V

    return-void
.end method

.method public synthetic e(Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;Landroid/view/View;)V
    .locals 0

    iget-boolean p2, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->i:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p2}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    if-eqz p1, :cond_0

    iget-boolean p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->i:Z

    invoke-interface {p1, p0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;->onExpansionChange(Z)V

    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->j:Lcom/zui/launcher/widget/picker/c0;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, v0, Lcom/zui/launcher/widget/picker/c0;->a:[I

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->j:Lcom/zui/launcher/widget/picker/c0;

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/c0;->a:[I

    invoke-static {p1, p0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    return-object p1
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a0094

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->f:Landroid/widget/TextView;

    const v0, 0x7f0a0093

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->g:Landroid/widget/TextView;

    const v0, 0x7f0a03e7

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->h:Landroid/widget/CheckBox;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/zui/launcher/widget/picker/WidgetsListHeader$a;

    invoke-direct {v1, p0}, Lcom/zui/launcher/widget/picker/WidgetsListHeader$a;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListHeader;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public reapplyItemInfo(Lcom/zui/launcher/ItemInfoWithIcon;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->b:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->a:Z

    iget-object v0, p1, Lcom/zui/launcher/ItemInfoWithIcon;->bitmap:Lcom/zui/launcher/icons/BitmapInfo;

    iget-object v0, v0, Lcom/zui/launcher/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    check-cast p1, Lcom/zui/launcher/model/PackageItemInfo;

    invoke-direct {p0, p1}, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->setIcon(Lcom/zui/launcher/model/PackageItemInfo;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->a:Z

    :cond_0
    return-void
.end method

.method public setExpanded(Z)V
    .locals 0
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iput-boolean p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->i:Z

    return-void
.end method

.method public setListDrawableState(Lcom/zui/launcher/widget/picker/c0;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->j:Lcom/zui/launcher/widget/picker/c0;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->j:Lcom/zui/launcher/widget/picker/c0;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    return-void
.end method

.method public setOnExpandChangeListener(Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V
    .locals 1
    .param p1    # Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    new-instance v0, Lcom/zui/launcher/widget/picker/y;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/widget/picker/y;-><init>(Lcom/zui/launcher/widget/picker/WidgetsListHeader;Lcom/zui/launcher/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->b:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/zui/launcher/icons/cache/HandlerRunnable;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->b:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/zui/launcher/ItemInfoWithIcon;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ItemInfoWithIcon;

    invoke-virtual {v0}, Lcom/zui/launcher/ItemInfoWithIcon;->usingLowResIcon()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherAppState;->getIconCache()Lcom/zui/launcher/icons/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/zui/launcher/icons/IconCache;->updateIconInBackground(Lcom/zui/launcher/icons/IconCache$ItemInfoUpdateReceiver;Lcom/zui/launcher/ItemInfoWithIcon;)Lcom/zui/launcher/icons/cache/HandlerRunnable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/widget/picker/WidgetsListHeader;->b:Lcom/zui/launcher/icons/cache/HandlerRunnable;

    :cond_1
    return-void
.end method
