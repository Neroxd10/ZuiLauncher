.class public Lzui/widget/SlideView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/SlideView$SlideViewParams;,
        Lzui/widget/SlideView$OnViewPressedListener;,
        Lzui/widget/SlideView$OnViewCheckedChangeListener;,
        Lzui/widget/SlideView$OnSlideListener;
    }
.end annotation


# static fields
.field private static R:I = 0x0

.field private static S:Landroid/util/Property; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/SlideView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLIDE_STATUS_OFF:I = 0x0

.field public static final SLIDE_STATUS_ON:I = 0x2

.field public static final SLIDE_STATUS_START_SCROLL:I = 0x1

.field private static T:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lzui/widget/SlideView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Landroid/graphics/drawable/Drawable;

.field private B:Z

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:F

.field private I:I

.field private J:I

.field private K:F

.field private L:I

.field private M:I

.field private N:Landroid/animation/Animator$AnimatorListener;

.field private O:I

.field private P:Z

.field private Q:I

.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/CheckBox;

.field private k:Landroid/widget/Scroller;

.field private l:I

.field private m:Lzui/widget/SlideView$OnSlideListener;

.field private n:Lzui/widget/SlideView$OnViewPressedListener;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Z

.field private v:I

.field private w:I

.field private x:Lzui/widget/SlideView$OnViewCheckedChangeListener;

.field private final y:Landroid/graphics/Rect;

.field private z:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lzui/widget/SlideView;

    new-instance v0, Lzui/widget/SlideView$b;

    const-string v1, "CheckPadding"

    invoke-direct {v0, v1}, Lzui/widget/SlideView$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/SlideView;->S:Landroid/util/Property;

    new-instance v0, Lzui/widget/SlideView$c;

    const-string v1, "LeftSliding"

    invoke-direct {v0, v1}, Lzui/widget/SlideView$c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzui/widget/SlideView;->T:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/SlideView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lzui/widget/SlideView$SlideViewParams;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/SlideView;->l:I

    const/4 v1, -0x1

    iput v1, p0, Lzui/widget/SlideView;->t:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/SlideView;->y:Landroid/graphics/Rect;

    iput v1, p0, Lzui/widget/SlideView;->D:I

    iput v1, p0, Lzui/widget/SlideView;->E:I

    iput v1, p0, Lzui/widget/SlideView;->F:I

    const/high16 v2, 0x41f00000    # 30.0f

    iput v2, p0, Lzui/widget/SlideView;->H:F

    const/16 v2, 0xf0

    iput v2, p0, Lzui/widget/SlideView;->I:I

    const/16 v2, 0x104

    iput v2, p0, Lzui/widget/SlideView;->J:I

    const/high16 v2, 0x40800000    # 4.0f

    iput v2, p0, Lzui/widget/SlideView;->K:F

    const/16 v2, -0x5a

    iput v2, p0, Lzui/widget/SlideView;->L:I

    const/16 v2, 0x30

    iput v2, p0, Lzui/widget/SlideView;->M:I

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lzui/widget/SlideView$a;

    invoke-direct {v2, p0}, Lzui/widget/SlideView$a;-><init>(Lzui/widget/SlideView;)V

    iput-object v2, p0, Lzui/widget/SlideView;->N:Landroid/animation/Animator$AnimatorListener;

    iput v0, p0, Lzui/widget/SlideView;->O:I

    iput-boolean v0, p0, Lzui/widget/SlideView;->P:Z

    iput v0, p0, Lzui/widget/SlideView;->Q:I

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x10103bd

    aput v3, v2, v0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    sput p2, Lzui/widget/SlideView;->R:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p3}, Lzui/widget/SlideView;->j(Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method static synthetic a(Lzui/widget/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/widget/SlideView;->P:Z

    return p1
.end method

.method static synthetic b(Lzui/widget/SlideView;)I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->O:I

    return p0
.end method

.method static synthetic c(Lzui/widget/SlideView;I)I
    .locals 0

    iput p1, p0, Lzui/widget/SlideView;->O:I

    return p1
.end method

.method static synthetic d(Lzui/widget/SlideView;)I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->L:I

    return p0
.end method

.method static synthetic e(Lzui/widget/SlideView;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic f(Lzui/widget/SlideView;)I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->Q:I

    return p0
.end method

.method static synthetic g(Lzui/widget/SlideView;I)I
    .locals 0

    iput p1, p0, Lzui/widget/SlideView;->Q:I

    return p1
.end method

.method static synthetic h(Lzui/widget/SlideView;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    return-object p0
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_bounce_left_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lzui/widget/SlideView;->H:F

    iget-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$integer;->config_list_bounce_left_rush_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->I:I

    iget-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$integer;->config_list_bounce_left_back_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->J:I

    new-instance v0, Lzui/util/Resources;

    invoke-direct {v0}, Lzui/util/Resources;-><init>()V

    iget-object v1, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lzui/util/Resources;->setRealObject(Ljava/lang/Object;)V

    sget v1, Lzui/platform/R$dimen;->listview_x_slide_bounce_factor:I

    invoke-virtual {v0, v1}, Lzui/util/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->K:F

    iget-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->listview_x_check_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->L:I

    sget v0, Lzui/widget/SlideView;->R:I

    iput v0, p0, Lzui/widget/SlideView;->M:I

    return-void
.end method

.method private j(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    new-instance v1, Landroid/widget/Scroller;

    invoke-direct {v1, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v0, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lzui/platform/R$id;->slideview_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    sget v0, Lzui/platform/R$id;->divider:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    sget v0, Lzui/platform/R$id;->slideview_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    const-string v1, "delete"

    invoke-static {v1, v1}, Lzui/util/CommonUtils;->getAndroidInternalResString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/SlideView;->i:Landroid/widget/RelativeLayout;

    sget v0, Lzui/platform/R$id;->slideview_check:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-direct {p0, p1}, Lzui/widget/SlideView;->m(Lzui/widget/SlideView$SlideViewParams;)V

    iget-object p1, p0, Lzui/widget/SlideView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$color;->list_item_background_focused_not_pressed_zui:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/SlideView;->F:I

    invoke-direct {p0}, Lzui/widget/SlideView;->i()V

    return-void
.end method

.method private k(II)V
    .locals 6

    iget-object p2, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    sub-int v3, p1, v1

    iget-object v0, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private l(II)V
    .locals 6

    iget-object p2, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v1

    sub-int v3, p1, v1

    iget-object v0, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit8 v5, p1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private m(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getWidth()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->o:I

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLeftSpaceWidth()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->p:I

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgColor()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->D:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v0

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getBgPressedColor()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->E:I

    :cond_2
    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getLeftSlideThreshold()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->v:I

    invoke-virtual {p1}, Lzui/widget/SlideView$SlideViewParams;->getRightSlideThreshold()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->w:I

    invoke-static {p1}, Lzui/widget/SlideView$SlideViewParams;->a(Lzui/widget/SlideView$SlideViewParams;)Z

    move-result p1

    iget-object p0, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    :cond_3
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method private n(I)V
    .locals 1

    iget v0, p0, Lzui/widget/SlideView;->o:I

    if-lt p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    iget v0, p0, Lzui/widget/SlideView;->v:I

    if-gt p1, v0, :cond_2

    iget v0, p0, Lzui/widget/SlideView;->w:I

    neg-int v0, v0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget v0, p0, Lzui/widget/SlideView;->l:I

    if-eq p1, v0, :cond_3

    iput p1, p0, Lzui/widget/SlideView;->l:I

    iget-object v0, p0, Lzui/widget/SlideView;->m:Lzui/widget/SlideView$OnSlideListener;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0, p1}, Lzui/widget/SlideView$OnSlideListener;->onSlide(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method private setCheckMargin(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget v0, p0, Lzui/widget/SlideView;->M:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lzui/widget/SlideView;->L:I

    :goto_0
    iget-object v1, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_1
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_1
    iget-object v0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const/16 p1, 0x8

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lzui/widget/SlideView;->scrollTo(II)V

    iget-object v0, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    invoke-direct {p0, v0}, Lzui/widget/SlideView;->n(I)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public getBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/16 v0, 0xff

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    iget p1, p0, Lzui/widget/SlideView;->E:I

    if-eq p1, v1, :cond_1

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-ne p1, v0, :cond_0

    return-object v2

    :cond_0
    return-object p0

    :cond_1
    iget-object p1, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object p0, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v2

    :cond_3
    iget p1, p0, Lzui/widget/SlideView;->D:I

    if-eq p1, v1, :cond_5

    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getAlpha()I

    move-result p1

    if-ne p1, v0, :cond_4

    return-object v2

    :cond_4
    return-object p0

    :cond_5
    iget-object p1, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_6
    return-object v2
.end method

.method public getCheckedRegion()I
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    iget-object p0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getLeft()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/CheckBox;->getRight()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    return-object p0
.end method

.method public getDividerHeight()I
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return p0
.end method

.method public getSlidingStatus()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->l:I

    return p0
.end method

.method public getViewPosition()I
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->t:I

    return p0
.end method

.method public handleSlideOutItemClick(II)Z
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lzui/widget/SlideView;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object v0, p0, Lzui/widget/SlideView;->y:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iget-object p2, p0, Lzui/widget/SlideView;->z:Landroid/view/View$OnClickListener;

    if-eqz p2, :cond_1

    iget-object p0, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    invoke-interface {p2, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :cond_1
    :goto_0
    return p1
.end method

.method public isSliding()Z
    .locals 0

    iget p0, p0, Lzui/widget/SlideView;->l:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isViewChecked()Z
    .locals 1

    iget-boolean v0, p0, Lzui/widget/SlideView;->s:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isViewFixed()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/SlideView;->B:Z

    return p0
.end method

.method public lockPressUI(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/SlideView;->G:Z

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iput-boolean p2, p0, Lzui/widget/SlideView;->u:Z

    iget-object v0, p0, Lzui/widget/SlideView;->x:Lzui/widget/SlideView$OnViewCheckedChangeListener;

    if-eqz v0, :cond_0

    iget p0, p0, Lzui/widget/SlideView;->t:I

    invoke-interface {v0, p1, p0, p2}, Lzui/widget/SlideView$OnViewCheckedChangeListener;->onCheckedChange(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public onRequireTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    iget-boolean v3, p0, Lzui/widget/SlideView;->B:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_d

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_1

    goto/16 :goto_4

    :cond_1
    iget p1, p0, Lzui/widget/SlideView;->q:I

    sub-int p1, v0, p1

    iget v6, p0, Lzui/widget/SlideView;->r:I

    sub-int v6, v1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    mul-int/2addr v6, v5

    if-ge v7, v6, :cond_2

    goto/16 :goto_4

    :cond_2
    sub-int v6, v2, p1

    if-eqz p1, :cond_e

    iget v7, p0, Lzui/widget/SlideView;->o:I

    if-ne v2, v7, :cond_6

    iget v2, p0, Lzui/widget/SlideView;->Q:I

    if-ltz v2, :cond_3

    if-nez v2, :cond_6

    if-gez p1, :cond_6

    :cond_3
    iget v2, p0, Lzui/widget/SlideView;->Q:I

    iget v3, p0, Lzui/widget/SlideView;->o:I

    mul-int/lit8 v3, v3, -0x2

    if-gt v2, v3, :cond_4

    if-lez p1, :cond_e

    :cond_4
    iget v2, p0, Lzui/widget/SlideView;->Q:I

    div-int/2addr p1, v5

    add-int/2addr v2, p1

    iput v2, p0, Lzui/widget/SlideView;->Q:I

    if-lez v2, :cond_5

    move v2, v4

    :cond_5
    iput v2, p0, Lzui/widget/SlideView;->Q:I

    iget-object p1, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_4

    :cond_6
    iget p1, p0, Lzui/widget/SlideView;->o:I

    if-le v6, p1, :cond_7

    move v6, p1

    goto :goto_0

    :cond_7
    iget p1, p0, Lzui/widget/SlideView;->p:I

    neg-int v2, p1

    if-ge v6, v2, :cond_8

    neg-int v6, p1

    :cond_8
    :goto_0
    invoke-virtual {p0, v6, v4}, Lzui/widget/SlideView;->scrollTo(II)V

    invoke-direct {p0, v6}, Lzui/widget/SlideView;->n(I)V

    iget p1, p0, Lzui/widget/SlideView;->v:I

    if-gt v6, p1, :cond_9

    iget p1, p0, Lzui/widget/SlideView;->w:I

    neg-int p1, p1

    if-ge v6, p1, :cond_e

    :cond_9
    :goto_1
    move v4, v3

    goto :goto_4

    :cond_a
    invoke-virtual {p0}, Lzui/widget/SlideView;->startLeftSlidingFinishAnimation()V

    int-to-double v5, v2

    iget p1, p0, Lzui/widget/SlideView;->o:I

    int-to-double v7, p1

    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    const-wide/16 v7, 0x0

    cmpl-double v2, v5, v7

    if-lez v2, :cond_b

    goto :goto_2

    :cond_b
    move p1, v4

    :goto_2
    iget-object v2, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    if-gez v2, :cond_c

    iget-object v2, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v2

    invoke-direct {p0, p1, v4}, Lzui/widget/SlideView;->k(II)V

    neg-int v2, v2

    invoke-virtual {p0, v2}, Lzui/widget/SlideView;->startBounceAnimation(I)V

    goto :goto_3

    :cond_c
    invoke-direct {p0, p1, v4}, Lzui/widget/SlideView;->l(II)V

    :goto_3
    invoke-direct {p0, p1}, Lzui/widget/SlideView;->n(I)V

    iget v2, p0, Lzui/widget/SlideView;->o:I

    if-gt p1, v2, :cond_e

    goto :goto_1

    :cond_d
    iget-object p1, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lzui/widget/SlideView;->k:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_e
    :goto_4
    iput v0, p0, Lzui/widget/SlideView;->q:I

    iput v1, p0, Lzui/widget/SlideView;->r:I

    return v4
.end method

.method public removeContentView()V
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public scrollTo(II)V
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->scrollTo(II)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object p1, p0, Lzui/widget/SlideView;->c:Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object p0, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lzui/widget/SlideView;->e:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lzui/widget/SlideView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lzui/widget/SlideView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setDividerHeight(I)V

    iget-object p0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    if-lez p1, :cond_0

    iget-object v0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public setDividerState(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lzui/widget/SlideView;->l:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    new-array p1, v2, [I

    const v2, 0x10100a7

    aput v2, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    new-array p1, v2, [I

    const v2, 0x101009e

    aput v2, p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object p1, p0, Lzui/widget/SlideView;->d:Landroid/widget/ImageView;

    iget-object p0, p0, Lzui/widget/SlideView;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setFocused(Z)V
    .locals 3

    const/4 v0, -0x1

    if-eqz p1, :cond_1

    iget p1, p0, Lzui/widget/SlideView;->E:I

    if-eq p1, v0, :cond_0

    iget p1, p0, Lzui/widget/SlideView;->F:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_1

    :cond_1
    iget p1, p0, Lzui/widget/SlideView;->D:I

    if-eq p1, v0, :cond_2

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009d

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_1
    iget-object p1, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    nop

    :array_0
    .array-data 4
        0x101009d
        0x101009c
        0x101009e
        0x101031b
    .end array-data
.end method

.method public setOnSlideListener(Lzui/widget/SlideView$OnSlideListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView;->m:Lzui/widget/SlideView$OnSlideListener;

    return-void
.end method

.method public setOnSlideOutItemClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView;->z:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnViewCheckedChangedListener(Lzui/widget/SlideView$OnViewCheckedChangeListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView;->x:Lzui/widget/SlideView$OnViewCheckedChangeListener;

    return-void
.end method

.method public setOnViewPressedistener(Lzui/widget/SlideView$OnViewPressedListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/SlideView;->n:Lzui/widget/SlideView$OnViewPressedListener;

    return-void
.end method

.method public setParams(Lzui/widget/SlideView$SlideViewParams;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/SlideView;->m(Lzui/widget/SlideView$SlideViewParams;)V

    return-void
.end method

.method public setPressed(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    invoke-virtual {p0, p1}, Lzui/widget/SlideView;->setDividerState(Z)V

    iget-object v0, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lzui/widget/SlideView;->B:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lzui/widget/SlideView;->G:Z

    if-nez v1, :cond_3

    const/4 v1, -0x1

    if-eqz p1, :cond_1

    iget v2, p0, Lzui/widget/SlideView;->l:I

    if-nez v2, :cond_1

    iget v2, p0, Lzui/widget/SlideView;->E:I

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    iget v0, p0, Lzui/widget/SlideView;->D:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Lzui/widget/SlideView;->A:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lzui/widget/SlideView;->n:Lzui/widget/SlideView$OnViewPressedListener;

    if-eqz v0, :cond_4

    invoke-interface {v0, p0, p1}, Lzui/widget/SlideView$OnViewPressedListener;->onPressed(Landroid/view/View;Z)V

    :cond_4
    return-void
.end method

.method public setSpaceHeight(I)V
    .locals 2

    iget v0, p0, Lzui/widget/SlideView;->C:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lzui/widget/SlideView;->C:I

    :cond_0
    iget-object v0, p0, Lzui/widget/SlideView;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    div-int/lit8 p1, p1, 0x2

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lzui/widget/SlideView;->f:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lzui/widget/SlideView;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lzui/widget/SlideView;->g:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lzui/widget/SlideView;->h:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setViewChecked(Z)V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/SlideView;->s:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setViewFixed(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/SlideView;->B:Z

    return-void
.end method

.method public setViewPosition(I)V
    .locals 0

    iput p1, p0, Lzui/widget/SlideView;->t:I

    return-void
.end method

.method public showCheckItem(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lzui/widget/SlideView;->s:Z

    iget-boolean v0, p0, Lzui/widget/SlideView;->P:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lzui/widget/SlideView;->setCheckMargin(Z)V

    :cond_1
    return-void
.end method

.method public shrink(Z)V
    .locals 1

    iget-object v0, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, v0, v0}, Lzui/widget/SlideView;->l(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v0}, Lzui/widget/SlideView;->k(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startBounceAnimation(I)V
    .locals 10

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    int-to-float p1, p1

    iget v1, p0, Lzui/widget/SlideView;->p:I

    int-to-float v2, v1

    div-float v2, p1, v2

    iget v3, p0, Lzui/widget/SlideView;->H:F

    mul-float/2addr v2, v3

    int-to-float v1, v1

    div-float v1, p1, v1

    iget v3, p0, Lzui/widget/SlideView;->K:F

    mul-float/2addr v1, v3

    iget-object v3, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput p1, v6, v7

    neg-float p1, v2

    const/4 v2, 0x1

    aput p1, v6, v2

    invoke-static {v3, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget v4, p0, Lzui/widget/SlideView;->I:I

    int-to-long v8, v4

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lzui/widget/SlideView;->b:Landroid/widget/LinearLayout;

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v5, v5, [F

    aput p1, v5, v7

    const/4 p1, 0x0

    aput p1, v5, v2

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iget p0, p0, Lzui/widget/SlideView;->J:I

    int-to-long v1, p0

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/Animator;

    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startEditModeAnimation(Z)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/SlideView;->P:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lzui/widget/SlideView;->j:Landroid/widget/CheckBox;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    iget p1, p0, Lzui/widget/SlideView;->L:I

    iput p1, p0, Lzui/widget/SlideView;->O:I

    iget p1, p0, Lzui/widget/SlideView;->M:I

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v3, 0x12c

    goto :goto_0

    :cond_0
    iget p1, p0, Lzui/widget/SlideView;->M:I

    iput p1, p0, Lzui/widget/SlideView;->O:I

    iget p1, p0, Lzui/widget/SlideView;->L:I

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    const-wide/16 v3, 0x96

    :goto_0
    sget-object v5, Lzui/widget/SlideView;->S:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v6, v6, [I

    iget v7, p0, Lzui/widget/SlideView;->O:I

    aput v7, v6, v1

    aput p1, v6, v0

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lzui/widget/SlideView;->N:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startLeftSlidingFinishAnimation()V
    .locals 4

    sget-object v0, Lzui/widget/SlideView;->T:Landroid/util/Property;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lzui/widget/SlideView;->Q:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public updateBackground(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/SlideView;->f:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lzui/widget/SlideView;->g:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
