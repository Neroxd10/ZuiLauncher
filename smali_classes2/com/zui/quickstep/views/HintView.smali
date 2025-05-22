.class public Lcom/zui/quickstep/views/HintView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source ""


# instance fields
.field private a:Lcom/zui/launcher/BaseActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    iget-object p1, p0, Lcom/zui/quickstep/views/HintView;->a:Lcom/zui/launcher/BaseActivity;

    if-eqz p1, :cond_0

    new-instance p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p1, p2, v0}, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;-><init>(II)V

    iget-object p2, p0, Lcom/zui/quickstep/views/HintView;->a:Lcom/zui/launcher/BaseActivity;

    invoke-virtual {p2}, Lcom/zui/launcher/BaseActivity;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p2

    iget p2, p2, Lcom/zui/launcher/DeviceProfile;->widthPx:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07065a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setActivity(Lcom/zui/launcher/BaseActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/zui/launcher/BaseActivity;",
            ">(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/quickstep/views/HintView;->a:Lcom/zui/launcher/BaseActivity;

    return-void
.end method
