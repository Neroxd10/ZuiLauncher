.class public Lzui/widget/KeyboardViewX;
.super Landroid/widget/LinearLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;,
        Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;,
        Lzui/widget/KeyboardViewX$OnKeyCharPressListener;,
        Lzui/widget/KeyboardViewX$OnKeyDonePressListener;,
        Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = 0x1e

.field public static final KEYBOARD_VIEW_TYPE_NORMAL:I = 0x0

.field public static final KEYBOARD_VIEW_TYPE_NUMBER:I = 0x1


# instance fields
.field private final A:Landroid/text/TextWatcher;

.field private a:I

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/EditText;

.field private d:I

.field private e:I

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/RelativeLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/ImageView;

.field private k:Z

.field private l:Lzui/widget/IKeyboardViewX;

.field private m:Landroid/view/animation/Animation;

.field private n:Landroid/view/animation/Animation;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Landroid/media/AudioManager;

.field private t:Landroid/view/WindowManager;

.field private u:Lzui/util/VibrationHelper;

.field private v:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

.field private w:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

.field private x:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

.field private y:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private z:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/KeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/KeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lzui/widget/KeyboardViewX;->a:I

    iput v0, p0, Lzui/widget/KeyboardViewX;->d:I

    const v1, 0x7fffffff

    iput v1, p0, Lzui/widget/KeyboardViewX;->e:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lzui/widget/KeyboardViewX;->k:Z

    iput-boolean v1, p0, Lzui/widget/KeyboardViewX;->o:Z

    iput-boolean v0, p0, Lzui/widget/KeyboardViewX;->p:Z

    new-instance v0, Lzui/widget/KeyboardViewX$a;

    invoke-direct {v0, p0}, Lzui/widget/KeyboardViewX$a;-><init>(Lzui/widget/KeyboardViewX;)V

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->A:Landroid/text/TextWatcher;

    invoke-direct {p0, p1, p2, p3}, Lzui/widget/KeyboardViewX;->h(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private A(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-interface {p0, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private B()V
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->E()V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->G()V

    return-void
.end method

.method private C(ZIZ)V
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->i:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->i:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p3, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    const/4 p3, 0x2

    if-eq p2, p3, :cond_4

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lzui/platform/R$dimen;->keyboardx_bottom_layout_height_no_navigation_bar:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method private D(I)V
    .locals 1

    iget v0, p0, Lzui/widget/KeyboardViewX;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lzui/widget/KeyboardViewX;->a:I

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lzui/widget/IKeyboardViewX;->hideKeyboard()V

    :cond_0
    iget p1, p0, Lzui/widget/KeyboardViewX;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget p1, Lzui/platform/R$id;->number_keyboard_view:I

    goto :goto_0

    :cond_1
    sget p1, Lzui/platform/R$id;->standard_keyboard_view:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lzui/widget/IKeyboardViewX;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->l()V

    return-void
.end method

.method private E()V
    .locals 3

    invoke-static {}, Lzui/util/CommonUtils;->isHasNavigationBar()Z

    move-result v0

    iget-object v1, p0, Lzui/widget/KeyboardViewX;->t:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-static {}, Lzui/util/CommonUtils;->isPadProduct()Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lzui/widget/KeyboardViewX;->F(IZZ)V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->H()V

    invoke-direct {p0, v0, v1, v2}, Lzui/widget/KeyboardViewX;->C(ZIZ)V

    return-void
.end method

.method private F(IZZ)V
    .locals 1

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->f:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout$LayoutParams;

    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_end:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    iget p1, p0, Lzui/widget/KeyboardViewX;->a:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_4
    if-nez p2, :cond_5

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_end:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_5
    iget p1, p0, Lzui/widget/KeyboardViewX;->a:I

    if-nez p1, :cond_6

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lzui/platform/R$dimen;->keyboardx_root_layout_margin_bottom:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_6
    :goto_0
    iget-object p0, p0, Lzui/widget/KeyboardViewX;->f:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private G()V
    .locals 2

    iget v0, p0, Lzui/widget/KeyboardViewX;->e:I

    iget v1, p0, Lzui/widget/KeyboardViewX;->d:I

    if-ge v0, v1, :cond_0

    iput v1, p0, Lzui/widget/KeyboardViewX;->e:I

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_1

    iget v1, p0, Lzui/widget/KeyboardViewX;->d:I

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setEditTextMinLength(I)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    iget v1, p0, Lzui/widget/KeyboardViewX;->e:I

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setEditTextMaxLength(I)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX;->showKeyboard()V

    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-boolean p0, p0, Lzui/widget/KeyboardViewX;->k:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/16 p0, 0x8

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private H()V
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->g:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->k:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->j:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->j:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->g:Landroid/widget/RelativeLayout;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lzui/widget/KeyboardViewX;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lzui/widget/KeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->o()V

    return-void
.end method

.method static synthetic c(Lzui/widget/KeyboardViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->q()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lzui/widget/KeyboardViewX;)Z
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->r()Z

    move-result p0

    return p0
.end method

.method static synthetic e(Lzui/widget/KeyboardViewX;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->p(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lzui/widget/KeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->s()V

    return-void
.end method

.method static synthetic g(Lzui/widget/KeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->t()V

    return-void
.end method

.method private h(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->s:Landroid/media/AudioManager;

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->t:Landroid/view/WindowManager;

    new-instance p1, Lzui/util/VibrationHelper;

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-direct {p1, v0}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->u:Lzui/util/VibrationHelper;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lzui/platform/R$styleable;->KeyboardViewX:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->a:I

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_editTextMinLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->d:I

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_editTextMaxLength:I

    const p3, 0x7fffffff

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/KeyboardViewX;->e:I

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_showPucker:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->k:Z

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_keyPressVibration:I

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->o:Z

    sget p2, Lzui/platform/R$styleable;->KeyboardViewX_keyboard_keyPressPlaySound:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lzui/widget/KeyboardViewX;->p:Z

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->j()V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->m()V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->B()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    sget v1, Lzui/platform/R$anim;->keyboardx_view_anim_in:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->m:Landroid/view/animation/Animation;

    new-instance v1, Lzui/widget/KeyboardViewX$h;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$h;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    sget v1, Lzui/platform/R$anim;->keyboardx_view_anim_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->n:Landroid/view/animation/Animation;

    new-instance v1, Lzui/widget/KeyboardViewX$i;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$i;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private j()V
    .locals 0

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->k()V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->i()V

    return-void
.end method

.method private k()V
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lzui/platform/R$layout;->keyboardx_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v0, Lzui/platform/R$id;->keyboardx_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->f:Landroid/widget/LinearLayout;

    sget v0, Lzui/platform/R$id;->keyboardx_top_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->g:Landroid/widget/RelativeLayout;

    sget v0, Lzui/platform/R$id;->keyboardx_content_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->h:Landroid/widget/RelativeLayout;

    sget v0, Lzui/platform/R$id;->keyboardx_bottom_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->i:Landroid/widget/RelativeLayout;

    sget v0, Lzui/platform/R$id;->keyboardx_view_pucker:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->j:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    new-instance v1, Lzui/widget/KeyboardViewX$b;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$b;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget v0, p0, Lzui/widget/KeyboardViewX;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lzui/platform/R$id;->number_keyboard_view:I

    goto :goto_0

    :cond_1
    sget v0, Lzui/platform/R$id;->standard_keyboard_view:I

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lzui/widget/IKeyboardViewX;

    iput-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->l()V

    return-void
.end method

.method private l()V
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lzui/widget/KeyboardViewX$c;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$c;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$d;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$d;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$e;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$e;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$f;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$f;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    new-instance v1, Lzui/widget/KeyboardViewX$g;

    invoke-direct {v1, p0}, Lzui/widget/KeyboardViewX$g;-><init>(Lzui/widget/KeyboardViewX;)V

    invoke-interface {v0, v1}, Lzui/widget/IKeyboardViewX;->setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V

    return-void
.end method

.method private m()V
    .locals 4

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_effects_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lzui/widget/KeyboardViewX;->q:Z

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "haptic_feedback_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    iput-boolean v2, p0, Lzui/widget/KeyboardViewX;->r:Z

    return-void
.end method

.method private n(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    iget v1, p0, Lzui/widget/KeyboardViewX;->e:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    iget v1, p0, Lzui/widget/KeyboardViewX;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object p0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lzui/widget/IKeyboardViewX;->onEditTextChanged(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 0

    invoke-virtual {p0}, Lzui/widget/KeyboardViewX;->hideKeyboard()V

    return-void
.end method

.method private p(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->x:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lzui/widget/KeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->u(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private q()Z
    .locals 2

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->v:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->v()Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private r()Z
    .locals 0

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->w:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lzui/widget/KeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private s()V
    .locals 1

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->y:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;->OnKeyPressHapticFeedback()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->w()Z

    :goto_0
    return-void
.end method

.method private t()V
    .locals 1

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->z:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;->OnKeyPressPlaySoundEffect()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->x()Z

    :goto_0
    return-void
.end method

.method private u(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->y(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->A(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private v()Z
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lzui/widget/KeyboardViewX;->y(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private w()Z
    .locals 4

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->o:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->r:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    const/16 v3, 0x80

    if-eq v0, v3, :cond_1

    const/16 v3, 0x90

    if-ne v0, v3, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lzui/widget/KeyboardViewX;->z(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x3

    invoke-virtual {p0, v2, v0}, Landroid/widget/LinearLayout;->performHapticFeedback(II)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method private x()Z
    .locals 2

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/widget/KeyboardViewX;->q:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lzui/widget/KeyboardViewX;->s:Landroid/media/AudioManager;

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method private y(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v2, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    iget-object v3, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3, v0, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    iget-object p1, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v1
.end method

.method private z(Z)Z
    .locals 8

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->u:Lzui/util/VibrationHelper;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x29

    const/16 v3, 0x29

    const/16 v4, 0x1e

    const/16 v5, 0x1e

    const/4 v6, -0x1

    move v7, p1

    invoke-virtual/range {v0 .. v7}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->n:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    return-void
.end method

.method public removeKeyboard()V
    .locals 0

    iget-object p0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lzui/widget/IKeyboardViewX;->hideKeyboard()V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 2

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setShowSoftInputOnFocus(Z)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/widget/KeyboardViewX;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lzui/widget/KeyboardViewX;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/widget/KeyboardViewX;->A:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lzui/widget/IKeyboardViewX;->setBindEditText(Landroid/widget/EditText;)V

    :cond_1
    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->B()V

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/KeyboardViewX;->e:I

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->G()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/KeyboardViewX;->d:I

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->G()V

    return-void
.end method

.method public setImageViewPuckerShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->k:Z

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->B()V

    return-void
.end method

.method public setKeyPressPlaySoundEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->p:Z

    return-void
.end method

.method public setKeyPressVibrationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/widget/KeyboardViewX;->o:Z

    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/KeyboardViewX;->D(I)V

    invoke-direct {p0}, Lzui/widget/KeyboardViewX;->B()V

    return-void
.end method

.method public setKeyboardVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/KeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->x:Lzui/widget/KeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->v:Lzui/widget/KeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/KeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->w:Lzui/widget/KeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->y:Lzui/widget/KeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/KeyboardViewX;->z:Lzui/widget/KeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->h:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->l:Lzui/widget/IKeyboardViewX;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX;->showKeyboard()V

    :cond_2
    iget-object v0, p0, Lzui/widget/KeyboardViewX;->m:Landroid/view/animation/Animation;

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    return-void
.end method
