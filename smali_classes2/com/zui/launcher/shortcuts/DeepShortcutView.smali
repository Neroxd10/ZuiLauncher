.class public Lcom/zui/launcher/shortcuts/DeepShortcutView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field private static final f:Landroid/graphics/Point;


# instance fields
.field private final a:Landroid/graphics/drawable/Drawable;

.field private b:Lcom/zui/launcher/BubbleTextView;

.field private c:Landroid/view/View;

.field private d:Lcom/zui/launcher/WorkspaceItemInfo;

.field private e:Landroid/content/pm/ShortcutInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    sput-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->f:Landroid/graphics/Point;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/zui/launcher/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/shortcuts/DeepShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->a:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private a()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x101042c

    invoke-static {v1, v2}, Lcom/zui/launcher/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_0
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v3, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->a:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v3, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public applyShortcutInfo(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;Lcom/zui/launcher/popup/PopupContainerWithArrow;)V
    .locals 3

    iput-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->d:Lcom/zui/launcher/WorkspaceItemInfo;

    iput-object p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->e:Landroid/content/pm/ShortcutInfo;

    iget-object p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2, p1}, Lcom/zui/launcher/BubbleTextView;->applyFromWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p1}, Lcom/zui/launcher/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Lcom/zui/launcher/icons/FastBitmapDrawable;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/zui/launcher/icons/FastBitmapDrawable;

    invoke-virtual {p2, v0}, Lcom/zui/launcher/icons/FastBitmapDrawable;->setPressedScaleEnabled(Z)V

    :cond_0
    iget-object p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->c:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->e:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p1

    iget-object p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    iget-object v1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr p2, v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    int-to-float p2, p2

    cmpg-float p2, v1, p2

    if-gtz p2, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-object p2, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->e:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    :goto_0
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->d:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/zui/launcher/popup/PopupContainerWithArrow;->getItemClickListener()Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getBubbleText()Lcom/zui/launcher/BubbleTextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    return-object p0
.end method

.method public getDetail()Landroid/content/pm/ShortcutInfo;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->e:Landroid/content/pm/ShortcutInfo;

    return-object p0
.end method

.method public getFinalInfo()Lcom/zui/launcher/WorkspaceItemInfo;
    .locals 2

    new-instance v0, Lcom/zui/launcher/WorkspaceItemInfo;

    iget-object v1, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->d:Lcom/zui/launcher/WorkspaceItemInfo;

    invoke-direct {v0, v1}, Lcom/zui/launcher/WorkspaceItemInfo;-><init>(Lcom/zui/launcher/WorkspaceItemInfo;)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getModel()Lcom/zui/launcher/LauncherModel;

    move-result-object v1

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->e:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v1, v0, p0}, Lcom/zui/launcher/LauncherModel;->updateAndBindWorkspaceItem(Lcom/zui/launcher/WorkspaceItemInfo;Landroid/content/pm/ShortcutInfo;)V

    return-object v0
.end method

.method public getIconCenter()Landroid/graphics/Point;
    .locals 2

    sget-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->f:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->f:Landroid/graphics/Point;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    sget-object v1, Lcom/zui/launcher/shortcuts/DeepShortcutView;->f:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Point;->x:I

    :cond_0
    sget-object p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->f:Landroid/graphics/Point;

    return-object p0
.end method

.method public getIconView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->c:Landroid/view/View;

    return-object p0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a00cb

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/BubbleTextView;

    iput-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->b:Lcom/zui/launcher/BubbleTextView;

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->a()V

    return-void
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->a()V

    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    invoke-direct {p0}, Lcom/zui/launcher/shortcuts/DeepShortcutView;->a()V

    return-void
.end method

.method public setWillDrawIcon(Z)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->c:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public willDrawIcon()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/shortcuts/DeepShortcutView;->c:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
