.class public Lzui/widget/BottomTabBar;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomTabBar$c;,
        Lzui/widget/BottomTabBar$b;,
        Lzui/widget/BottomTabBar$OnSelectionChangeListener;
    }
.end annotation


# static fields
.field public static final INVALID_ID:I = -0x1


# instance fields
.field private a:I

.field private b:Landroid/graphics/drawable/Drawable;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Lzui/widget/BottomTabBar$b;

.field private e:Lzui/widget/BottomBarItem$OnSelectedListener;

.field private f:Z

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z

.field private m:I

.field protected final mBorderRect:Landroid/graphics/Rect;

.field protected mChildrenRectList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field protected mDividerHeight:I

.field protected mLeftWidth:I

.field protected mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

.field protected mRightWidth:I

.field protected final mTmpChildRect:Landroid/graphics/Rect;

.field protected final mTmpContainerRect:Landroid/graphics/Rect;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->bottomTabBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lzui/widget/BottomTabBar;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->f:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    iput v0, p0, Lzui/widget/BottomTabBar;->j:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iput v1, p0, Lzui/widget/BottomTabBar;->k:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lzui/widget/BottomTabBar;->l:Z

    iput v1, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    sget-object v2, Lzui/platform/R$styleable;->BottomTabBar:[I

    invoke-virtual {p1, p2, v2, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_colorBackground:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lzui/platform/R$color;->bottom_tabbar_background:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_divider:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->bottom_toolbar_divider:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lzui/widget/BottomTabBar;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lzui/widget/BottomTabBar;->setTopDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_0
    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lzui/widget/BottomTabBar;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    :goto_1
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_textColor:I

    invoke-virtual {p4, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->g:Landroid/content/res/ColorStateList;

    if-nez v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->bottom_tabbar_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lzui/widget/BottomTabBar;->g:Landroid/content/res/ColorStateList;

    :cond_2
    sget v2, Lzui/platform/R$styleable;->BottomTabBar_android_height:I

    invoke-virtual {p4, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->i:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lzui/platform/R$dimen;->bottom_bar_tab_bar_horizontal_touchPadding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->m:I

    sget v0, Lzui/platform/R$styleable;->BottomTabBar_android_layout_margin:I

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->k:I

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/BottomTabBar;->n:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$color;->bottom_tabbar_item_text_disabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->h:I

    invoke-direct {p0}, Lzui/widget/BottomTabBar;->k()V

    return-void
.end method

.method static synthetic a(Lzui/widget/BottomTabBar;)Lzui/widget/BottomBarItem$OnSelectedListener;
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomTabBar;->e:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-object p0
.end method

.method static synthetic b(Lzui/widget/BottomTabBar;I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    return-void
.end method

.method static synthetic c(Lzui/widget/BottomTabBar;)Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/BottomTabBar;->f:Z

    return p0
.end method

.method static synthetic d(Lzui/widget/BottomTabBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lzui/widget/BottomTabBar;->f:Z

    return p1
.end method

.method static synthetic e(Lzui/widget/BottomTabBar;)I
    .locals 0

    iget p0, p0, Lzui/widget/BottomTabBar;->a:I

    return p0
.end method

.method static synthetic f(Lzui/widget/BottomTabBar;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzui/widget/BottomTabBar;->m(IZ)V

    return-void
.end method

.method private g(Z)V
    .locals 2

    iget-boolean v0, p0, Lzui/widget/BottomTabBar;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->clearAnimation()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lzui/platform/R$anim;->push_up_in:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lzui/platform/R$anim;->push_down_out:I

    :goto_0
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private h()V
    .locals 2

    iget v0, p0, Lzui/widget/BottomTabBar;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of v0, p0, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_0

    check-cast p0, Lzui/widget/BottomBarItem;

    invoke-virtual {p0}, Lzui/widget/BottomBarItem;->a()V

    :cond_0
    return-void
.end method

.method private i(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lzui/widget/BottomTabBar;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget v4, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p0, p0, Lzui/widget/BottomTabBar;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method private j(FF)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private k()V
    .locals 2

    invoke-direct {p0}, Lzui/widget/BottomTabBar;->l()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v0, Lzui/widget/BottomTabBar$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomTabBar$b;-><init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$a;)V

    iput-object v0, p0, Lzui/widget/BottomTabBar;->d:Lzui/widget/BottomTabBar$b;

    new-instance v0, Lzui/widget/BottomTabBar$c;

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomTabBar$c;-><init>(Lzui/widget/BottomTabBar;Lzui/widget/BottomTabBar$a;)V

    iput-object v0, p0, Lzui/widget/BottomTabBar;->e:Lzui/widget/BottomBarItem$OnSelectedListener;

    iget-object v0, p0, Lzui/widget/BottomTabBar;->d:Lzui/widget/BottomTabBar$b;

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method

.method private l()V
    .locals 2

    iget-boolean v0, p0, Lzui/widget/BottomTabBar;->n:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/BottomTabBar;->k:I

    return-void
.end method

.method private m(IZ)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p1, p0, Lzui/widget/BottomBarItem;

    if-eqz p1, :cond_0

    check-cast p0, Lzui/widget/BottomBarItem;

    invoke-virtual {p0, p2}, Lzui/widget/BottomBarItem;->setFocused(Z)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v2, p0, Lzui/widget/BottomTabBar;->g:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v2, p0, Lzui/widget/BottomTabBar;->h:I

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextDisabledColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setFocusedId(I)V
    .locals 1

    iput p1, p0, Lzui/widget/BottomTabBar;->a:I

    iget-object v0, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lzui/widget/BottomTabBar$OnSelectionChangeListener;->onSelectionChanged(Lzui/widget/BottomTabBar;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    instance-of v0, p1, Lzui/widget/BottomBarItem;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lzui/widget/BottomBarItem;

    invoke-virtual {v0}, Lzui/widget/BottomBarItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->f:Z

    iget v1, p0, Lzui/widget/BottomTabBar;->a:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v1, v3}, Lzui/widget/BottomTabBar;->m(IZ)V

    :cond_0
    iput-boolean v3, p0, Lzui/widget/BottomTabBar;->f:Z

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->setSelection(I)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v1, 0x17

    if-eq p1, v1, :cond_0

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_0

    const/16 v1, 0x42

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lzui/platform/R$id;->bottombar_item_container:I

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :cond_1
    invoke-virtual {p0, v1}, Lzui/widget/BottomTabBar;->setSelection(I)V

    :cond_2
    :goto_0
    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lzui/widget/BottomTabBar;->isMovingOutTouchArea(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lzui/widget/BottomTabBar;->h()V

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, v0, v2}, Lzui/widget/BottomTabBar;->j(FF)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    instance-of v3, v2, Lzui/widget/BottomBarItem;

    if-eqz v3, :cond_3

    iget v3, p0, Lzui/widget/BottomTabBar;->j:I

    if-eq v0, v3, :cond_2

    invoke-direct {p0}, Lzui/widget/BottomTabBar;->h()V

    :cond_2
    move-object v3, v2

    check-cast v3, Lzui/widget/BottomBarItem;

    iget-object v4, p0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v3, v2, p1, v4}, Lzui/widget/BottomBarItem;->c(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z

    iput v0, p0, Lzui/widget/BottomTabBar;->j:I

    return v1

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enablePushAnimation(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/BottomTabBar;->l:Z

    return-void
.end method

.method public findItemById(I)Lzui/widget/BottomBarItem;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    check-cast v1, Lzui/widget/BottomBarItem;

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, Lzui/widget/BottomTabBar;->a:I

    return p0
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lzui/widget/BottomTabBar;->m:I

    add-int/2addr v1, v3

    iget p0, p0, Lzui/widget/BottomTabBar;->k:I

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v3

    sub-int/2addr p1, p0

    if-le v0, p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    return v2
.end method

.method public lockTabBar(Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lzui/widget/BottomBarItem;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->enableSelect(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tab_bar_margin_horizontal:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->bottom_bar_tool_bar_horizontal_margin:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomTabBar;->k:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->i(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    invoke-direct {p0}, Lzui/widget/BottomTabBar;->n()V

    iget v0, p0, Lzui/widget/BottomTabBar;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lzui/widget/BottomTabBar;->f:Z

    invoke-direct {p0, v0, v1}, Lzui/widget/BottomTabBar;->m(IZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/BottomTabBar;->f:Z

    iget v0, p0, Lzui/widget/BottomTabBar;->a:I

    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    iget v5, v0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    add-int/2addr v2, v5

    iget v5, v0, Lzui/widget/BottomTabBar;->k:I

    add-int/2addr v2, v5

    iget v6, v0, Lzui/widget/BottomTabBar;->mRightWidth:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_0
    const/16 v8, 0x8

    if-ge v6, v1, :cond_1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eq v9, v8, :cond_0

    add-int/lit8 v7, v7, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    sub-int/2addr v4, v2

    div-int/2addr v4, v7

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-lez v1, :cond_3

    iget v6, v0, Lzui/widget/BottomTabBar;->k:I

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v3, v6

    div-int/2addr v3, v7

    goto :goto_2

    :cond_3
    move v3, v5

    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v6

    iget v7, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v6, v7

    sub-int v7, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    sub-int v9, v7, v9

    iget v10, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v9, v10

    move v10, v5

    move v11, v10

    :goto_3
    if-ge v10, v1, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v8, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    iget-object v5, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    mul-int v16, v4, v11

    add-int v16, v2, v16

    move/from16 v17, v1

    iget v1, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v1, v16, v1

    iput v1, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v11, 0x1

    mul-int v16, v4, v1

    add-int v16, v2, v16

    move/from16 v18, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v16, v2

    iput v2, v5, Landroid/graphics/Rect;->right:I

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v6

    iput v2, v5, Landroid/graphics/Rect;->top:I

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v9, v2

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lzui/widget/BottomTabBar;->k:I

    add-int v5, p2, v2

    mul-int/2addr v11, v3

    add-int/2addr v5, v11

    add-int v2, p2, v2

    mul-int v11, v3, v1

    add-int/2addr v2, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v5, v14, v2, v7}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v2, 0x11

    iget-object v5, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v11, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v2, v15, v8, v5, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v2, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v11, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v5, v8, v11, v2}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    goto :goto_4

    :cond_4
    move/from16 v17, v1

    move/from16 v18, v2

    move v14, v5

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v5, v14

    move/from16 v1, v17

    move/from16 v2, v18

    const/16 v8, 0x8

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    iput v1, p0, Lzui/widget/BottomTabBar;->mRightWidth:I

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v11

    move v7, p1

    move v9, p2

    invoke-virtual/range {v5 .. v10}, Landroid/widget/LinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v6, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v6, v5

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v5, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v3, v5

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredState()I

    move-result v5

    invoke-static {v4, v5}, Landroid/widget/LinearLayout;->combineMeasuredStates(II)I

    move-result v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lzui/widget/BottomTabBar;->mLeftWidth:I

    iget v1, p0, Lzui/widget/BottomTabBar;->mRightWidth:I

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lzui/widget/BottomTabBar;->i:I

    if-lez v1, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, p1, v4}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    shl-int/lit8 v1, v4, 0x10

    invoke-static {v0, p2, v1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeItemById(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Lzui/widget/BottomBarItem;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected setChildOnSelectedChangeListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomTabBar;->e:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomTabBar;->d:Lzui/widget/BottomTabBar$b;

    invoke-static {p0, p1}, Lzui/widget/BottomTabBar$b;->a(Lzui/widget/BottomTabBar$b;Landroid/view/ViewGroup$OnHierarchyChangeListener;)Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method

.method public setOnSelectoinChangeListener(Lzui/widget/BottomTabBar$OnSelectionChangeListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomTabBar;->mOnSelectionChangeListener:Lzui/widget/BottomTabBar$OnSelectionChangeListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget v1, p0, Lzui/widget/BottomTabBar;->a:I

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lzui/widget/BottomTabBar;->a:I

    if-eq v1, v0, :cond_1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lzui/widget/BottomTabBar;->m(IZ)V

    :cond_1
    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lzui/widget/BottomTabBar;->m(IZ)V

    :cond_2
    invoke-direct {p0, p1}, Lzui/widget/BottomTabBar;->setFocusedId(I)V

    return-void
.end method

.method public setTopDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomTabBar;->b:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lzui/widget/BottomTabBar;->g(Z)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    return-void
.end method
