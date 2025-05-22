.class public Lzui/appcompat/widget/Toolbar;
.super Lzui/util/ReflectClass;
.source ""


# static fields
.field private static h:Lzui/appcompat/widget/Toolbar;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Landroid/widget/ImageButton;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Lzui/appcompat/widget/ActionMenuView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzui/appcompat/widget/Toolbar;

    invoke-direct {v0}, Lzui/appcompat/widget/Toolbar;-><init>()V

    sput-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "android.support.v7.widget.Toolbar"

    invoke-direct {p0, v0}, Lzui/util/ReflectClass;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lzui/appcompat/widget/Toolbar;)Lzui/appcompat/widget/ActionMenuView;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->g:Lzui/appcompat/widget/ActionMenuView;

    return-object p0
.end method

.method static synthetic b(Lzui/appcompat/widget/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->g()V

    return-void
.end method

.method private c()Landroid/widget/ImageButton;
    .locals 1

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    const-string v0, "mNavButtonView"

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->hasHiddenField(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private d()Landroid/widget/TextView;
    .locals 1

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    const-string v0, "mSubtitleTextView"

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->hasHiddenField(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private e()Landroid/widget/TextView;
    .locals 1

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    const-string v0, "mTitleTextView"

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->hasHiddenField(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lzui/util/ReflectClass;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private f()V
    .locals 3

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lzui/platform/R$dimen;->tool_bar_padding_end_zui:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mPaddingRight"

    invoke-virtual {v0, v2, v1}, Lzui/util/ReflectClass;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mUserPaddingRight"

    invoke-virtual {v0, v2, v1}, Lzui/util/ReflectClass;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "mUserPaddingEnd"

    invoke-virtual {v0, v1, p0}, Lzui/util/ReflectClass;->setSupperClassConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const-string v1, "mMenuView"

    invoke-virtual {v0, v1}, Lzui/util/ReflectClass;->hasHiddenField(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    invoke-virtual {v0, v1}, Lzui/util/ReflectClass;->getHiddenConstObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lzui/appcompat/widget/ActionMenuView;

    invoke-direct {v1}, Lzui/appcompat/widget/ActionMenuView;-><init>()V

    iput-object v1, p0, Lzui/appcompat/widget/Toolbar;->g:Lzui/appcompat/widget/ActionMenuView;

    invoke-virtual {v1, v0}, Lzui/appcompat/widget/ActionMenuView;->setRealObject(Ljava/lang/Object;)V

    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->g:Lzui/appcompat/widget/ActionMenuView;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lzui/appcompat/widget/ActionMenuView;->setParentContext(Landroid/content/Context;)V

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->g:Lzui/appcompat/widget/ActionMenuView;

    invoke-virtual {p0}, Lzui/appcompat/widget/ActionMenuView;->updateZuiStyle()V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mContentInsetStartWithNavigation"

    invoke-virtual {v0, v2, v1}, Lzui/util/ReflectClass;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_title_margin_start_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "mTitleMarginStart"

    invoke-virtual {v0, v2, v1}, Lzui/util/ReflectClass;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lzui/platform/R$dimen;->action_bar_title_margin_start_zui:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "mTitleMarginEnd"

    invoke-virtual {v0, v1, p0}, Lzui/util/ReflectClass;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->c()Landroid/widget/ImageButton;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_icon_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->action_bar_icon_height_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lzui/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->d:Landroid/widget/ImageButton;

    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x106000d

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private j()V
    .locals 2

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    if-eqz p0, :cond_0

    sget v0, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mTitleTextAppearance"

    invoke-virtual {p0, v1, v0}, Lzui/util/ReflectClass;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    sget v0, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "mSubtitleTextAppearance"

    invoke-virtual {p0, v1, v0}, Lzui/util/ReflectClass;->setHiddenConstValue(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->e()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->e:Landroid/widget/TextView;

    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->d()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lzui/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lzui/appcompat/widget/Toolbar;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_2
    iget-object p0, p0, Lzui/appcompat/widget/Toolbar;->f:Landroid/widget/TextView;

    if-eqz p0, :cond_3

    sget v0, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public setParentContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lzui/appcompat/widget/Toolbar;->c:Landroid/content/Context;

    return-void
.end method

.method public setRealObject(Ljava/lang/Object;)V
    .locals 0

    sget-object p0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    iput-object p1, p0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    return-void
.end method

.method public updateZuiStyle()V
    .locals 2

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->i()V

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->h()V

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->j()V

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->k()V

    invoke-direct {p0}, Lzui/appcompat/widget/Toolbar;->f()V

    sget-object v0, Lzui/appcompat/widget/Toolbar;->h:Lzui/appcompat/widget/Toolbar;

    iget-object v0, v0, Lzui/util/ReflectClass;->mRealObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/View;

    new-instance v1, Lzui/appcompat/widget/Toolbar$a;

    invoke-direct {v1, p0}, Lzui/appcompat/widget/Toolbar$a;-><init>(Lzui/appcompat/widget/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method
