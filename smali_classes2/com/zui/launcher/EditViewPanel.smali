.class public Lcom/zui/launcher/EditViewPanel;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/zui/launcher/Insettable;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Z

.field private e:Landroid/content/res/ColorStateList;

.field private f:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/zui/launcher/EditViewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/EditViewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/zui/launcher/EditViewPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f060291

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/EditViewPanel;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f060292

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/EditViewPanel;->f:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public focusFirstChild()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/Launcher;

    const v1, 0x7f0a00c9

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/launcher/EditViewPanel$a;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/EditViewPanel$a;-><init>(Lcom/zui/launcher/EditViewPanel;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00ca

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/launcher/EditViewPanel$b;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/EditViewPanel$b;-><init>(Lcom/zui/launcher/EditViewPanel;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0a00c8

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    new-instance v2, Lcom/zui/launcher/EditViewPanel$c;

    invoke-direct {v2, p0, v0}, Lcom/zui/launcher/EditViewPanel$c;-><init>(Lcom/zui/launcher/EditViewPanel;Lcom/zui/launcher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCompoundBounds(Landroid/widget/TextView;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v3, p1, [I

    const v4, 0x10100a7

    aput v4, v3, v2

    aput-object v3, v1, v2

    sget-object v3, Landroid/util/StateSet;->WILD_CARD:[I

    aput-object v3, v1, p1

    new-array v0, v0, [I

    aput p3, v0, v2

    aput p2, v0, p1

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    iget-object p0, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v3, v0, Lcom/zui/launcher/DeviceProfile;->isLandscape:Z

    if-eqz v3, :cond_0

    const v3, 0x7f0705a2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f070306

    goto :goto_0

    :cond_0
    const v3, 0x7f0705a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x7f070305

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iget v0, v0, Lcom/zui/launcher/DeviceProfile;->widgetListPanelHeight:I

    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-lez p1, :cond_1

    const v0, 0x7f070310

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sub-int/2addr p1, v0

    :cond_1
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p1

    invoke-virtual {p0, v4, v3, v4, p1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTextColor(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/zui/launcher/EditViewPanel;->d:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060154

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060156

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/launcher/EditViewPanel;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    const v4, 0x3affffff

    invoke-virtual {v3, v2, v1, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/launcher/EditViewPanel;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2, v1, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/launcher/EditViewPanel;->e:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object p0, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1, v2, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f060153

    invoke-virtual {p1, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060155

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/launcher/EditViewPanel;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->a:Landroid/widget/TextView;

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x3a000000

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zui/launcher/EditViewPanel;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/zui/launcher/EditViewPanel;->f:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v3, p1, v0}, Lcom/zui/launcher/EditViewPanel;->setCompoundBounds(Landroid/widget/TextView;II)V

    iget-object p0, p0, Lcom/zui/launcher/EditViewPanel;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v1, v2, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method
