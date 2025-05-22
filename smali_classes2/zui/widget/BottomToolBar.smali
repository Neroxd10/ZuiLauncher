.class public Lzui/widget/BottomToolBar;
.super Lzui/widget/BottomTabBar;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomToolBar$d;,
        Lzui/widget/BottomToolBar$c;,
        Lzui/widget/BottomToolBar$e;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Lzui/widget/BottomBarItem$OnSelectedListener;

.field private final C:Landroid/widget/LinearLayout$LayoutParams;

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:Landroid/content/res/ColorStateList;

.field private t:I

.field private u:I

.field private v:Z

.field private w:Lzui/app/ActionDialog;

.field private final x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private y:Landroid/widget/ListView;

.field private z:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->bottomToolBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomToolBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/BottomTabBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/BottomToolBar;->o:I

    iput-boolean v0, p0, Lzui/widget/BottomToolBar;->v:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    iput-object v1, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lzui/widget/BottomToolBar;->C:Landroid/widget/LinearLayout$LayoutParams;

    sget-object v1, Lzui/platform/R$styleable;->BottomToolBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_colorBackground:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$color;->bottom_toolbar_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_columnCount:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$integer;->bottom_bar_tool_bar_item_max_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lzui/widget/BottomToolBar;->p:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItemMaxCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lzui/widget/BottomToolBar;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BottomToolBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_textColor:I

    invoke-virtual {p4, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->s:Landroid/content/res/ColorStateList;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->bottom_toolbar_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->s:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_layout:I

    sget v2, Lzui/platform/R$layout;->bottom_toolbar_menu_popup:I

    invoke-virtual {p4, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lzui/widget/BottomToolBar;->u:I

    sget v1, Lzui/platform/R$styleable;->BottomToolBar_android_layout_margin:I

    invoke-virtual {p4, v1, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lzui/widget/BottomToolBar;->o:I

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/BottomToolBar;->A:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$color;->bottom_toolbar_item_text_disabled:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomToolBar;->t:I

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->k()V

    return-void
.end method

.method private getMoreItemPosition()I
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/BottomToolBar;->q:I

    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget v2, p0, Lzui/widget/BottomToolBar;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lzui/widget/BottomToolBar;->q:I

    iget v3, p0, Lzui/widget/BottomToolBar;->p:I

    if-ne v2, v3, :cond_0

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private k()V
    .locals 2

    const-string v0, "BottomToolBar"

    const-string v1, "enter init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lzui/widget/BottomToolBar$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomToolBar$d;-><init>(Lzui/widget/BottomToolBar;Lzui/widget/BottomToolBar$a;)V

    iput-object v0, p0, Lzui/widget/BottomToolBar;->B:Lzui/widget/BottomBarItem$OnSelectedListener;

    invoke-virtual {p0, v0}, Lzui/widget/BottomTabBar;->setChildOnSelectedChangeListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    iget-boolean v0, p0, Lzui/widget/BottomToolBar;->A:Z

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

    iput v0, p0, Lzui/widget/BottomToolBar;->o:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lzui/widget/BottomToolBar;->r:I

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

    iget-object v2, p0, Lzui/widget/BottomToolBar;->s:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v2, p0, Lzui/widget/BottomToolBar;->t:I

    invoke-virtual {v1, v2}, Lzui/widget/BottomBarItem;->setTextDisabledColor(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic o(Lzui/widget/BottomToolBar;I)I
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomToolBar;->t(I)I

    move-result p0

    return p0
.end method

.method static synthetic p(Lzui/widget/BottomToolBar;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    return-object p0
.end method

.method static synthetic q(Lzui/widget/BottomToolBar;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->w()V

    return-void
.end method

.method private r(Landroid/view/View;)V
    .locals 2

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object p1, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    iget-object p1, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    new-instance v0, Lzui/widget/BottomToolBar$c;

    iget-object v1, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lzui/widget/BottomToolBar$c;-><init>(Lzui/widget/BottomToolBar;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object p1, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    new-instance v0, Lzui/widget/BottomToolBar$a;

    invoke-direct {v0, p0}, Lzui/widget/BottomToolBar$a;-><init>(Lzui/widget/BottomToolBar;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private s()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lzui/widget/BottomToolBar;->u:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lzui/app/ActionDialog$Builder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lzui/app/ActionDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lzui/widget/BottomToolBar$b;

    invoke-direct {v2, p0}, Lzui/widget/BottomToolBar$b;-><init>(Lzui/widget/BottomToolBar;)V

    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Lzui/app/ActionDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lzui/app/ActionDialog$Builder;

    invoke-virtual {v1, v0}, Lzui/app/ActionDialog$Builder;->setView(Landroid/view/View;)Lzui/app/ActionDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lzui/app/ActionDialog$Builder;->create()Lzui/app/ActionDialog;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    invoke-direct {p0, v0}, Lzui/widget/BottomToolBar;->r(Landroid/view/View;)V

    return-void
.end method

.method private t(I)I
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string p1, "itemIndex"

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private u(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    instance-of p0, p1, Lzui/widget/BottomBarItem;

    if-eqz p0, :cond_0

    check-cast p1, Lzui/widget/BottomBarItem;

    invoke-virtual {p1}, Lzui/widget/BottomBarItem;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private w()V
    .locals 1

    iget-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->s()V

    :cond_0
    iget-object p0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    invoke-virtual {p0}, Lzui/app/ActionDialog;->show()V

    return-void
.end method

.method private x()V
    .locals 5

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->v()V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->getMoreItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lzui/widget/BottomToolBar;->v:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lzui/platform/R$layout;->bottom_bar_menu_item:I

    invoke-virtual {v3, v4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    check-cast v1, Lzui/widget/BottomBarItem;

    iget-object v3, p0, Lzui/widget/BottomToolBar;->B:Lzui/widget/BottomBarItem$OnSelectedListener;

    invoke-virtual {v1, v3}, Lzui/widget/BottomBarItem;->setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V

    iget-object v1, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    iget-object v3, p0, Lzui/widget/BottomToolBar;->C:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v0, v3}, Landroid/widget/LinearLayout;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    iget-object v1, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    add-int/2addr v0, v2

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1}, Lzui/widget/BottomToolBar;->u(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "text"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "itemIndex"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    int-to-long v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "itemId"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lzui/widget/BottomToolBar;->y:Landroid/widget/ListView;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lzui/widget/BottomToolBar$c;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lzui/widget/BottomToolBar;->v:Z

    iget-object v0, p0, Lzui/widget/BottomToolBar;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public closePopMenu()V
    .locals 1

    iget-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    :cond_0
    return-void
.end method

.method protected isMovingOutTouchArea(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

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

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lzui/widget/BottomTabBar;->mBorderRect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p0, p0, Lzui/widget/BottomToolBar;->o:I

    add-int/2addr v1, p0

    if-lt v0, v1, :cond_3

    iget p1, p1, Landroid/graphics/Rect;->right:I

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

.method public isPopMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomToolBar;->w:Lzui/app/ActionDialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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

    iput p1, p0, Lzui/widget/BottomToolBar;->o:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->closePopMenu()V

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Lzui/widget/BottomTabBar;->onFinishInflate()V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->x()V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->n()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

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

    iget v5, v0, Lzui/widget/BottomToolBar;->o:I

    add-int/2addr v2, v5

    iget v6, v0, Lzui/widget/BottomTabBar;->mRightWidth:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v5

    iget v6, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v5, v6

    sub-int v6, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, v0, Lzui/widget/BottomTabBar;->mDividerHeight:I

    add-int/2addr v7, v8

    invoke-direct/range {p0 .. p0}, Lzui/widget/BottomToolBar;->getMoreItemPosition()I

    iget-boolean v8, v0, Lzui/widget/BottomToolBar;->v:Z

    if-eqz v8, :cond_0

    iget v8, v0, Lzui/widget/BottomToolBar;->p:I

    goto :goto_0

    :cond_0
    iget v8, v0, Lzui/widget/BottomToolBar;->q:I

    :goto_0
    const/4 v9, 0x0

    if-lez v8, :cond_1

    sub-int/2addr v4, v2

    div-int/2addr v4, v8

    goto :goto_1

    :cond_1
    move v4, v9

    :goto_1
    if-lez v8, :cond_2

    iget v10, v0, Lzui/widget/BottomToolBar;->o:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v3, v10

    div-int/2addr v3, v8

    goto :goto_2

    :cond_2
    move v3, v9

    :goto_2
    move v10, v9

    move v11, v10

    :goto_3
    if-ge v10, v1, :cond_5

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lzui/widget/BottomTabBar;->mChildrenRectList:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    invoke-virtual {v13, v9, v9, v9, v9}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-eq v14, v15, :cond_4

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-lt v11, v8, :cond_3

    iget v4, v0, Lzui/widget/BottomToolBar;->r:I

    :cond_3
    move/from16 v16, v1

    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    mul-int v17, v4, v11

    add-int v17, v2, v17

    move/from16 p3, v8

    iget v8, v14, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int v8, v17, v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v8, v11, 0x1

    mul-int v17, v4, v8

    add-int v17, v2, v17

    move/from16 p4, v2

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v17, v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v5

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v14, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    sub-int v2, v7, v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Lzui/widget/BottomToolBar;->o:I

    add-int v2, p2, v1

    mul-int/2addr v11, v3

    add-int/2addr v2, v11

    add-int v1, p2, v1

    mul-int v11, v3, v8

    add-int/2addr v1, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    const/16 v1, 0x11

    iget-object v2, v0, Lzui/widget/BottomTabBar;->mTmpContainerRect:Landroid/graphics/Rect;

    iget-object v11, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    invoke-static {v1, v15, v9, v2, v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v0, Lzui/widget/BottomTabBar;->mTmpChildRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v9, v1, Landroid/graphics/Rect;->top:I

    iget v11, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v2, v9, v11, v1}, Landroid/view/View;->layout(IIII)V

    move v11, v8

    goto :goto_4

    :cond_4
    move/from16 v16, v1

    move/from16 p4, v2

    move/from16 p3, v8

    move v14, v9

    :goto_4
    add-int/lit8 v10, v10, 0x1

    move/from16 v8, p3

    move/from16 v2, p4

    move v9, v14

    move/from16 v1, v16

    goto/16 :goto_3

    :cond_5
    return-void
.end method

.method public removeItemById(I)V
    .locals 0

    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->removeItemById(I)V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->x()V

    return-void
.end method

.method public resetBar()V
    .locals 0

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->x()V

    invoke-direct {p0}, Lzui/widget/BottomToolBar;->n()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setMoreImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lzui/widget/BottomToolBar;->z:Landroid/view/View;

    if-eqz p0, :cond_0

    check-cast p0, Lzui/widget/BottomBarItem;

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->setImageResource(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    invoke-virtual {p0}, Lzui/widget/BottomToolBar;->closePopMenu()V

    invoke-super {p0, p1}, Lzui/widget/BottomTabBar;->setVisibility(I)V

    return-void
.end method
