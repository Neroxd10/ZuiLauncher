.class public Lzui/appcompat/widget/ZuiAppcompatToolbar;
.super Landroidx/appcompat/widget/Toolbar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/appcompat/widget/ZuiAppcompatToolbar$b;,
        Lzui/appcompat/widget/ZuiAppcompatToolbar$c;
    }
.end annotation


# static fields
.field private static final n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:I

.field private static q:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroidx/appcompat/widget/AppCompatImageView;

.field private c:Landroidx/appcompat/widget/AppCompatTextView;

.field private d:Landroidx/appcompat/widget/AppCompatTextView;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lzui/appcompat/widget/ZuiAppcompatToolbar$c;

.field private i:Lzui/appcompat/widget/ZuiAppcompatToolbar$b;

.field private j:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

.field private k:Ljava/lang/CharSequence;

.field private l:Landroid/view/WindowManager;

.field private m:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10104aa

    invoke-direct {p0, p1, p2, v0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->m:Landroid/os/Handler;

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    sget-object v0, Lzui/platform/R$styleable;->Theme_Zui:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->e:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->e:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->actionbar_popupmenu_overflow_dropdown_horizontal_offset_horizontal:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->actionbar_popupmenu_overflow_dropdown_horizontal_offset:I

    :goto_0
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->q:I

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->k()V

    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$c;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lzui/appcompat/widget/ZuiAppcompatToolbar$c;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$a;)V

    iput-object p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->h:Lzui/appcompat/widget/ZuiAppcompatToolbar$c;

    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;

    invoke-direct {p2, p0, p3}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;Lzui/appcompat/widget/ZuiAppcompatToolbar$a;)V

    iput-object p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->i:Lzui/appcompat/widget/ZuiAppcompatToolbar$b;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$string;->action_menu_overflow_description:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->action_bar_title_subtitle_horizontal_padding:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lzui/appcompat/widget/ZuiAppcompatToolbar;->p:I

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->l:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V
    .locals 0

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->s()V

    return-void
.end method

.method static synthetic b(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Lzui/appcompat/widget/ZuiAppcompatToolbar$b;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->i:Lzui/appcompat/widget/ZuiAppcompatToolbar$b;

    return-object p0
.end method

.method static synthetic c(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->j:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic d(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->b:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->q:I

    return v0
.end method

.method static synthetic f(Lzui/appcompat/widget/ZuiAppcompatToolbar;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->n:Ljava/lang/String;

    return-object v0
.end method

.method private h(Ljava/lang/CharSequence;)V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->k:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setContentInsetStartWithNavigation(I)V

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->k:Ljava/lang/CharSequence;

    :cond_0
    return-void
.end method

.method private i(Landroidx/appcompat/widget/AppCompatTextView;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    float-to-int p0, p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p1

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private j()V
    .locals 3

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->l()Landroidx/appcompat/widget/AppCompatImageButton;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x106000d

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-direct {v1, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/Toolbar;->setTitleMarginStart(I)V

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Title:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$style;->TextAppearance_Zui_Widget_Toolbar_Subtitle:I

    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/Toolbar;->setSubtitleTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method private l()Landroidx/appcompat/widget/AppCompatImageButton;
    .locals 2

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->k:Ljava/lang/CharSequence;

    const-class v1, Landroidx/appcompat/widget/AppCompatImageButton;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->p(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatImageButton;

    return-object p0
.end method

.method private m()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 2

    sget-object v0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->o:Ljava/lang/String;

    const-class v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->p(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method private n()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->q(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method private o()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const-class v1, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v0, v1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->q(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object p0
.end method

.method private p(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private q(Ljava/lang/CharSequence;Ljava/lang/Class;)Landroid/view/View;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v3, Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_2
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private r(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 1

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->h:Lzui/appcompat/widget/ZuiAppcompatToolbar$c;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->i:Lzui/appcompat/widget/ZuiAppcompatToolbar$b;

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-static {p1, p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$b;->a(Lzui/appcompat/widget/ZuiAppcompatToolbar$b;Landroid/view/Menu;)V

    return-void
.end method

.method private s()V
    .locals 8

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->l:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v3, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getRight()I

    move-result v6

    iget-object v7, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v4, v5, v2, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    int-to-float v5, v2

    iget-object v6, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getTextSize()F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    iget-object v2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lzui/platform/R$dimen;->action_bar_horizontal_subtitle_height_zui:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-direct {p0, v4}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->i(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v4

    :cond_3
    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    if-eqz v1, :cond_4

    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    sget v3, Lzui/appcompat/widget/ZuiAppcompatToolbar;->p:I

    sub-int/2addr v1, v3

    sub-int v3, v1, v4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getRight()I

    move-result v1

    sget v3, Lzui/appcompat/widget/ZuiAppcompatToolbar;->p:I

    add-int/2addr v3, v1

    add-int v1, v3, v4

    :goto_1
    iget-object p0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    add-int/2addr v2, v0

    invoke-virtual {p0, v3, v0, v1, v2}, Landroid/widget/TextView;->layout(IIII)V

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/Toolbar;->onLayout(ZIIII)V

    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->b:Landroidx/appcompat/widget/AppCompatImageView;

    if-nez p1, :cond_0

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->m()Landroidx/appcompat/widget/AppCompatImageView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->b:Landroidx/appcompat/widget/AppCompatImageView;

    :cond_0
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->b:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-boolean p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->f:Z

    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->r(Landroidx/appcompat/widget/AppCompatImageView;)V

    iput-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->f:Z

    :cond_1
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->k:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->j()V

    iput-boolean p2, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->g:Z

    :cond_2
    iget-boolean p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->e:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->o()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_3
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    if-nez p1, :cond_4

    invoke-direct {p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->n()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object p1

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->d:Landroidx/appcompat/widget/AppCompatTextView;

    :cond_4
    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->c:Landroidx/appcompat/widget/AppCompatTextView;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    iget-object p3, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->text_size_title_zui_toolbar_horizontal:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Landroidx/appcompat/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->m:Landroid/os/Handler;

    new-instance p2, Lzui/appcompat/widget/ZuiAppcompatToolbar$a;

    invoke-direct {p2, p0}, Lzui/appcompat/widget/ZuiAppcompatToolbar$a;-><init>(Lzui/appcompat/widget/ZuiAppcompatToolbar;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1}, Lzui/appcompat/widget/ZuiAppcompatToolbar;->h(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/widget/Toolbar;->setOnMenuItemClickListener(Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;)V

    iput-object p1, p0, Lzui/appcompat/widget/ZuiAppcompatToolbar;->j:Landroidx/appcompat/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method
