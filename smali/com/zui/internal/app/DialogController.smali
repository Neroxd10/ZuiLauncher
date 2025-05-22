.class public Lcom/zui/internal/app/DialogController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/internal/app/DialogController$e;,
        Lcom/zui/internal/app/DialogController$DialogParams;,
        Lcom/zui/internal/app/DialogController$d;
    }
.end annotation


# static fields
.field private static final y:Ljava/lang/String; = "DialogController"

.field private static z:I


# instance fields
.field protected final TEXTVIEW_MAX_WIDTH:I

.field private a:I

.field private b:I

.field private c:Landroid/view/View;

.field private d:I

.field private e:I

.field private f:Z

.field private g:Landroid/widget/Button;

.field private h:Ljava/lang/CharSequence;

.field private i:Landroid/os/Message;

.field private j:Landroid/widget/Button;

.field private k:Landroid/os/Message;

.field private l:Landroid/widget/Button;

.field private m:Ljava/lang/CharSequence;

.field protected mAdapter:Landroid/widget/ListAdapter;

.field protected mBtnCount:I

.field protected mButtonNegativeText:Ljava/lang/CharSequence;

.field protected final mContext:Landroid/content/Context;

.field protected mCustomView:Landroid/view/View;

.field protected mCustomizedLF:Z

.field protected final mDialogInterface:Landroid/content/DialogInterface;

.field protected mDisableAutoVerticalBtn:Z

.field protected mHandler:Landroid/os/Handler;

.field protected final mInflater:Landroid/view/LayoutInflater;

.field protected mIsCommonList:Z

.field protected mLayout:I

.field protected mListDivider:Landroid/graphics/drawable/Drawable;

.field protected mListItemLayout:I

.field protected mListLayout:I

.field protected mListView:Landroid/widget/ListView;

.field protected mListViewSelector:Landroid/graphics/drawable/Drawable;

.field protected mMessage:Ljava/lang/CharSequence;

.field protected mMessageView:Landroid/widget/TextView;

.field protected mMultiChoiceItemLayout:I

.field protected mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field protected mParentPanel:Landroid/view/View;

.field protected mScrollView:Landroid/widget/ScrollView;

.field protected mSingleChoiceItemLayout:I

.field protected mTitle:Ljava/lang/CharSequence;

.field public mTitleDivider:Landroid/view/View;

.field protected mTitleView:Landroid/widget/TextView;

.field protected mVerticalBtnDividerId:I

.field public final mWindow:Landroid/view/Window;

.field private n:Landroid/os/Message;

.field private o:Z

.field private p:Landroid/view/WindowManager;

.field private q:Landroid/view/OrientationEventListener;

.field private r:I

.field private s:I

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/widget/ImageView;

.field private v:Landroid/view/View;

.field private w:Z

.field private final x:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/internal/app/DialogController;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->s:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/zui/internal/app/DialogController;->w:Z

    new-instance v1, Lcom/zui/internal/app/DialogController$a;

    invoke-direct {v1, p0}, Lcom/zui/internal/app/DialogController$a;-><init>(Lcom/zui/internal/app/DialogController;)V

    iput-object v1, p0, Lcom/zui/internal/app/DialogController;->x:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mDialogInterface:Landroid/content/DialogInterface;

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    new-instance p3, Lcom/zui/internal/app/DialogController$d;

    invoke-direct {p3, p2}, Lcom/zui/internal/app/DialogController$d;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    sget p2, Lzui/platform/R$layout;->message_dialog:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_max_height_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->a:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_max_height_zui_horizontal:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_message_view_width_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    sget p2, Lzui/platform/R$layout;->select_dialog_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mListLayout:I

    sget p2, Lzui/platform/R$layout;->select_dialog_item_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mListItemLayout:I

    sget p2, Lzui/platform/R$layout;->select_dialog_singlechoice_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mSingleChoiceItemLayout:I

    sget p2, Lzui/platform/R$layout;->select_dialog_multichoice_zui:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mMultiChoiceItemLayout:I

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    sget v1, Lzui/platform/R$attr;->dialogTitleVerticalPadding:I

    invoke-virtual {p3, v1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/zui/internal/app/DialogController;->z:I

    if-gtz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->alert_dialog_padding_top_zui:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    sput p2, Lcom/zui/internal/app/DialogController;->z:I

    :cond_0
    sget p2, Lzui/platform/R$layout;->message_dialog_vertical_button_divider:I

    iput p2, p0, Lcom/zui/internal/app/DialogController;->mVerticalBtnDividerId:I

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->p:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic a(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->i:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic c(Lcom/zui/internal/app/DialogController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->o:Z

    return p1
.end method

.method static synthetic d(Lcom/zui/internal/app/DialogController;I)I
    .locals 0

    iput p1, p0, Lcom/zui/internal/app/DialogController;->e:I

    return p1
.end method

.method static synthetic e(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic f(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->k:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic g(Lcom/zui/internal/app/DialogController;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic h(Lcom/zui/internal/app/DialogController;)Landroid/os/Message;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->n:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic i(Lcom/zui/internal/app/DialogController;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->p:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic j(Lcom/zui/internal/app/DialogController;)I
    .locals 0

    iget p0, p0, Lcom/zui/internal/app/DialogController;->r:I

    return p0
.end method

.method static synthetic k()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/zui/internal/app/DialogController;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/zui/internal/app/DialogController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/zui/internal/app/DialogController;->w:Z

    return p0
.end method

.method private m(Landroid/widget/LinearLayout;Landroid/widget/Button;)V
    .locals 1

    invoke-virtual {p2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p1, p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private n(Landroid/widget/LinearLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget p0, p0, Lcom/zui/internal/app/DialogController;->mVerticalBtnDividerId:I

    invoke-virtual {v0, p0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method static o(Landroid/view/View;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/internal/app/DialogController;->o(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sget v2, Lcom/zui/internal/app/DialogController;->z:I

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result p0

    sget v3, Lcom/zui/internal/app/DialogController;->z:I

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private q(Landroid/view/View;)Landroid/view/View;
    .locals 2

    instance-of p0, p1, Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/widget/LinearLayout;

    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/widget/Button;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private r(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    sget-object v1, Lcom/zui/internal/app/DialogController;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleKeyEventForButtonPanel:keyUp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " focus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x1020019

    if-eq p1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x102001a

    if-eq p1, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    const v3, 0x102001b

    if-ne p1, v3, :cond_4

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v3

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestFocus()Z

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->q(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p0, v0, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p1

    sget v3, Lzui/platform/R$id;->buttonPanel:I

    if-ne p1, v3, :cond_4

    invoke-direct {p0, v0}, Lcom/zui/internal/app/DialogController;->q(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->focusableViewAvailable(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :goto_1
    move v1, v2

    :cond_4
    return v1
.end method

.method private s(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget p1, Lzui/platform/R$id;->divider:I

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private t(Landroid/view/ViewGroup;ZI)V
    .locals 1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/zui/internal/app/DialogController;->m:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->m(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    move p2, v0

    :cond_0
    iget-object p3, p0, Lcom/zui/internal/app/DialogController;->h:Ljava/lang/CharSequence;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->n(Landroid/widget/LinearLayout;)V

    :cond_1
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->m(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    goto :goto_0

    :cond_2
    move v0, p2

    :goto_0
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->n(Landroid/widget/LinearLayout;)V

    :cond_3
    iget-object p2, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    invoke-direct {p0, p1, p2}, Lcom/zui/internal/app/DialogController;->m(Landroid/widget/LinearLayout;Landroid/widget/Button;)V

    :cond_4
    return-void
.end method

.method private u(Landroid/view/ViewGroup;)V
    .locals 7

    const v0, 0x1020019

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->h:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    iget-object v4, p0, Lcom/zui/internal/app/DialogController;->h:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    :goto_0
    move v4, v0

    const v5, 0x102001a

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    :goto_1
    const v5, 0x102001b

    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->x:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->m:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    iget-object v6, p0, Lcom/zui/internal/app/DialogController;->m:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v0, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_2
    iput v4, p0, Lcom/zui/internal/app/DialogController;->mBtnCount:I

    if-eqz v0, :cond_5

    move v2, v3

    :cond_5
    if-nez v2, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_3
    invoke-direct {p0, p1}, Lcom/zui/internal/app/DialogController;->s(Landroid/view/View;)V

    goto :goto_5

    :cond_6
    if-ne v4, v3, :cond_7

    sget v0, Lzui/platform/R$id;->button_divider:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->f:Z

    if-nez v0, :cond_8

    const/4 v0, 0x2

    if-le v4, v0, :cond_9

    :cond_8
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mDisableAutoVerticalBtn:Z

    if-nez v0, :cond_9

    invoke-direct {p0, p1, v3, v4}, Lcom/zui/internal/app/DialogController;->t(Landroid/view/ViewGroup;ZI)V

    :cond_9
    :goto_4
    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->o:Z

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    :goto_5
    return-void
.end method

.method private v()V
    .locals 5

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v1, Lzui/platform/R$id;->parentPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v1, Lzui/platform/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v2, Lzui/platform/R$id;->buttonPanel:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v3, Lzui/platform/R$id;->contentPanel:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mParentPanel:Landroid/view/View;

    sget v4, Lzui/platform/R$id;->customPanel:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v3}, Lcom/zui/internal/app/DialogController;->setupCustomContent(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v0}, Lcom/zui/internal/app/DialogController;->setupTitle(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, v2}, Lcom/zui/internal/app/DialogController;->setupContent(Landroid/view/ViewGroup;)V

    invoke-direct {p0, v1}, Lcom/zui/internal/app/DialogController;->u(Landroid/view/ViewGroup;)V

    const/4 v2, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v4, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setClipToPadding(Z)V

    :cond_3
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget p0, p0, Lcom/zui/internal/app/DialogController;->e:I

    const/4 v1, -0x1

    if-le p0, v1, :cond_4

    invoke-virtual {v0, p0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/zui/internal/app/DialogController$b;

    invoke-direct {p3, p0, p2, p1}, Lcom/zui/internal/app/DialogController$b;-><init>(Lcom/zui/internal/app/DialogController;Landroid/view/ViewTreeObserver;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public customizeTextViewLineFeed(Landroid/widget/TextView;)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->mCustomizedLF:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "zh"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lzui/widget/TextView;

    if-eqz p0, :cond_0

    check-cast p1, Lzui/widget/TextView;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lzui/widget/TextView;->enableCustomizedLineFeed(Z)V

    :cond_0
    return-void
.end method

.method public getAllowedMaxHeight()I
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lcom/zui/internal/app/DialogController;->a:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    iget p0, p0, Lcom/zui/internal/app/DialogController;->a:I

    return p0
.end method

.method public getAllowedMaxHorizontalHeight()I
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-nez v1, :cond_1

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget p0, p0, Lcom/zui/internal/app/DialogController;->b:I

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    iget p0, p0, Lcom/zui/internal/app/DialogController;->b:I

    return p0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x2

    if-eq p1, v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->g:Landroid/widget/Button;

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->j:Landroid/widget/Button;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->l:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method public installContent()V
    .locals 2

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/zui/internal/app/DialogController;->mLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    invoke-direct {p0}, Lcom/zui/internal/app/DialogController;->v()V

    return-void
.end method

.method public installContent(Lcom/zui/internal/app/DialogController$DialogParams;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/zui/internal/app/DialogController$DialogParams;->apply(Lcom/zui/internal/app/DialogController;)V

    invoke-virtual {p0}, Lcom/zui/internal/app/DialogController;->installContent()V

    return-void
.end method

.method public isInLandscape()Z
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->p:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    instance-of v1, p0, Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_0
    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :cond_2
    :goto_0
    return v2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x14

    if-ne p1, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/zui/internal/app/DialogController;->r(Z)Z

    move-result v1

    goto :goto_0

    :cond_1
    const/16 p2, 0x13

    if-ne p1, p2, :cond_2

    invoke-direct {p0, v1}, Lcom/zui/internal/app/DialogController;->r(Z)Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public prepareWatchOrientation()V
    .locals 3

    new-instance v0, Lcom/zui/internal/app/DialogController$c;

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-direct {v0, p0, v1, v2}, Lcom/zui/internal/app/DialogController$c;-><init>(Lcom/zui/internal/app/DialogController;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->q:Landroid/view/OrientationEventListener;

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    iget-object p4, p0, Lcom/zui/internal/app/DialogController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->h:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->i:Landroid/os/Message;

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->mButtonNegativeText:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->k:Landroid/os/Message;

    goto :goto_0

    :cond_3
    iput-object p2, p0, Lcom/zui/internal/app/DialogController;->m:Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/zui/internal/app/DialogController;->n:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method public setCancelableOnOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->w:Z

    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->v:Landroid/view/View;

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleIcon(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->t:Landroid/graphics/drawable/Drawable;

    iput p1, p0, Lcom/zui/internal/app/DialogController;->s:I

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    iget p0, p0, Lcom/zui/internal/app/DialogController;->s:I

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setTitleIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->t:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->s:I

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVerticalAlignedButtons(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/zui/internal/app/DialogController;->f:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/zui/internal/app/DialogController;->f:Z

    :cond_0
    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->c:Landroid/view/View;

    iput p1, p0, Lcom/zui/internal/app/DialogController;->d:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->c:Landroid/view/View;

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/internal/app/DialogController;->d:I

    return-void
.end method

.method protected setupContent(Landroid/view/ViewGroup;)V
    .locals 4

    sget v0, Lzui/platform/R$id;->scrollView:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    sget v0, Lzui/platform/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessageView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setFocusable(Z)V

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-direct {p0}, Lcom/zui/internal/app/DialogController;->p()V

    :cond_1
    return-void
.end method

.method protected setupCustomContent(Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/zui/internal/app/DialogController;->d:I

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/zui/internal/app/DialogController;->o(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_4
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v2, Lzui/platform/R$id;->custom:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v0, p0, Lcom/zui/internal/app/DialogController;->mCustomView:Landroid/view/View;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_7

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_6
    const/16 p0, 0x8

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_1
    return-void
.end method

.method protected setupTitle(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->v:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->v:Landroid/view/View;

    invoke-virtual {p1, v3, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget p1, Lzui/platform/R$id;->title_template:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v4, Lzui/platform/R$id;->icon:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/zui/internal/app/DialogController;->mWindow:Landroid/view/Window;

    sget v4, Lzui/platform/R$id;->titleDivider:I

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/zui/internal/app/DialogController;->mTitleDivider:Landroid/view/View;

    if-eqz v0, :cond_3

    sget v0, Lzui/platform/R$id;->alertTitle:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->mTitle:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/zui/internal/app/DialogController;->TEXTVIEW_MAX_WIDTH:I

    invoke-virtual {p0, p1, v0, v3}, Lcom/zui/internal/app/DialogController;->adjustTextAlignment(Landroid/widget/TextView;Ljava/lang/CharSequence;I)V

    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget p1, p0, Lcom/zui/internal/app/DialogController;->s:I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/zui/internal/app/DialogController;->t:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->u:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public stopWatchScreenOrientation()V
    .locals 0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->q:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    return-void
.end method

.method public watchScreenOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->p:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/zui/internal/app/DialogController;->r:I

    iget-object v0, p0, Lcom/zui/internal/app/DialogController;->q:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    iget-object p0, p0, Lcom/zui/internal/app/DialogController;->q:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method
