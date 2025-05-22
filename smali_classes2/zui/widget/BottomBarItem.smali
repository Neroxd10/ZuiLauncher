.class public Lzui/widget/BottomBarItem;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/BottomBarItem$OnSelectedListener;
    }
.end annotation


# static fields
.field public static final BOTTOM_BAR_ITEM_STATUS_NOT_SELECTED:I = 0x0

.field public static final BOTTOM_BAR_ITEM_STATUS_PRE_SELECT:I = 0x1

.field public static final BOTTOM_BAR_ITEM_STATUS_SELECTED:I = 0x2


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/graphics/drawable/Drawable;

.field private final f:Landroid/graphics/Rect;

.field private g:Landroid/content/res/ColorStateList;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:F

.field private p:Z

.field private q:Lzui/widget/BottomBarItem$OnSelectedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lzui/platform/R$style;->Theme_Zui:I

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/BottomBarItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lzui/widget/BottomBarItem;->f:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/BottomBarItem;->l:Z

    sget-object v0, Lzui/platform/R$styleable;->BottomBarItem:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p4

    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_src:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_text:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->i:Ljava/lang/String;

    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_textColor:I

    invoke-virtual {p4, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    sget v0, Lzui/platform/R$styleable;->BottomBarItem_android_textSize:I

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sget v2, Lzui/platform/R$styleable;->BottomBarItem_android_state_focused:I

    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->j:Z

    sget v2, Lzui/platform/R$styleable;->BottomBarItem_fontMaxScale:I

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-virtual {p4, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lzui/widget/BottomBarItem;->o:F

    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    sget-object p4, Lzui/platform/R$styleable;->Theme_Zui:[I

    invoke-virtual {p1, p2, p4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->Theme_Zui_isHorizontal:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lzui/widget/BottomBarItem;->p:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iget p3, p2, Landroid/content/res/Configuration;->fontScale:F

    iget p4, p0, Lzui/widget/BottomBarItem;->o:F

    cmpl-float p3, p3, p4

    if-lez p3, :cond_0

    iput p4, p2, Landroid/content/res/Configuration;->fontScale:F

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/BottomBarItem;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->d(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lzui/widget/BottomBarItem;->g(I)V

    iget-object p1, p0, Lzui/widget/BottomBarItem;->i:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lzui/widget/BottomBarItem;->setText(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    invoke-direct {p0}, Lzui/widget/BottomBarItem;->e()V

    return-void
.end method

.method private b(ZZ)I
    .locals 1

    if-nez p2, :cond_0

    iget p0, p0, Lzui/widget/BottomBarItem;->h:I

    return p0

    :cond_0
    iget-object p2, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [I

    const p1, 0x101009c

    const/4 v0, 0x0

    aput p1, p0, v0

    invoke-virtual {p2, p0, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    return p0

    :cond_2
    const-string p1, "BottomBarItem"

    const-string p2, "mTextColor is null!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lzui/widget/BottomBarItem;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x106000b

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->p:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->bottom_bar_item:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->bottom_bar_item_horizontal:I

    :goto_1
    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget p1, Lzui/platform/R$id;->bottombar_item_image:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    sget p1, Lzui/platform/R$id;->bottombar_item_text:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$color;->bottom_tabbar_item_text_disabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lzui/widget/BottomBarItem;->h:I

    sget p1, Lzui/platform/R$id;->bottombar_item_container:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lzui/widget/BottomBarItem;->b:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->j:Z

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->f(Z)V

    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lzui/widget/BottomBarItem;->i:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method private f(Z)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->l:Z

    if-eqz v0, :cond_4

    const-string v0, "12"

    invoke-static {v0}, Lzui/util/CommonUtils;->isNewerThanVersion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/BottomBarItem;->b:Landroid/widget/LinearLayout;

    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    new-array v3, v1, [I

    if-eqz p1, :cond_1

    const v4, 0x10100a7

    aput v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_1
    const v4, 0x101009e

    aput v4, v3, v2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lzui/widget/BottomBarItem;->i:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-direct {p0, p1, v1}, Lzui/widget/BottomBarItem;->b(ZZ)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_4
    return-void
.end method

.method private g(I)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    iget-object p1, p0, Lzui/widget/BottomBarItem;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->bottom_bar_item_text_size_large:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lzui/widget/BottomBarItem;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lzui/platform/R$dimen;->bottom_bar_item_text_size:I

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_1
    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setFocuseState(Z)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->l:Z

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lzui/widget/BottomBarItem;->j:Z

    iget-object v0, p0, Lzui/widget/BottomBarItem;->q:Lzui/widget/BottomBarItem$OnSelectedListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lzui/widget/BottomBarItem$OnSelectedListener;->onSelected(Lzui/widget/BottomBarItem;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/BottomBarItem;->k:Z

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->j:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lzui/widget/BottomBarItem;->f(Z)V

    :cond_0
    return-void
.end method

.method c(Landroid/view/View;Landroid/view/MotionEvent;Landroid/graphics/Rect;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->m:Z

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->j:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->n:Z

    if-nez p1, :cond_2

    :goto_0
    invoke-direct {p0, v2}, Lzui/widget/BottomBarItem;->f(Z)V

    goto :goto_2

    :pswitch_1
    if-nez p3, :cond_0

    iget-object p1, p0, Lzui/widget/BottomBarItem;->f:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget-object p1, p0, Lzui/widget/BottomBarItem;->f:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    :goto_1
    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lzui/widget/BottomBarItem;->k:Z

    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->m:Z

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->j:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->n:Z

    if-nez p1, :cond_2

    goto :goto_0

    :pswitch_2
    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->k:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->j:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->m:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lzui/widget/BottomBarItem;->n:Z

    if-nez p1, :cond_1

    invoke-direct {p0, v1}, Lzui/widget/BottomBarItem;->setFocuseState(Z)V

    :cond_1
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->m:Z

    goto :goto_2

    :pswitch_3
    iput-boolean v2, p0, Lzui/widget/BottomBarItem;->k:Z

    iput-boolean v1, p0, Lzui/widget/BottomBarItem;->m:Z

    iget-boolean p2, p0, Lzui/widget/BottomBarItem;->l:Z

    xor-int/2addr p2, v1

    iput-boolean p2, p0, Lzui/widget/BottomBarItem;->n:Z

    invoke-direct {p0, v1}, Lzui/widget/BottomBarItem;->f(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->playSoundEffect(I)V

    :cond_2
    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public enableSelect(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/BottomBarItem;->l:Z

    return-void
.end method

.method public getImageResource()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getTextColor()Landroid/content/res/ColorStateList;
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method public isFocused()Z
    .locals 0

    iget-boolean p0, p0, Lzui/widget/BottomBarItem;->j:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    iget-object p0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->isSelected()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    iget-object v0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    iget-object v0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lzui/widget/BottomBarItem;->j:Z

    invoke-direct {p0, v1, p1}, Lzui/widget/BottomBarItem;->b(ZZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setFocused(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->f(Z)V

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->setFocuseState(Z)V

    return-void
.end method

.method public setImageResource(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    iget-object p0, p0, Lzui/widget/BottomBarItem;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnSelectedListener(Lzui/widget/BottomBarItem$OnSelectedListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/BottomBarItem;->q:Lzui/widget/BottomBarItem$OnSelectedListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    iget-object v0, p0, Lzui/widget/BottomBarItem;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public setText(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    iput-object p1, p0, Lzui/widget/BottomBarItem;->g:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lzui/widget/BottomBarItem;->d:Landroid/widget/TextView;

    iget-boolean v0, p0, Lzui/widget/BottomBarItem;->j:Z

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lzui/widget/BottomBarItem;->b(ZZ)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextDisabledColor(I)V
    .locals 0

    iput p1, p0, Lzui/widget/BottomBarItem;->h:I

    return-void
.end method

.method public setTextSize(I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/BottomBarItem;->g(I)V

    return-void
.end method
