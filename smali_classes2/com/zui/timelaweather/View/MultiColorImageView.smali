.class public Lcom/zui/timelaweather/View/MultiColorImageView;
.super Landroid/widget/ImageView;
.source ""

# interfaces
.implements Lcom/zui/timelaweather/View/MultiColorInterface;


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/timelaweather/View/MultiColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/timelaweather/View/MultiColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/timelaweather/View/MultiColorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->a:I

    sget-object v0, Lcom/zui/timelaweather/R$styleable;->MultiColorImageView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/zui/timelaweather/R$styleable;->MultiColorImageView_image_src_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->b:Landroid/graphics/drawable/Drawable;

    sget p2, Lcom/zui/timelaweather/R$styleable;->MultiColorImageView_image_src_dark:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getDarkFlag()I
    .locals 0

    iget p0, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->a:I

    return p0
.end method

.method public setDarkOrLight(Z)V
    .locals 2

    iget v0, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->a:I

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/timelaweather/View/MultiColorImageView;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method
