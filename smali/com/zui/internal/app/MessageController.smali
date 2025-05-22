.class public Lcom/zui/internal/app/MessageController;
.super Lcom/zui/internal/app/DialogController;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/MessageController$MessageParams;,
        Lcom/zui/internal/app/MessageController$ClickableItem;,
        Lcom/zui/internal/app/MessageController$e;,
        Lcom/zui/internal/app/MessageController$f;,
        Lcom/zui/internal/app/MessageController$d;
    }
.end annotation


# instance fields
.field private A:I

.field private A0:Z

.field private B:I

.field private B0:I

.field private C:I

.field private C0:I

.field private D:I

.field private D0:I

.field private E:I

.field private E0:I

.field private final F:Ljava/lang/String;

.field private F0:Z

.field private G:[Ljava/lang/CharSequence;

.field private G0:Landroid/view/View;

.field private H:[Ljava/lang/CharSequence;

.field private I:Lzui/widget/PairedItemListAdapter;

.field private J:Lcom/zui/internal/app/MessageController$d;

.field private K:I

.field private L:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$e;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/widget/EditText;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/View;

.field private Q:Landroid/text/TextWatcher;

.field private R:Ljava/lang/CharSequence;

.field private S:Ljava/lang/CharSequence;

.field private T:Ljava/lang/CharSequence;

.field private U:Ljava/lang/CharSequence;

.field private V:Landroid/graphics/drawable/Drawable;

.field private W:Landroid/graphics/drawable/Drawable;

.field private final X:Ljava/lang/Runnable;

.field private final Y:I

.field private final Z:I

.field private a0:Landroid/widget/ScrollView;

.field private b0:Landroid/widget/CheckBox;

.field private c0:Ljava/lang/CharSequence;

.field private d0:Z

.field private e0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private f0:I

.field private g0:I

.field private h0:I

.field private i0:Landroid/graphics/drawable/Drawable;

.field private j0:I

.field private k0:Ljava/lang/CharSequence;

.field private l0:Ljava/lang/CharSequence;

.field private m0:I

.field public mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

.field private n0:Landroid/widget/ImageView;

.field private o0:Landroid/widget/TextView;

.field private p0:Landroid/widget/TextView;

.field private q0:Z

.field private r0:I

.field private s0:I

.field private t0:I

.field private u0:I

.field private v0:I

.field private w0:I

.field private x0:I

.field private y0:I

.field private z0:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/zui/internal/app/DialogController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    new-instance p2, Lcom/zui/internal/app/MessageController$a;

    invoke-direct {p2, p0}, Lcom/zui/internal/app/MessageController$a;-><init>(Lcom/zui/internal/app/MessageController;)V

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->X:Ljava/lang/Runnable;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/zui/internal/app/MessageController;->A0:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$string;->message_dialog_paired_message_separator:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->F:Ljava/lang/String;

    sget-object p2, Lzui/platform/R$styleable;->MessageDialog:[I

    sget p3, Lzui/platform/R$attr;->messageDialogStyle:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->MessageDialog_android_layout:I

    sget v0, Lzui/platform/R$layout;->message_dialog:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_infoLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_detailed_information:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->B:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_editorLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_editor:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->C:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_warningLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->D:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_permissionLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_permission:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->E:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_pairedItemHighlightTitleLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_item_highlight_title:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->f0:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_pairedItemHighlightMessageLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_item_highlight_message:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->g0:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_groupItemLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_group_item:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->h0:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_iconViewLayout:I

    sget v0, Lzui/platform/R$layout;->message_dialog_warning_icon_view:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->m0:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_textViewVerticalMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->message_dialog_text_vertical_margin_zui:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->Y:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_dialogWidth:I

    const/16 v0, 0x438

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->B0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_check_box_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->alert_dialog_max_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->s0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->alert_dialog_max_height_zui_horizontal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->t0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_max_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->C0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_max_height_zui_horizontal:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->D0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->center_dialog_width_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->E0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->bottom_bar_divider_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->v0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_extra_space:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->u0:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$dimen;->message_dialog_check_box_default_height_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/zui/internal/app/MessageController;->Z:I

    sget p3, Lzui/platform/R$styleable;->MessageDialog_android_editTextBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->V:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lzui/platform/R$drawable;->edit_text_zui:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->V:Landroid/graphics/drawable/Drawable;

    :cond_0
    sget p3, Lzui/platform/R$styleable;->MessageDialog_editTextErrorBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->W:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lzui/platform/R$drawable;->edit_text_error_bg_zui:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->W:Landroid/graphics/drawable/Drawable;

    :cond_1
    sget p1, Lzui/platform/R$styleable;->MessageDialog_verticalButtonDivider:I

    sget p3, Lzui/platform/R$layout;->message_dialog_vertical_button_divider:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/zui/internal/app/DialogController;->mVerticalBtnDividerId:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic A(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->Z:I

    return p0
.end method

.method static synthetic B(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->r0:I

    return p0
.end method

.method static synthetic C(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->r0:I

    return p1
.end method

.method static synthetic D(Lcom/zui/internal/app/MessageController;)Landroid/widget/ScrollView;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic E(Lcom/zui/internal/app/MessageController;)Lzui/widget/PairedItemListAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    return-object p0
.end method

.method static synthetic F(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->A:I

    return p0
.end method

.method static synthetic G(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->Z(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic H(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->a0(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic I(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->y0:I

    return p0
.end method

.method static synthetic J(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->y0:I

    return p1
.end method

.method static synthetic K(Lcom/zui/internal/app/MessageController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/internal/app/MessageController;->q0:Z

    return p0
.end method

.method static synthetic L(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->t0:I

    return p0
.end method

.method static synthetic M(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->s0:I

    return p0
.end method

.method static synthetic N(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->w0:I

    return p0
.end method

.method static synthetic O(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->w0:I

    return p1
.end method

.method static synthetic P(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->u0:I

    return p0
.end method

.method static synthetic Q(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->v0:I

    return p0
.end method

.method static synthetic R(Lcom/zui/internal/app/MessageController;)Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private S(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;Lcom/zui/internal/app/MessageController$e$a;ZZ)V
    .locals 7

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->h0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p3, Lcom/zui/internal/app/MessageController$e$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p4, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p4, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding_horizontal:I

    invoke-virtual {p0, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p4, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding:I

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v4, Lzui/platform/R$dimen;->message_dialog_group_item_title_bottom_padding:I

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move p0, p4

    :goto_0
    sget p4, Lzui/platform/R$id;->message:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iget-object v1, p3, Lcom/zui/internal/app/MessageController$e$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p4, Lzui/platform/R$id;->icon:I

    invoke-virtual {v0, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ImageView;

    iget-object v1, p3, Lcom/zui/internal/app/MessageController$e$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v3, p3, Lcom/zui/internal/app/MessageController$e$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p3, Lcom/zui/internal/app/MessageController$e$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    invoke-virtual {v4, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object p3, p3, Lcom/zui/internal/app/MessageController$e$a;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 p3, 0x0

    invoke-virtual {v3, p3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    const/16 p3, 0x8

    invoke-virtual {p4, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p4

    invoke-virtual {v0, p0, p3, p4, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result p3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result p4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p5

    invoke-virtual {v0, p3, p4, p5, p0}, Landroid/view/View;->setPadding(IIII)V

    :goto_2
    invoke-virtual {p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private T(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V
    .locals 1

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    sget p2, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget p2, Lzui/platform/R$id;->message:I

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    add-int/lit8 p7, p7, -0x1

    if-ne p6, p7, :cond_0

    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    invoke-virtual {p1, p0, p6, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private U(Z)V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->W:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->V:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private V()V
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->U(Z)V

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->X:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {p0, v1}, Lcom/zui/internal/app/MessageController;->U(Z)V

    :goto_0
    return-void
.end method

.method private W(ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/internal/app/MessageController;->Y:I

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/zui/internal/app/MessageController;->Y:I

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private X(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lcom/zui/internal/app/MessageController;->C:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->C:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    const v0, 0x1020005

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->P:Landroid/view/View;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->R:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->S:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->Q:Landroid/text/TextWatcher;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_2
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->V()V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private Y(Landroid/view/ViewGroup;)V
    .locals 8

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->m0:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    sget v1, Lzui/platform/R$id;->icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    sget v1, Lzui/platform/R$id;->message:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    sget v1, Lzui/platform/R$id;->iconHint:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    iget v1, p0, Lcom/zui/internal/app/MessageController;->j0:I

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->i0:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v4

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v5

    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v6

    iget-object v7, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {p0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private Z(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    array-length v3, v3

    if-lez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-nez v0, :cond_2

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    if-eqz v4, :cond_b

    :cond_2
    iget v4, p0, Lcom/zui/internal/app/MessageController;->B:I

    if-lez v4, :cond_b

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v5, v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v4, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    const-string v7, " "

    const-string v8, "\n"

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lzui/widget/PairedItemListAdapter;->getCount()I

    move-result v0

    :goto_2
    if-ge v1, v0, :cond_a

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->F:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v1}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v0, -0x1

    if-eq v1, v2, :cond_4

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_8

    :goto_3
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    array-length v6, v0

    if-ge v1, v6, :cond_a

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->F:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_7

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    array-length v3, v0

    if-ge v1, v3, :cond_a

    aget-object v0, v0, v1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    array-length v0, v0

    sub-int/2addr v0, v2

    if-eq v1, v0, :cond_9

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p0, 0x1001

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    goto :goto_5

    :cond_b
    const/4 p1, 0x0

    :goto_5
    return-object p1
.end method

.method private a0(Landroid/view/ViewGroup;)V
    .locals 12

    iget v0, p0, Lcom/zui/internal/app/MessageController;->K:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/zui/internal/app/MessageController;->f0:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/zui/internal/app/MessageController;->g0:I

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-lez v0, :cond_3

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v10, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lzui/widget/PairedItemListAdapter;->getCount()I

    move-result v1

    move v11, v2

    :goto_1
    if-ge v11, v1, :cond_3

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v11}, Lzui/widget/PairedItemListAdapter;->getItemTitle(I)Ljava/lang/CharSequence;

    move-result-object v6

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {v2, v11}, Lzui/widget/PairedItemListAdapter;->getItemMessage(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, v10

    move v8, v11

    move v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/zui/internal/app/MessageController;->T(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    array-length v1, v1

    move v11, v2

    :goto_2
    if-ge v11, v1, :cond_3

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    aget-object v6, v2, v11

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    aget-object v7, v2, v11

    move-object v2, p0

    move-object v3, p1

    move v4, v0

    move-object v5, v10

    move v8, v11

    move v9, v1

    invoke-direct/range {v2 .. v9}, Lcom/zui/internal/app/MessageController;->T(Landroid/view/ViewGroup;ILandroid/widget/LinearLayout$LayoutParams;Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method private b0(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 22

    move-object/from16 v6, p0

    iget v0, v6, Lcom/zui/internal/app/MessageController;->E:I

    if-lez v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/zui/internal/app/DialogController;->isInLandscape()Z

    move-result v7

    iget-object v0, v6, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    iget v1, v6, Lcom/zui/internal/app/MessageController;->E:I

    const/4 v8, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    iput-object v9, v6, Lcom/zui/internal/app/MessageController;->G0:Landroid/view/View;

    sget v0, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    const/16 v12, 0x8

    const/4 v13, -0x1

    if-eqz v10, :cond_8

    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->L:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v14, v13, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move v15, v8

    :goto_0
    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v15, v0, :cond_8

    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->L:Ljava/util/List;

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/zui/internal/app/MessageController$e;

    iget-object v0, v6, Lcom/zui/internal/app/MessageController;->L:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ne v15, v0, :cond_0

    move/from16 v17, v16

    goto :goto_1

    :cond_0
    move/from16 v17, v8

    :goto_1
    iget-object v0, v6, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lzui/platform/R$layout;->message_dialog_group:I

    invoke-virtual {v0, v1, v10, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_7

    iget-object v0, v5, Lcom/zui/internal/app/MessageController$e;->a:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lzui/platform/R$id;->groupTitle:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, v5, Lcom/zui/internal/app/MessageController$e;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget v0, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/LinearLayout;

    if-eqz v18, :cond_3

    move v3, v8

    :goto_2
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    if-eqz v17, :cond_2

    iget-object v0, v5, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v3, v0, :cond_2

    move/from16 v19, v16

    goto :goto_3

    :cond_2
    move/from16 v19, v8

    :goto_3
    iget-object v0, v5, Lcom/zui/internal/app/MessageController$e;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lcom/zui/internal/app/MessageController$e$a;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v14

    move/from16 v21, v3

    move-object/from16 v3, v20

    move-object v13, v4

    move v4, v7

    move-object/from16 v20, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/zui/internal/app/MessageController;->S(Landroid/view/ViewGroup;Landroid/widget/LinearLayout$LayoutParams;Lcom/zui/internal/app/MessageController$e$a;ZZ)V

    add-int/lit8 v3, v21, 0x1

    move-object v4, v13

    move-object/from16 v5, v20

    const/4 v13, -0x1

    goto :goto_2

    :cond_3
    move-object v13, v4

    sget v0, Lzui/platform/R$id;->divider:I

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz v17, :cond_4

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, v6, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v7, :cond_5

    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding_horizontal:I

    goto :goto_4

    :cond_5
    sget v3, Lzui/platform/R$dimen;->message_dialog_paired_item_vertical_padding:I

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    :goto_5
    invoke-virtual {v10, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v13, -0x1

    goto/16 :goto_0

    :cond_8
    if-eqz v11, :cond_f

    iget-object v0, v6, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v7, :cond_9

    sget v1, Lzui/platform/R$dimen;->message_dialog_permission_description_vertical_padding_horizontal:I

    goto :goto_6

    :cond_9
    sget v1, Lzui/platform/R$dimen;->message_dialog_permission_description_vertical_padding:I

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    if-eqz v1, :cond_d

    iget-object v2, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_c

    array-length v2, v2

    if-lez v2, :cond_c

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iget-object v3, v6, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    sget v4, Lzui/platform/R$color;->message_dialog_description_clickable_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    iget-object v4, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v4, v4, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickableTexts:[Ljava/lang/CharSequence;

    array-length v5, v4

    move v7, v8

    :goto_7
    if-ge v7, v5, :cond_b

    aget-object v10, v4, v7

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int/2addr v13, v12

    const/4 v14, -0x1

    if-le v12, v14, :cond_a

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-ge v12, v15, :cond_a

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v15

    if-ge v13, v15, :cond_a

    if-ge v12, v13, :cond_a

    new-instance v15, Landroid/text/style/UnderlineSpan;

    invoke-direct {v15}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v14, 0x21

    invoke-virtual {v2, v15, v12, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v15, Lcom/zui/internal/app/MessageController$f;

    iget-object v8, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v14, v8, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    iget-object v8, v8, Lcom/zui/internal/app/MessageController$ClickableItem;->mClickListener:Lzui/app/MessageDialog$OnDescriptionClickableTextListener;

    invoke-direct {v15, v6, v14, v10, v8}, Lcom/zui/internal/app/MessageController$f;-><init>(Lcom/zui/internal/app/MessageController;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lzui/app/MessageDialog$OnDescriptionClickableTextListener;)V

    const/16 v8, 0x21

    invoke-virtual {v2, v15, v12, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v10, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v10, v12, v13, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_a
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_7

    :cond_b
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iput-object v2, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    :cond_c
    iget-object v1, v6, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    iget-object v1, v1, Lcom/zui/internal/app/MessageController$ClickableItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {v11}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    invoke-virtual {v11, v2, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    :cond_d
    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    sget v1, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_8

    :cond_e
    const/4 v9, 0x0

    :cond_f
    :goto_8
    return-object v9
.end method

.method private c0(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    iget v0, p0, Lcom/zui/internal/app/MessageController;->D:I

    const/4 v1, 0x0

    if-lez v0, :cond_b

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    const/16 v2, 0x8

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    invoke-virtual {p0, v0, v5, v6}, Lcom/zui/internal/app/DialogController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/zui/internal/app/DialogController;->customizeTextViewLineFeed(Landroid/widget/TextView;)V

    :goto_0
    move v0, v3

    move v5, v4

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    array-length v5, v5

    if-lez v5, :cond_1

    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    array-length v5, v5

    if-gtz v5, :cond_2

    :cond_1
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    if-eqz v5, :cond_3

    :cond_2
    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->a0(Landroid/view/ViewGroup;)V

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/zui/internal/app/MessageController;->i0:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_5

    iget v5, p0, Lcom/zui/internal/app/MessageController;->j0:I

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, v0}, Lcom/zui/internal/app/MessageController;->Y(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v3, v3}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    move v0, v4

    :goto_2
    move v5, v0

    :goto_3
    const v6, 0x1020001

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    iget-object v6, p0, Lcom/zui/internal/app/MessageController;->c0:Ljava/lang/CharSequence;

    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_8

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->c0:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/zui/internal/app/MessageController;->d0:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->e0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_6
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v5, :cond_7

    invoke-direct {p0, v4, v3}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    goto :goto_4

    :cond_7
    iput-boolean v3, p0, Lcom/zui/internal/app/MessageController;->A0:Z

    invoke-direct {p0, v3, v3}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-nez v0, :cond_9

    invoke-direct {p0, v4, v4}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    :cond_9
    move v4, v5

    :goto_4
    if-nez v4, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, p1

    :goto_5
    if-eqz v1, :cond_b

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->c0:Ljava/lang/CharSequence;

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_b

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v0, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->a0:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    new-instance v2, Lcom/zui/internal/app/MessageController$c;

    invoke-direct {v2, p0, p1, v0}, Lcom/zui/internal/app/MessageController$c;-><init>(Lcom/zui/internal/app/MessageController;Landroid/view/ViewGroup;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_b
    return-object v1
.end method

.method private d0()V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->P:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->P:Landroid/view/View;

    const/16 v0, 0x8

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->P:Landroid/view/View;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method static synthetic w(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->x0:I

    return p0
.end method

.method static synthetic x(Lcom/zui/internal/app/MessageController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->z0:I

    return p0
.end method

.method static synthetic y(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->z0:I

    return p1
.end method

.method static synthetic z(Lcom/zui/internal/app/MessageController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->x0:I

    return p1
.end method


# virtual methods
.method public getAllowedHorizontalMaxWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->B0:I

    return p0
.end method

.method public getAllowedMaxHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/internal/app/MessageController;->F0:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->C0:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getAllowedMaxHorizontalHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/zui/internal/app/MessageController;->F0:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->D0:I

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/zui/internal/app/DialogController;->getAllowedMaxHorizontalHeight()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCenterDialogWidth()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->E0:I

    return p0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    return-object p0
.end method

.method public getEditor()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    return-object p0
.end method

.method public getEditorErrorText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->S:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditorPromptText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->R:Ljava/lang/CharSequence;

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getType()I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/MessageController;->A:I

    return p0
.end method

.method public onDismiss()V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->X:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->J:Lcom/zui/internal/app/MessageController$d;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lzui/widget/PairedItemListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->J:Lcom/zui/internal/app/MessageController$d;

    :cond_1
    return-void
.end method

.method public onShow()V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->J:Lcom/zui/internal/app/MessageController$d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/zui/internal/app/MessageController$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zui/internal/app/MessageController$d;-><init>(Lcom/zui/internal/app/MessageController;Lcom/zui/internal/app/MessageController$a;)V

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->J:Lcom/zui/internal/app/MessageController$d;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    invoke-virtual {p0, v0}, Lzui/widget/PairedItemListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    return-void
.end method

.method public setCheckMessage(Ljava/lang/CharSequence;Z)V
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->c0:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-boolean p1, p0, Lcom/zui/internal/app/MessageController;->d0:Z

    if-eq p1, p2, :cond_0

    iput-boolean p2, p0, Lcom/zui/internal/app/MessageController;->d0:Z

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->c0:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    iget-boolean p2, p0, Lcom/zui/internal/app/MessageController;->d0:Z

    if-eq p1, p2, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-direct {p0, v0, p2}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    invoke-direct {p0, v0, v0}, Lcom/zui/internal/app/MessageController;->W(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setDescriptionItem(Lcom/zui/internal/app/MessageController$ClickableItem;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->mDescriptionItem:Lcom/zui/internal/app/MessageController$ClickableItem;

    return-void
.end method

.method public setDialogCenter(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->F0:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/internal/app/MessageController;->C0:I

    iput p1, p0, Lcom/zui/internal/app/MessageController;->s0:I

    :cond_0
    return-void
.end method

.method public setEditorErrorMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->U:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->O:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->V()V

    :cond_2
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->d0()V

    :cond_3
    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->S:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->S:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->S:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setEditorPromptMessage(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->T:Ljava/lang/CharSequence;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->N:Landroid/widget/TextView;

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    invoke-direct {p0}, Lcom/zui/internal/app/MessageController;->d0()V

    :cond_4
    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->R:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->R:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->R:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setEditorTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->Q:Landroid/text/TextWatcher;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->Q:Landroid/text/TextWatcher;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->M:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method

.method public setGroupList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/zui/internal/app/MessageController$e;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->L:Ljava/util/List;

    return-void
.end method

.method public setIcon(I)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/app/MessageController;->i0:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/internal/app/MessageController;->j0:I

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->i0:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/app/MessageController;->j0:I

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->i0:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/app/MessageController;->j0:I

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->n0:Landroid/widget/ImageView;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    const/16 p2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    iget-object p3, p0, Lcom/zui/internal/app/MessageController;->k0:Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->o0:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zui/internal/app/MessageController;->l0:Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->p0:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setInHorizontalMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->q0:Z

    return-void
.end method

.method public setInPCMode(Z)V
    .locals 0

    return-void
.end method

.method public setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/MessageController;->e0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->e0:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    iget-object p0, p0, Lcom/zui/internal/app/MessageController;->b0:Landroid/widget/CheckBox;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_0
    return-void
.end method

.method public setPairedItem(Lzui/widget/PairedItemListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->I:Lzui/widget/PairedItemListAdapter;

    iput p2, p0, Lcom/zui/internal/app/MessageController;->K:I

    return-void
.end method

.method public setPairedItems([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/MessageController;->G:[Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/zui/internal/app/MessageController;->H:[Ljava/lang/CharSequence;

    iput p3, p0, Lcom/zui/internal/app/MessageController;->K:I

    return-void
.end method

.method public setShowEmptySpace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/MessageController;->A0:Z

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/MessageController;->A:I

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController;->setupContent(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/zui/internal/app/MessageController;->A:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->b0(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->X(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->Z(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/zui/internal/app/MessageController;->c0(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_0
    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-nez v1, :cond_5

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_1
    move v2, v4

    :cond_6
    if-eqz v2, :cond_7

    iget-boolean p0, p0, Lcom/zui/internal/app/MessageController;->A0:Z

    if-eqz p0, :cond_7

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method protected setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/zui/internal/app/DialogController;->setupCustomContent(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    new-instance v2, Lcom/zui/internal/app/MessageController$b;

    invoke-direct {v2, p0, v0, p1}, Lcom/zui/internal/app/MessageController$b;-><init>(Lcom/zui/internal/app/MessageController;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public shouldCancelDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
