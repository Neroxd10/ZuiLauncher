.class public Lcom/google/android/material/snackbar/SnackbarContentLayout;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/google/android/material/snackbar/ContentViewCallback;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private actionView:Landroid/widget/Button;

.field private maxInlineActionWidth:I

.field private maxWidth:I

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/google/android/material/R$styleable;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_android_maxWidth:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    sget p2, Lcom/google/android/material/R$styleable;->SnackbarLayout_maxActionInlineWidth:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static updateTopBottomPadding(Landroid/view/View;II)V
    .locals 2

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isPaddingRelative(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingStart(Landroid/view/View;)I

    move-result v0

    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getPaddingEnd(Landroid/view/View;)I

    move-result v1

    invoke-static {p0, v0, p1, v1, p2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private updateViewsWithinLayout(III)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    if-eq v0, p3, :cond_1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_2

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-static {p0, p2, p3}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateTopBottomPadding(Landroid/view/View;II)V

    :goto_2
    return v1
.end method


# virtual methods
.method public animateContentIn(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v5, p1

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public animateContentOut(II)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v3, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    int-to-long v5, p1

    invoke-virtual {p2, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public getActionView()Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    return-object p0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    sget v0, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    sget v0, Lcom/google/android/material/R$id;->snackbar_action:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget v0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxWidth:I

    if-le v0, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical_2lines:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$dimen;->design_snackbar_padding_vertical:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->messageView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    iget v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-lez v5, :cond_2

    iget-object v5, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result v5

    iget v6, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->maxInlineActionWidth:I

    if-le v5, v6, :cond_2

    sub-int v1, v0, v1

    invoke-direct {p0, v4, v0, v1}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0, v0}, Lcom/google/android/material/snackbar/SnackbarContentLayout;->updateViewsWithinLayout(III)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    move v3, v4

    :cond_4
    if-eqz v3, :cond_5

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method
