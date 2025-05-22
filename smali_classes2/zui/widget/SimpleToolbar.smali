.class public Lzui/widget/SimpleToolbar;
.super Landroid/view/ViewGroup;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/SimpleToolbar$b;,
        Lzui/widget/SimpleToolbar$c;,
        Lzui/widget/SimpleToolbar$LayoutParams;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Landroid/widget/ImageButton;

.field private C:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private D:Lzui/widget/SimpleToolbar$b;

.field private E:I

.field private F:I

.field private G:I

.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/widget/ImageButton;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Ljava/lang/CharSequence;

.field private t:Ljava/lang/CharSequence;

.field private u:I

.field private v:I

.field private w:Lcom/zui/internal/menu/MenuBuilder;

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzui/widget/SimpleToolbar$c;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->simpleToolbar:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lzui/platform/R$style;->Widget_Zui_SimpleToolbar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/SimpleToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x800013

    iput v0, p0, Lzui/widget/SimpleToolbar;->a:I

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/SimpleToolbar;->b:I

    const/4 v1, 0x0

    iput v1, p0, Lzui/widget/SimpleToolbar;->c:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lzui/widget/SimpleToolbar;->j:Z

    sget-object v2, Lzui/platform/R$styleable;->SimpleToolbar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_height:I

    iget p4, p0, Lzui/widget/SimpleToolbar;->b:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->b:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_gravity:I

    iget p4, p0, Lzui/widget/SimpleToolbar;->a:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->a:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_buttonGravity:I

    const/16 p4, 0x30

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->e:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_navigationButtonStyle:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->d:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_homeAsUpIndicator:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->h:Landroid/graphics/drawable/Drawable;

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_homeAsUpIndicatorRtl:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->i:Landroid/graphics/drawable/Drawable;

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_maxButtonHeight:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->f:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->m:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_subtitleTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->n:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMargin:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->r:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->q:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->p:I

    iput p3, p0, Lzui/widget/SimpleToolbar;->o:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginStart:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_0

    iput p3, p0, Lzui/widget/SimpleToolbar;->o:I

    :cond_0
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginEnd:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_1

    iput p3, p0, Lzui/widget/SimpleToolbar;->p:I

    :cond_1
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginTop:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_2

    iput p3, p0, Lzui/widget/SimpleToolbar;->q:I

    :cond_2
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_titleMarginBottom:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    if-lez p3, :cond_3

    iput p3, p0, Lzui/widget/SimpleToolbar;->r:I

    :cond_3
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_title:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p0, p3}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_4
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_subtitle:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    invoke-virtual {p0, p3}, Lzui/widget/SimpleToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_5
    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_collapseIcon:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/SimpleToolbar;->A:Landroid/graphics/drawable/Drawable;

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_actionMenuTextAppearance:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->E:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_contentInsetStart:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->F:I

    sget p3, Lzui/platform/R$styleable;->SimpleToolbar_android_contentInsetEnd:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/SimpleToolbar;->G:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Lcom/zui/internal/menu/MenuBuilder;

    invoke-direct {p2, p1}, Lcom/zui/internal/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->x:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    return-void
.end method

.method private A(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic a(Lzui/widget/SimpleToolbar;)Lzui/widget/SimpleToolbar$b;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->D:Lzui/widget/SimpleToolbar$b;

    return-object p0
.end method

.method static synthetic b(Lzui/widget/SimpleToolbar;Lzui/widget/SimpleToolbar$b;)Lzui/widget/SimpleToolbar$b;
    .locals 0

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->D:Lzui/widget/SimpleToolbar$b;

    return-object p1
.end method

.method static synthetic c(Lzui/widget/SimpleToolbar;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    return-object p0
.end method

.method static synthetic d(Lzui/widget/SimpleToolbar;Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzui/widget/SimpleToolbar;->g(Landroid/view/Menu;Landroid/view/MenuItem;)V

    return-void
.end method

.method static synthetic e(Lzui/widget/SimpleToolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->C:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic f(Lzui/widget/SimpleToolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    return-object p0
.end method

.method private g(Landroid/view/Menu;Landroid/view/MenuItem;)V
    .locals 3

    invoke-interface {p2}, Landroid/view/MenuItem;->getGroupId()I

    move-result p0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {p1, p0, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Landroid/view/MenuItem;->isVisible()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isCheckable()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isChecked()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    invoke-interface {p2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lzui/widget/SimpleToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->a:I

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private i(Landroid/view/MenuItem;ILandroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$c;

    iget-object v1, v1, Lzui/widget/SimpleToolbar$c;->a:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v1, v2, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v1, p0, Lzui/widget/SimpleToolbar;->F:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v1, p0, Lzui/widget/SimpleToolbar;->G:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lzui/widget/SimpleToolbar$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lzui/widget/SimpleToolbar$c;-><init>(Lzui/widget/SimpleToolbar;Landroid/view/MenuItem;ILandroid/view/View;)V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->x:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private j()V
    .locals 6

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    iget-object v3, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_1

    iget v4, p0, Lzui/widget/SimpleToolbar;->G:I

    iget v5, p0, Lzui/widget/SimpleToolbar;->F:I

    goto :goto_2

    :cond_1
    iget v4, p0, Lzui/widget/SimpleToolbar;->F:I

    iget v5, p0, Lzui/widget/SimpleToolbar;->G:I

    :goto_2
    invoke-direct {p0, v3, v4, v5}, Lzui/widget/SimpleToolbar;->z(Landroid/view/View;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget v1, p0, Lzui/widget/SimpleToolbar;->F:I

    invoke-direct {p0, v0, v2, v1}, Lzui/widget/SimpleToolbar;->z(Landroid/view/View;II)V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    goto :goto_3

    :cond_3
    iget v1, p0, Lzui/widget/SimpleToolbar;->F:I

    invoke-direct {p0, v0, v1, v2}, Lzui/widget/SimpleToolbar;->z(Landroid/view/View;II)V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_4
    return-void
.end method

.method private k()V
    .locals 5

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lzui/widget/SimpleToolbar;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lzui/widget/SimpleToolbar;->e:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    iput v1, v0, Lzui/widget/SimpleToolbar$LayoutParams;->a:I

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    new-instance v1, Lzui/widget/SimpleToolbar$a;

    invoke-direct {v1, p0}, Lzui/widget/SimpleToolbar$a;-><init>(Lzui/widget/SimpleToolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lzui/widget/SimpleToolbar;->e:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 5

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lzui/widget/SimpleToolbar;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lzui/widget/SimpleToolbar;->e:I

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private n(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAlignment(I)V

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget p0, p0, Lzui/widget/SimpleToolbar;->E:I

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private o(Landroid/view/View;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->p(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_4

    const/16 v3, 0x50

    if-eq v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_1
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_2

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_2
    :goto_1
    add-int/2addr p2, v3

    return p2

    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int/2addr v1, p2

    return v1

    :cond_4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr p0, p2

    return p0
.end method

.method private p(I)I
    .locals 1

    and-int/lit8 p1, p1, 0x70

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-eq p1, v0, :cond_0

    const/16 v0, 0x50

    if-eq p1, v0, :cond_0

    iget p0, p0, Lzui/widget/SimpleToolbar;->a:I

    and-int/lit8 p0, p0, 0x70

    return p0

    :cond_0
    return p1
.end method

.method private q(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private r(Ljava/lang/Object;)I
    .locals 1

    :try_start_0
    const-string p0, "com.zui.internal.menu.a"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mShowAsAction"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x2

    :goto_1
    return p0
.end method

.method private s(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private t(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private u(Landroid/view/View;II)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr p2, v1

    invoke-direct {p0, p1, p3}, Lzui/widget/SimpleToolbar;->o(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int v1, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {p1, p2, p0, v1, v2}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private v(Landroid/view/View;II)I
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p2, v1

    invoke-direct {p0, p1, p3}, Lzui/widget/SimpleToolbar;->o(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int v1, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {p1, v1, p0, p2, v2}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private w(Landroid/view/View;IIII)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    add-int/2addr p3, v0

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    iget p3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, v1

    add-int/2addr p3, p5

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method private x(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_1

    if-ltz p6, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_0
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_1
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private y(III)V
    .locals 11

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    if-eqz v0, :cond_4

    iget v0, p0, Lzui/widget/SimpleToolbar;->c:I

    if-lez v0, :cond_4

    if-ge p3, v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->r(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-direct {p0, v2}, Lzui/widget/SimpleToolbar;->n(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    move v7, p1

    move v9, p2

    invoke-direct/range {v5 .. v10}, Lzui/widget/SimpleToolbar;->w(Landroid/view/View;IIII)I

    iget-object v5, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p3

    iget v6, p0, Lzui/widget/SimpleToolbar;->c:I

    if-ge v5, v6, :cond_0

    invoke-direct {p0, v2, v3, v4}, Lzui/widget/SimpleToolbar;->i(Landroid/view/MenuItem;ILandroid/view/View;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p3, v5

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/MenuItem;

    iget-object p3, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private z(Landroid/view/View;II)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_0
    instance-of v0, p0, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz v0, :cond_1

    check-cast p0, Lzui/widget/SimpleToolbar$LayoutParams;

    iput p2, p0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    iput p3, p0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lzui/widget/SimpleToolbar;->generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lzui/widget/SimpleToolbar$LayoutParams;
    .locals 1

    new-instance p0, Lzui/widget/SimpleToolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lzui/widget/SimpleToolbar$LayoutParams;
    .locals 0

    instance-of p0, p1, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lzui/widget/SimpleToolbar$LayoutParams;

    check-cast p1, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Lzui/widget/SimpleToolbar$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lzui/widget/SimpleToolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0

    :cond_1
    new-instance p0, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getCollapseIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->t:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->s:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->x:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$c;

    iget-object v2, v1, Lzui/widget/SimpleToolbar$c;->b:Landroid/view/View;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lzui/widget/SimpleToolbar;->C:Landroid/widget/Toolbar$OnMenuItemClickListener;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lzui/widget/SimpleToolbar$c;->a:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/widget/Toolbar$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v9

    sub-int/2addr v4, v7

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getMinimumHeight()I

    move-result v7

    iget v10, v0, Lzui/widget/SimpleToolbar;->b:I

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ltz v7, :cond_1

    sub-int v10, p5, p3

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget-boolean v10, v0, Lzui/widget/SimpleToolbar;->j:Z

    if-eqz v1, :cond_3

    if-eqz v10, :cond_2

    iget-object v10, v0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->v(Landroid/view/View;II)I

    move-result v4

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_4

    iget-object v10, v0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->u(Landroid/view/View;II)I

    move-result v6

    :cond_5
    :goto_2
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, v0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz v1, :cond_6

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->u(Landroid/view/View;II)I

    move-result v6

    goto :goto_3

    :cond_6
    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->v(Landroid/view/View;II)I

    move-result v4

    :cond_7
    :goto_3
    iget-object v10, v0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_8

    invoke-direct {v0, v10, v6, v7}, Lzui/widget/SimpleToolbar;->u(Landroid/view/View;II)I

    move-result v6

    goto :goto_4

    :cond_8
    invoke-direct {v0, v10, v4, v7}, Lzui/widget/SimpleToolbar;->v(Landroid/view/View;II)I

    move-result v4

    :cond_9
    :goto_4
    iget-object v7, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v7

    iget-object v10, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-direct {v0, v10}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v10

    if-eqz v7, :cond_a

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v12, v11, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v13, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v13

    add-int/2addr v12, v13

    iget v11, v11, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v12, v11

    add-int/2addr v12, v3

    goto :goto_5

    :cond_a
    move v12, v3

    :goto_5
    if-eqz v10, :cond_b

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v13, v11, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v14, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    iget v11, v11, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v11

    add-int/2addr v12, v13

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    iget-object v13, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getTextSize()F

    move-result v13

    cmpg-float v11, v11, v13

    if-gez v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v13, Lzui/platform/R$dimen;->simple_toolbar_horizontal_subtitle_height:I

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    :cond_b
    if-nez v7, :cond_c

    if-eqz v10, :cond_1d

    :cond_c
    if-eqz v7, :cond_d

    iget-object v11, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    goto :goto_6

    :cond_d
    iget-object v11, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    :goto_6
    if-eqz v10, :cond_e

    iget-object v13, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    goto :goto_7

    :cond_e
    iget-object v13, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    :goto_7
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lzui/widget/SimpleToolbar$LayoutParams;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lzui/widget/SimpleToolbar$LayoutParams;

    if-eqz v7, :cond_f

    iget-object v14, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    if-gtz v14, :cond_11

    :cond_f
    if-eqz v10, :cond_10

    iget-object v14, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v14

    if-lez v14, :cond_10

    goto :goto_8

    :cond_10
    move v2, v3

    :cond_11
    :goto_8
    iget v14, v0, Lzui/widget/SimpleToolbar;->a:I

    and-int/lit8 v14, v14, 0x70

    const/16 v15, 0x30

    if-eq v14, v15, :cond_15

    const/16 v15, 0x50

    if-eq v14, v15, :cond_14

    sub-int v14, v5, v8

    sub-int/2addr v14, v9

    sub-int/2addr v14, v12

    div-int/lit8 v14, v14, 0x2

    iget v15, v11, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget v3, v0, Lzui/widget/SimpleToolbar;->q:I

    move/from16 p2, v6

    add-int v6, v15, v3

    if-ge v14, v6, :cond_12

    add-int v14, v15, v3

    goto :goto_9

    :cond_12
    sub-int/2addr v5, v9

    sub-int/2addr v5, v12

    sub-int/2addr v5, v14

    sub-int/2addr v5, v8

    iget v3, v11, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v6, v0, Lzui/widget/SimpleToolbar;->r:I

    add-int/2addr v3, v6

    if-ge v5, v3, :cond_13

    iget v3, v13, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v6

    sub-int/2addr v3, v5

    sub-int/2addr v14, v3

    const/4 v3, 0x0

    invoke-static {v3, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    :cond_13
    :goto_9
    add-int/2addr v8, v14

    goto :goto_a

    :cond_14
    move/from16 p2, v6

    sub-int/2addr v5, v9

    iget v3, v13, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v3

    iget v3, v0, Lzui/widget/SimpleToolbar;->r:I

    sub-int/2addr v5, v3

    sub-int v8, v5, v12

    goto :goto_a

    :cond_15
    move/from16 p2, v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    iget v5, v11, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v3, v5

    iget v5, v0, Lzui/widget/SimpleToolbar;->q:I

    add-int v8, v3, v5

    :goto_a
    if-eqz v1, :cond_19

    if-eqz v2, :cond_16

    iget v1, v0, Lzui/widget/SimpleToolbar;->o:I

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v4, v1

    if-eqz v7, :cond_17

    iget-object v1, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    iget-object v3, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v4, v3

    iget-object v5, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v6, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget v6, v0, Lzui/widget/SimpleToolbar;->p:I

    sub-int/2addr v3, v6

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v5, v1

    goto :goto_c

    :cond_17
    move v3, v4

    :goto_c
    if-eqz v10, :cond_18

    iget-object v1, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v5, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v5

    iget-object v5, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    sub-int v5, v4, v5

    iget-object v6, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v8

    iget-object v7, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v8, v4, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget v0, v0, Lzui/widget/SimpleToolbar;->p:I

    sub-int/2addr v4, v0

    iget v0, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    :cond_18
    if-eqz v2, :cond_1d

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    goto :goto_f

    :cond_19
    if-eqz v2, :cond_1a

    iget v3, v0, Lzui/widget/SimpleToolbar;->o:I

    const/4 v1, 0x0

    goto :goto_d

    :cond_1a
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_d
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v6, p2, v1

    if-eqz v7, :cond_1b

    iget-object v1, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    iget-object v3, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v6

    iget-object v4, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v8

    iget-object v5, v0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v6, v8, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    iget v5, v0, Lzui/widget/SimpleToolbar;->p:I

    add-int/2addr v3, v5

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v8, v4, v1

    goto :goto_e

    :cond_1b
    move v3, v6

    :goto_e
    if-eqz v10, :cond_1c

    iget-object v1, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v4, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v8, v4

    iget-object v4, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v6

    iget-object v5, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v8

    iget-object v7, v0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v7, v6, v8, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget v0, v0, Lzui/widget/SimpleToolbar;->p:I

    add-int v6, v4, v0

    iget v0, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    :cond_1c
    if-eqz v2, :cond_1d

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    :cond_1d
    :goto_f
    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v0

    const/4 v10, 0x0

    if-eqz v0, :cond_0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->f:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->x(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    invoke-static {v10, v2}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v2

    move v11, v1

    move v12, v2

    goto :goto_0

    :cond_0
    move v0, v10

    move v11, v0

    move v12, v11

    :goto_0
    iget-object v1, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->f:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->x(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v12

    :cond_1
    add-int v13, v10, v0

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    iget v6, v7, Lzui/widget/SimpleToolbar;->f:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lzui/widget/SimpleToolbar;->x(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {v7, v2}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_1

    :cond_2
    move v0, v10

    :goto_1
    add-int/2addr v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move v14, v10

    :goto_2
    if-ge v14, v6, :cond_5

    invoke-virtual {v7, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzui/widget/SimpleToolbar$LayoutParams;

    iget v0, v0, Lzui/widget/SimpleToolbar$LayoutParams;->a:I

    if-nez v0, :cond_4

    invoke-direct {v7, v15}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->w(Landroid/view/View;IIII)I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {v7, v15}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v11, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v1

    move v11, v0

    move v12, v1

    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_5
    iget v0, v7, Lzui/widget/SimpleToolbar;->q:I

    iget v1, v7, Lzui/widget/SimpleToolbar;->r:I

    add-int v6, v0, v1

    iget v0, v7, Lzui/widget/SimpleToolbar;->o:I

    iget v1, v7, Lzui/widget/SimpleToolbar;->p:I

    add-int v14, v0, v1

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    add-int v3, v13, v14

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v6

    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->w(Landroid/view/View;IIII)I

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->q(Landroid/view/View;)I

    move-result v1

    add-int v10, v0, v1

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    invoke-static {v12, v1}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v12

    move v15, v12

    move v12, v0

    goto :goto_4

    :cond_6
    move v15, v12

    move v12, v10

    :goto_4
    iget-object v0, v7, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    add-int v3, v13, v14

    add-int v5, v12, v6

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lzui/widget/SimpleToolbar;->w(Landroid/view/View;IIII)I

    move-result v0

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->s(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v12, v0

    iget-object v0, v7, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v15, v0}, Landroid/view/ViewGroup;->combineMeasuredStates(II)I

    move-result v15

    :cond_7
    add-int/2addr v13, v10

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, v7, Lzui/widget/SimpleToolbar;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v7, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Lzui/widget/SimpleToolbar;->A(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {v7, v8, v9, v13}, Lzui/widget/SimpleToolbar;->y(III)V

    invoke-direct/range {p0 .. p0}, Lzui/widget/SimpleToolbar;->j()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v15

    invoke-static {v1, v8, v2}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v15, 0x10

    invoke-static {v0, v9, v2}, Landroid/view/ViewGroup;->resolveSizeAndState(III)I

    move-result v0

    invoke-virtual {v7, v1, v0}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCollapseIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setCollapseIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setCollapseIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->k()V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SimpleToolbar;->c:I

    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->m()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->j:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->j:Z

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->m()V

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SimpleToolbar;->C:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lzui/widget/SimpleToolbar;->n:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    iget v0, p0, Lzui/widget/SimpleToolbar;->v:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->t:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/widget/SimpleToolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lzui/widget/SimpleToolbar;->m:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_0
    iget v0, p0, Lzui/widget/SimpleToolbar;->u:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Lzui/widget/SimpleToolbar;->s:Ljava/lang/CharSequence;

    return-void
.end method

.method public setupMenu()V
    .locals 4

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->l()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v1, v0}, Lcom/zui/internal/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Lzui/widget/SimpleToolbar;->r(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    invoke-direct {p0, v1}, Lzui/widget/SimpleToolbar;->n(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v1, v2, v3}, Lzui/widget/SimpleToolbar;->i(Landroid/view/MenuItem;ILandroid/view/View;)V

    goto :goto_1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    :cond_1
    iget-object v2, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->z:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->k()V

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    invoke-direct {p0, v0}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->B:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public updateMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v0, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/zui/internal/menu/MenuBuilder;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lzui/widget/SimpleToolbar;->w:Lcom/zui/internal/menu/MenuBuilder;

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lzui/widget/SimpleToolbar;->g(Landroid/view/Menu;Landroid/view/MenuItem;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public useDefaultNavigationIcon(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/SimpleToolbar;->j:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lzui/widget/SimpleToolbar;->m()V

    iget-object p1, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->t(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    invoke-direct {p0, p1}, Lzui/widget/SimpleToolbar;->h(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lzui/widget/SimpleToolbar;->g:Landroid/widget/ImageButton;

    iget-object p0, p0, Lzui/widget/SimpleToolbar;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
