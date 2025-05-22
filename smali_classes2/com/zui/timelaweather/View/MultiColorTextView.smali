.class public Lcom/zui/timelaweather/View/MultiColorTextView;
.super Landroid/widget/TextView;
.source ""

# interfaces
.implements Lcom/zui/timelaweather/View/MultiColorInterface;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/MultiColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/MultiColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/timelaweather/View/MultiColorTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->a:I

    iput v0, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->b:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->c:I

    sget-object v1, Lcom/zui/timelaweather/R$styleable;->MultiColorTextView:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/zui/timelaweather/R$styleable;->MultiColorTextView_text_color_light:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->a:I

    sget p2, Lcom/zui/timelaweather/R$styleable;->MultiColorTextView_text_color_dark:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->b:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDarkFlag()I
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->c:I

    return p0
.end method

.method public setDarkOrLight(Z)V
    .locals 2

    iget v0, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->c:I

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->b:I

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/zui/timelaweather/View/MultiColorTextView;->a:I

    if-eq v0, p1, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    return-void
.end method
