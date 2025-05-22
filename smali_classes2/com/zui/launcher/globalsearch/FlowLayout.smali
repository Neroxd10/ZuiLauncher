.class public Lcom/zui/launcher/globalsearch/FlowLayout;
.super Landroid/widget/RelativeLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;,
        Lcom/zui/launcher/globalsearch/FlowLayout$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/launcher/globalsearch/FlowLayout$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x41700000    # 15.0f

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->b:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    const/4 v1, 0x0

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->f:I

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->i:I

    iput v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->j:I

    const/4 v2, 0x4

    iput v2, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->k:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->l:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v3, Lcom/zui/launcher/R$styleable;->FlowLayoutAttrs:[I

    invoke-virtual {p1, p2, v3, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_7

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result p3

    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    const/high16 v3, 0x41000000    # 8.0f

    invoke-direct {p0, v3}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x6

    const/high16 v4, 0x41600000    # 14.0f

    if-ne p3, v3, :cond_1

    invoke-direct {p0, v4}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->b:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;->f(F)I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->f:I

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne p3, v3, :cond_3

    const/high16 v3, -0x1000000

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->g:I

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    const v3, 0x7f08013b

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->h:I

    goto :goto_1

    :cond_4
    if-ne p3, v2, :cond_5

    invoke-direct {p0, v4}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->i:I

    goto :goto_1

    :cond_5
    const/4 v3, 0x5

    if-ne p3, v3, :cond_6

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {p0, v3}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result v3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->j:I

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/globalsearch/FlowLayout;)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    return p0
.end method

.method private b(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "en_US"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string p2, "..."

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0x17

    if-le p0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xa

    if-le p0, v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/globalsearch/FlowLayout$b;-><init>(Lcom/zui/launcher/globalsearch/FlowLayout;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    return-void
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-direct {v0, p0}, Lcom/zui/launcher/globalsearch/FlowLayout$b;-><init>(Lcom/zui/launcher/globalsearch/FlowLayout;)V

    iput-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    return-void
.end method

.method private f(F)I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public addView(Ljava/lang/String;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/globalsearch/FlowLayout;->addViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V

    return-void
.end method

.method public addViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->l:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2, v0}, Lcom/zui/launcher/globalsearch/FlowLayout;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    iget v4, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->f:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    iget v3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->g:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    iget v3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->i:I

    iget v4, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->j:I

    invoke-virtual {v1, v3, v4, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget v3, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->h:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p2, :cond_0

    new-instance v3, Lcom/zui/launcher/globalsearch/FlowLayout$a;

    invoke-direct {v3, p0, p2, v2}, Lcom/zui/launcher/globalsearch/FlowLayout$a;-><init>(Lcom/zui/launcher/globalsearch/FlowLayout;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    iget-object p4, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/zui/launcher/globalsearch/FlowLayout$b;

    const/4 p5, 0x3

    if-gt p3, p5, :cond_0

    invoke-virtual {p4, p1, p2}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->d(II)V

    invoke-virtual {p4}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c()I

    move-result p4

    add-int/2addr p2, p4

    iget p4, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->b:I

    add-int/2addr p2, p4

    goto :goto_2

    :cond_0
    invoke-static {p4}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->a(Lcom/zui/launcher/globalsearch/FlowLayout$b;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/View;

    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/FlowLayout;->e()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/high16 v7, -0x80000000

    const/high16 v8, 0x40000000    # 2.0f

    if-ne v2, v8, :cond_0

    move v9, v7

    goto :goto_1

    :cond_0
    move v9, v2

    :goto_1
    invoke-static {v0, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    if-ne v3, v8, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v6, v9, v7}, Landroid/view/View;->measure(II)V

    iget-object v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    if-nez v7, :cond_2

    new-instance v7, Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-direct {v7, p0}, Lcom/zui/launcher/globalsearch/FlowLayout$b;-><init>(Lcom/zui/launcher/globalsearch/FlowLayout;)V

    iput-object v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v8, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    add-int/2addr v8, v7

    iput v8, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    if-gt v8, v0, :cond_3

    iget-object v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-virtual {v7, v6}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->b(Landroid/view/View;)V

    iget v6, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    iget v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/zui/launcher/globalsearch/FlowLayout;->d()V

    iget-object v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-virtual {v7, v6}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->b(Landroid/view/View;)V

    iget v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v7, v6

    iput v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    iget v6, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->e:I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    iget-object v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->d:Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->k:I

    if-lt v0, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_4
    move v0, v4

    :goto_5
    if-ge v4, v1, :cond_7

    iget-object v2, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->c:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/globalsearch/FlowLayout$b;

    invoke-virtual {v2}, Lcom/zui/launcher/globalsearch/FlowLayout$b;->c()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_7
    iget v2, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->b:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {v0, p2}, Landroid/widget/RelativeLayout;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->h:I

    return-void
.end method

.method public setFlowLayout(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/FlowLayout;->addViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->a:I

    return-void
.end method

.method public setItemSize(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->f:I

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->g:I

    return-void
.end method

.method public setTextPaddingH(I)V
    .locals 0

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->i:I

    return-void
.end method

.method public setTextPaddingV(I)V
    .locals 0

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->j:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/FlowLayout;->f(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->f:I

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/globalsearch/FlowLayout;->b(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/globalsearch/FlowLayout;->b:I

    return-void
.end method

.method public setView(Ljava/lang/String;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0, p2}, Lcom/zui/launcher/globalsearch/FlowLayout;->setViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V

    return-void
.end method

.method public setViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/globalsearch/FlowLayout;->addViews(Ljava/util/List;Lcom/zui/launcher/globalsearch/FlowLayout$OnItemClickListener;)V

    return-void
.end method
