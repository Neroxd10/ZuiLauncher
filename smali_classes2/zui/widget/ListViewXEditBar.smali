.class public Lzui/widget/ListViewXEditBar;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:Lzui/widget/ListViewX;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/PopupWindow;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:[I

.field private m:I

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/ListViewXEditBar;->k:Z

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lzui/widget/ListViewXEditBar;->l:[I

    check-cast p1, Lzui/widget/ListViewX;

    iput-object p1, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {p1}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    sget p2, Lzui/platform/R$id;->listviewx_cancel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->g:Landroid/widget/ImageView;

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getCustomizedLeftTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/widget/ListViewXEditBar;->setLeftTextColor(Landroid/content/res/ColorStateList;)V

    sget p2, Lzui/platform/R$id;->listviewx_select_all:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getCustomizedRightTextColor()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lzui/widget/ListViewXEditBar;->setRightTextColor(Landroid/content/res/ColorStateList;)V

    sget p2, Lzui/platform/R$id;->listviewx_edit_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->i:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Lzui/widget/ListViewXEditBar;->updateTitle(I)V

    sget p2, Lzui/platform/R$id;->listviewx_edit_bar_divider:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->j:Landroid/view/View;

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->getExtraTitlePaddingStartInEditMode()I

    move-result p2

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {v1}, Lzui/widget/ListViewX;->getExtraTitlePaddingEndInEditMode()I

    move-result v1

    if-gtz p2, :cond_0

    if-lez v1, :cond_3

    :cond_0
    iget-object v2, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result p2

    :goto_0
    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    :goto_1
    iget-object v4, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, p2, v3, v1, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lzui/platform/R$string;->listview_x_title_select_all:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->a:Ljava/lang/String;

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lzui/platform/R$string;->listview_x_title_unselect_all:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->b:Ljava/lang/String;

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->g:Landroid/widget/ImageView;

    new-instance v1, Lzui/widget/ListViewXEditBar$a;

    invoke-direct {v1, p0}, Lzui/widget/ListViewXEditBar$a;-><init>(Lzui/widget/ListViewXEditBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    new-instance v1, Lzui/widget/ListViewXEditBar$b;

    invoke-direct {v1, p0}, Lzui/widget/ListViewXEditBar$b;-><init>(Lzui/widget/ListViewXEditBar;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {p2}, Lzui/widget/ListViewX;->j0()Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/ListViewXEditBar;->n:Z

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    invoke-virtual {v1, v2, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lzui/widget/ListViewXEditBar;->m:I

    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->d()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic a(Lzui/widget/ListViewXEditBar;)Lzui/widget/ListViewX;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    return-object p0
.end method

.method static synthetic b(Lzui/widget/ListViewXEditBar;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    iget-boolean p0, p0, Lzui/widget/ListViewXEditBar;->k:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Lzui/widget/ListViewX;->A0(Z)V

    return-void
.end method

.method private d()V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/ListViewXEditBar;->m:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-boolean v0, p0, Lzui/widget/ListViewXEditBar;->n:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lzui/platform/R$dimen;->text_size_title_zui_toolbar_horizontal:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/ListViewXEditBar;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->b:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    return-object p0
.end method

.method public refresh()V
    .locals 3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Lzui/widget/ListViewXEditBar;->m:I

    invoke-virtual {v1, v0, p0}, Landroid/widget/PopupWindow;->update(II)V

    return-void
.end method

.method public setEditBarBackground(I)V
    .locals 3

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->primary_colorab_text_default_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->listview_x_color_edit_title_option_text_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$drawable;->ic_color_clear_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->f:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    return-void
.end method

.method public setLeftButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->g:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setLeftTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->g:Landroid/widget/ImageView;

    return-void
.end method

.method public setRightButtonEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setRightTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->h:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->l:[I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationInWindow([I)V

    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->d()V

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    iget-object v2, p0, Lzui/widget/ListViewXEditBar;->l:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget p0, p0, Lzui/widget/ListViewXEditBar;->m:I

    sub-int/2addr v2, p0

    const/16 p0, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p0, v3, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public show(II)V
    .locals 2

    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->d()V

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->e:Landroid/widget/PopupWindow;

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    const/16 v1, 0x30

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method public showDivider(Z)V
    .locals 0

    iget-object p0, p0, Lzui/widget/ListViewXEditBar;->j:Landroid/view/View;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public updateTitle(I)V
    .locals 6

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {v0, p1}, Lzui/widget/ListViewX;->U(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-le p1, v2, :cond_0

    sget v3, Lzui/platform/R$string;->listview_x_title_items_selected:I

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    if-lez p1, :cond_1

    sget v3, Lzui/platform/R$string;->listview_x_title_one_item_selected:I

    goto :goto_0

    :cond_1
    sget v3, Lzui/platform/R$string;->listview_x_title_no_item_selected:I

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    iget-object v3, p0, Lzui/widget/ListViewXEditBar;->c:Lzui/widget/ListViewX;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v3

    sub-int/2addr v0, v3

    if-ne p1, v0, :cond_3

    iput-boolean v2, p0, Lzui/widget/ListViewXEditBar;->k:Z

    goto :goto_2

    :cond_3
    iput-boolean v1, p0, Lzui/widget/ListViewXEditBar;->k:Z

    :goto_2
    invoke-direct {p0}, Lzui/widget/ListViewXEditBar;->e()V

    return-void
.end method
