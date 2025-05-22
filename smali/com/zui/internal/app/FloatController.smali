.class public Lcom/zui/internal/app/FloatController;
.super Lcom/zui/internal/app/DialogController;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/FloatController$FloatParams;
    }
.end annotation


# static fields
.field private static final l0:I

.field private static m0:I

.field private static n0:I

.field private static o0:I

.field private static p0:I


# instance fields
.field private A:Landroid/view/WindowManager;

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/graphics/drawable/Drawable;

.field private F:I

.field private G:I

.field private H:Landroid/graphics/Point;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private final M:I

.field private final N:I

.field private O:I

.field private P:I

.field private Q:I

.field private final R:I

.field private S:I

.field private T:I

.field private U:I

.field private V:I

.field private W:Landroid/widget/PopupWindow;

.field private X:Landroid/graphics/drawable/Drawable;

.field private Y:I

.field private Z:Z

.field private a0:Landroid/graphics/Rect;

.field private b0:Landroid/graphics/drawable/Drawable;

.field private c0:I

.field private d0:Landroid/view/View;

.field private e0:Lcom/zui/internal/menu/MenuBuilder;

.field private f0:Lzui/widget/ZuiMenuListAdapter;

.field private g0:Lzui/app/FloatDialog$MenuAdapter;

.field private h0:Landroid/widget/ListView;

.field private i0:Z

.field private j0:Z

.field k0:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/zui/internal/app/FloatController;

    const/16 v0, 0xe6

    const/16 v1, 0xfa

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/zui/internal/app/FloatController;->l0:I

    const/4 v0, 0x0

    sput v0, Lcom/zui/internal/app/FloatController;->o0:I

    sput v0, Lcom/zui/internal/app/FloatController;->p0:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    const/4 p2, -0x1

    iput p2, p0, Lcom/zui/internal/app/FloatController;->F:I

    iput p2, p0, Lcom/zui/internal/app/FloatController;->G:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/zui/internal/app/FloatController;->k0:I

    sget-object p3, Lzui/platform/R$styleable;->FloatDialog:[I

    sget v0, Lzui/platform/R$attr;->floatDialogStyle:I

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p3, v0, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_layout:I

    sget v1, Lzui/platform/R$layout;->float_dialog:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_listItemLayoutX:I

    sget v1, Lzui/platform/R$layout;->select_dialog_item_left_alignment:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_listDivider:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->E:Landroid/graphics/drawable/Drawable;

    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_maxHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_max_height_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->B:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_verticalPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_vertical_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->D:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_minWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_min_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->P:I

    iput v0, p0, Lcom/zui/internal/app/FloatController;->O:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_android_maxWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_max_width_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->Q:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_topMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_top_margin_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->T:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_bottomMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_top_margin_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->U:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_anchorMaskWinLayout:I

    sget v1, Lzui/platform/R$layout;->float_dialog_anchor_mask_window:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->V:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_maskWinBackground:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->b0:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$drawable;->float_dialog_mask_window_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->b0:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget v0, Lzui/platform/R$styleable;->FloatDialog_dialogBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$color;->float_dialog_background_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->Y:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_shadowPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_shadow_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->c0:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_listItemPadding:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->float_dialog_item_padding_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->R:I

    sget v0, Lzui/platform/R$styleable;->FloatDialog_cornerRadiusZui:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$dimen;->common_corner_radius_zui:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    sput v0, Lcom/zui/internal/app/FloatController;->m0:I

    new-instance v0, Lzui/widget/ZuiMenuListAdapter;

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    invoke-direct {v0, p1, v1}, Lzui/widget/ZuiMenuListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->f0:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x10102eb

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p3, p3, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_1
    sget p3, Lzui/platform/R$dimen;->action_bar_default_height_zui:I

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sput p3, Lcom/zui/internal/app/FloatController;->n0:I

    const-string p3, "status_bar_height"

    invoke-static {p3, p2}, Lzui/util/CommonUtils;->getAndroidInternalResDimen(Ljava/lang/String;I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/FloatController;->M:I

    const-string p3, "status_bar_height_landscape"

    invoke-static {p3, p2}, Lzui/util/CommonUtils;->getAndroidInternalResDimen(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/FloatController;->N:I

    iget-object p2, p0, Lcom/zui/internal/app/FloatController;->E:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    sput p2, Lcom/zui/internal/app/FloatController;->o0:I

    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->float_dialog_max_height_zui_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/FloatController;->C:I

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->A:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic A(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/FloatController;->Q:I

    return p1
.end method

.method static synthetic B(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/FloatController;->L:I

    return p1
.end method

.method static synthetic C(Lcom/zui/internal/app/FloatController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->X:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic D(Lcom/zui/internal/app/FloatController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->d0:Landroid/view/View;

    return-object p0
.end method

.method static synthetic E(Lcom/zui/internal/app/FloatController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->d0:Landroid/view/View;

    return-object p1
.end method

.method static synthetic F(Lcom/zui/internal/app/FloatController;)Lzui/app/FloatDialog$MenuAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->g0:Lzui/app/FloatDialog$MenuAdapter;

    return-object p0
.end method

.method static synthetic G(Lcom/zui/internal/app/FloatController;Lzui/app/FloatDialog$MenuAdapter;)Lzui/app/FloatDialog$MenuAdapter;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->g0:Lzui/app/FloatDialog$MenuAdapter;

    return-object p1
.end method

.method static synthetic H(Lcom/zui/internal/app/FloatController;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->H:Landroid/graphics/Point;

    return-object p1
.end method

.method static synthetic I(Lcom/zui/internal/app/FloatController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->Z:Z

    return p1
.end method

.method static synthetic J(Lcom/zui/internal/app/FloatController;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->e0:Lcom/zui/internal/menu/MenuBuilder;

    return-object p0
.end method

.method static synthetic K(Lcom/zui/internal/app/FloatController;Lcom/zui/internal/menu/MenuBuilder;)Lcom/zui/internal/menu/MenuBuilder;
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->e0:Lcom/zui/internal/menu/MenuBuilder;

    return-object p1
.end method

.method static synthetic L(Lcom/zui/internal/app/FloatController;)Lzui/widget/ZuiMenuListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->f0:Lzui/widget/ZuiMenuListAdapter;

    return-object p0
.end method

.method private M(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 4

    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/4 p3, 0x1

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const p3, -0x777778

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    sget p3, Lcom/zui/internal/app/FloatController;->m0:I

    int-to-float v2, p3

    int-to-float p3, p3

    invoke-virtual {v0, p2, v2, p3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    return-object p0
.end method

.method private N(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->b0:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/zui/internal/app/FloatController;->c0:I

    mul-int/lit8 v1, v0, 0x2

    add-int/2addr p2, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr p3, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->b0:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget p3, p0, Lcom/zui/internal/app/FloatController;->c0:I

    int-to-float v2, p3

    int-to-float p3, p3

    invoke-virtual {v1, p1, v2, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    :cond_0
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private O()V
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->F:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->j0:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->G:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->N:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/zui/internal/app/FloatController;->G:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->M:I

    :goto_0
    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->O:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->S:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private P(IZ)I
    .locals 6

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->B:I

    invoke-direct {p0, p1}, Lcom/zui/internal/app/FloatController;->V(I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v1, Lcom/zui/internal/app/FloatController;->n0:I

    sub-int v1, p1, v1

    :cond_0
    if-eqz p2, :cond_1

    iget v1, p0, Lcom/zui/internal/app/FloatController;->C:I

    :cond_1
    const/4 p1, 0x0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p2, :cond_4

    move p2, p1

    move v2, p2

    :goto_0
    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-ge p2, v3, :cond_3

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v4, 0x0

    invoke-interface {v3, p2, v4, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {p1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sget v5, Lcom/zui/internal/app/FloatController;->o0:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    if-le v2, v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    sget p2, Lcom/zui/internal/app/FloatController;->o0:I

    add-int/2addr p1, p2

    sub-int p1, v2, p1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    move p1, v2

    :cond_4
    :goto_1
    iget p0, p0, Lcom/zui/internal/app/FloatController;->c0:I

    mul-int/lit8 p2, p0, 0x2

    add-int/2addr p1, p2

    sget p2, Lcom/zui/internal/app/FloatController;->p0:I

    sub-int/2addr p1, p2

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    return p1
.end method

.method private Q()I
    .locals 7

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_2

    move v2, v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, v2, v5, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-le v5, v3, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    iget v0, p0, Lcom/zui/internal/app/FloatController;->R:I

    mul-int/lit8 v2, v0, 0x2

    add-int/2addr v2, v1

    iget v3, p0, Lcom/zui/internal/app/FloatController;->P:I

    if-ge v2, v3, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    iget p0, p0, Lcom/zui/internal/app/FloatController;->Q:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_1
    return v3
.end method

.method private R(I)V
    .locals 11

    iget p1, p0, Lcom/zui/internal/app/FloatController;->O:I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->A:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->j0:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/zui/internal/app/FloatController;->M:I

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/zui/internal/app/FloatController;->N:I

    :goto_0
    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/4 v5, 0x0

    if-nez v1, :cond_1

    iget-boolean v6, p0, Lcom/zui/internal/app/FloatController;->i0:Z

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    :goto_1
    invoke-direct {p0, v4, v2}, Lcom/zui/internal/app/FloatController;->P(IZ)I

    move-result v2

    iput v2, p0, Lcom/zui/internal/app/FloatController;->S:I

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/zui/internal/app/FloatController;->i0:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/zui/internal/app/FloatController;->F:I

    iget p1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v0, Lcom/zui/internal/app/FloatController;->n0:I

    sub-int/2addr p1, v0

    sub-int/2addr p1, v2

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int/2addr p1, v3

    iput p1, p0, Lcom/zui/internal/app/FloatController;->G:I

    const/high16 p1, 0x3f000000    # 0.5f

    move v7, p1

    goto/16 :goto_8

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/zui/internal/app/FloatController;->I:I

    if-eqz v4, :cond_4

    add-int/2addr v2, v4

    :cond_4
    iget v4, p0, Lcom/zui/internal/app/FloatController;->J:I

    if-eqz v4, :cond_5

    add-int/2addr v1, v4

    :cond_5
    div-int/lit8 v4, p1, 0x2

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/zui/internal/app/FloatController;->F:I

    iget-object v2, p0, Lcom/zui/internal/app/FloatController;->H:Landroid/graphics/Point;

    if-eqz v2, :cond_6

    iget v2, v2, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/zui/internal/app/FloatController;->F:I

    :cond_6
    iget v2, p0, Lcom/zui/internal/app/FloatController;->F:I

    iget v4, p0, Lcom/zui/internal/app/FloatController;->c0:I

    add-int/lit8 v6, v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    if-ge v2, v6, :cond_7

    add-int/2addr v4, v5

    iput v4, p0, Lcom/zui/internal/app/FloatController;->F:I

    goto :goto_3

    :cond_7
    add-int/2addr v2, p1

    add-int/2addr v2, v4

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v5, :cond_9

    sub-int/2addr v5, p1

    sub-int/2addr v5, v4

    iput v5, p0, Lcom/zui/internal/app/FloatController;->F:I

    iget p1, p0, Lcom/zui/internal/app/FloatController;->I:I

    if-gez p1, :cond_8

    add-int/2addr v5, p1

    iput v5, p0, Lcom/zui/internal/app/FloatController;->F:I

    :cond_8
    move p1, v7

    goto :goto_4

    :cond_9
    :goto_3
    move p1, v8

    :goto_4
    iget v2, p0, Lcom/zui/internal/app/FloatController;->D:I

    add-int v4, v1, v2

    iget v5, p0, Lcom/zui/internal/app/FloatController;->S:I

    add-int/2addr v4, v5

    iget v6, p0, Lcom/zui/internal/app/FloatController;->U:I

    add-int/2addr v4, v6

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v6, :cond_a

    :goto_5
    add-int/2addr v1, v2

    iput v1, p0, Lcom/zui/internal/app/FloatController;->G:I

    goto :goto_7

    :cond_a
    iget-object v4, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v9, v4, v2

    sub-int/2addr v9, v5

    iget v10, p0, Lcom/zui/internal/app/FloatController;->T:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_b

    sub-int/2addr v4, v2

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/zui/internal/app/FloatController;->G:I

    goto :goto_8

    :cond_b
    invoke-direct {p0, v6}, Lcom/zui/internal/app/FloatController;->V(I)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-boolean v2, p0, Lcom/zui/internal/app/FloatController;->i0:Z

    if-nez v2, :cond_c

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sget v1, Lcom/zui/internal/app/FloatController;->n0:I

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/zui/internal/app/FloatController;->S:I

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    goto :goto_6

    :cond_c
    iget v2, p0, Lcom/zui/internal/app/FloatController;->D:I

    add-int v3, v1, v2

    iget v4, p0, Lcom/zui/internal/app/FloatController;->S:I

    add-int/2addr v3, v4

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v3, v0, :cond_d

    goto :goto_5

    :cond_d
    iget v1, p0, Lcom/zui/internal/app/FloatController;->U:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v4

    :goto_6
    iput v0, p0, Lcom/zui/internal/app/FloatController;->G:I

    :goto_7
    move v7, v8

    :goto_8
    invoke-direct {p0, p1, v7}, Lcom/zui/internal/app/FloatController;->X(FF)V

    return-void
.end method

.method private S()V
    .locals 3

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/FloatController;->V:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->X:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    sget v1, Lcom/zui/internal/app/FloatController;->l0:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private T()Landroid/graphics/drawable/BitmapDrawable;
    .locals 5

    iget v0, p0, Lcom/zui/internal/app/FloatController;->c0:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->O:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iget v2, p0, Lcom/zui/internal/app/FloatController;->S:I

    sub-int/2addr v2, v0

    mul-int/2addr v1, v2

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    iget v4, p0, Lcom/zui/internal/app/FloatController;->Y:I

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/zui/internal/app/FloatController;->O:I

    sub-int/2addr v4, v0

    iget p0, p0, Lcom/zui/internal/app/FloatController;->S:I

    sub-int/2addr p0, v0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, p0, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-direct {v1, v3, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method private U()V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    return-void
.end method

.method private V(I)Z
    .locals 1

    iget p0, p0, Lcom/zui/internal/app/FloatController;->B:I

    sget v0, Lcom/zui/internal/app/FloatController;->n0:I

    add-int/2addr p0, v0

    if-le p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private W()V
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/internal/app/FloatController;->c0:I

    mul-int/lit8 v1, p0, 0x2

    mul-int/lit8 v2, p0, 0x2

    invoke-virtual {v0, p0, v1, p0, v2}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private X(FF)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_2

    cmpl-float p1, p2, v0

    if-nez p1, :cond_1

    sget p1, Lzui/platform/R$style;->FloatDialogRightBottomAnim:I

    goto :goto_0

    :cond_1
    sget p1, Lzui/platform/R$style;->FloatDialogRightTopAnim:I

    goto :goto_0

    :cond_2
    cmpl-float p1, p2, v0

    if-nez p1, :cond_3

    sget p1, Lzui/platform/R$style;->FloatDialogLeftBottomAnim:I

    goto :goto_0

    :cond_3
    sget p1, Lzui/platform/R$style;->FloatDialogLeftTopAnim:I

    :goto_0
    iput p1, p0, Lcom/zui/internal/app/FloatController;->k0:I

    return-void
.end method

.method private Y()V
    .locals 4

    iget-boolean v0, p0, Lcom/zui/internal/app/FloatController;->Z:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->S()V

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->W:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x33

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic w(Lcom/zui/internal/app/FloatController;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic x(Lcom/zui/internal/app/FloatController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->i0:Z

    return p1
.end method

.method static synthetic y(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/FloatController;->K:I

    return p1
.end method

.method static synthetic z(Lcom/zui/internal/app/FloatController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/FloatController;->B:I

    return p1
.end method


# virtual methods
.method public beforeShow(Landroid/graphics/Rect;)V
    .locals 4

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->a0:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->A:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->Q()I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/FloatController;->O:I

    invoke-direct {p0, p1}, Lcom/zui/internal/app/FloatController;->R(I)V

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->T()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget v0, p0, Lcom/zui/internal/app/FloatController;->O:I

    iget v1, p0, Lcom/zui/internal/app/FloatController;->c0:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/zui/internal/app/FloatController;->S:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    invoke-direct {p0, p1, v0, v2}, Lcom/zui/internal/app/FloatController;->M(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/zui/internal/app/FloatController;->O:I

    iget v2, p0, Lcom/zui/internal/app/FloatController;->c0:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/zui/internal/app/FloatController;->S:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v3, v2

    invoke-direct {p0, p1, v1, v3}, Lcom/zui/internal/app/FloatController;->N(Landroid/graphics/Bitmap;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public getAllowedMaxHeight()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/FloatController;->S:I

    return p0
.end method

.method public hideArchorView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->Z:Z

    return-void
.end method

.method public installContent()V
    .locals 2

    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->installContent()V

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/FloatController;->h0:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->h0:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/internal/app/FloatController;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->W()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->g0:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->e0:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/zui/internal/menu/MenuBuilder;->size()I

    move-result p1

    if-ge p2, p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->f0:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p1, p2}, Lzui/widget/ZuiMenuListAdapter;->onItemSelected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/zui/internal/app/FloatController$a;

    invoke-direct {p2, p0}, Lcom/zui/internal/app/FloatController$a;-><init>(Lcom/zui/internal/app/FloatController;)V

    const-wide/16 v0, 0xa

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/FloatController;->g0:Lzui/app/FloatDialog$MenuAdapter;

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->e0:Lcom/zui/internal/menu/MenuBuilder;

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->f0:Lzui/widget/ZuiMenuListAdapter;

    invoke-virtual {p0, p2}, Lzui/widget/ZuiMenuListAdapter;->getMenuId(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/zui/internal/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p1, p0}, Lzui/app/FloatDialog$MenuAdapter;->onFloatDialogItemSelected(Landroid/view/MenuItem;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public postCreate()V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public postShow(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->O()V

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->Y()V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    iget p0, p0, Lcom/zui/internal/app/FloatController;->k0:I

    invoke-virtual {p1, p0}, Landroid/view/Window;->setWindowAnimations(I)V

    return-void
.end method

.method public postStop()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/internal/app/FloatController;->U()V

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->g0:Lzui/app/FloatDialog$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/FloatController;->e0:Lcom/zui/internal/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/FloatController;->f0:Lzui/widget/ZuiMenuListAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lzui/widget/ZuiMenuListAdapter;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setArchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->d0:Landroid/view/View;

    return-void
.end method

.method public setGlobalOffset(Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/FloatController;->H:Landroid/graphics/Point;

    return-void
.end method

.method public setOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/FloatController;->j0:Z

    return-void
.end method

.method public setPositionOffset(II)V
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/FloatController;->I:I

    iput p2, p0, Lcom/zui/internal/app/FloatController;->J:I

    return-void
.end method
