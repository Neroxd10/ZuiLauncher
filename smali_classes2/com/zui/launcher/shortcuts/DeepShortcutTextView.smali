.class public Lcom/zui/launcher/shortcuts/DeepShortcutTextView;
.super Lcom/zui/launcher/BubbleTextView;
.source ""


# instance fields
.field private final J:Landroid/graphics/Rect;

.field private final K:I

.field private L:Z

.field private M:Landroid/widget/Toast;

.field private N:Z

.field private O:Landroid/graphics/drawable/Drawable;

.field private final P:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->J:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->L:Z

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->P:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0705c1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const p3, 0x7f07024c

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    const p3, 0x7f07024d

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->K:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->u(Z)V

    return-void
.end method

.method private t()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->P:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->K:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->P:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->K:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->P:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private u(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->N:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->N:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0801b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->t()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->M:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1204b2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1204b1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zui/launcher/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->M:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method protected applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method protected drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->N:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/zui/launcher/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->O:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/BubbleTextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->J:Landroid/graphics/Rect;

    iget p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->K:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->J:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->J:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->t()V

    return-void
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->L:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->v()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->performClick()Z

    move-result p0

    return p0
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/zui/launcher/shortcuts/DeepShortcutTextView;->u(Z)V

    :cond_0
    return-void
.end method
