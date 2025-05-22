.class public Lzui/preference/InLineEditTextPreference;
.super Landroid/preference/Preference;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/preference/InLineEditTextPreference$c;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/CharSequence;

.field private d:Ljava/lang/CharSequence;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Z

.field private h:Z

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/view/View;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Lzui/util/PreferenceBase;

.field private q:Landroid/view/View$OnFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->inLineEditTextPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/preference/InLineEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    iput v0, p0, Lzui/preference/InLineEditTextPreference;->n:I

    new-instance v1, Lzui/util/PreferenceBase;

    new-instance v2, Lzui/preference/InLineEditTextPreference$a;

    invoke-direct {v2, p0}, Lzui/preference/InLineEditTextPreference$a;-><init>(Lzui/preference/InLineEditTextPreference;)V

    invoke-direct {v1, v2}, Lzui/util/PreferenceBase;-><init>(Lzui/util/PreferenceBase$PreferenceCallback;)V

    iput-object v1, p0, Lzui/preference/InLineEditTextPreference;->p:Lzui/util/PreferenceBase;

    new-instance v1, Lzui/preference/InLineEditTextPreference$b;

    invoke-direct {v1, p0}, Lzui/preference/InLineEditTextPreference$b;-><init>(Lzui/preference/InLineEditTextPreference;)V

    iput-object v1, p0, Lzui/preference/InLineEditTextPreference;->q:Landroid/view/View$OnFocusChangeListener;

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->a:Landroid/content/Context;

    sget-object v1, Lzui/platform/R$styleable;->InLineEditTextPreference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_layout:I

    sget v3, Lzui/platform/R$layout;->preference_inline_edittext_zui:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lzui/preference/InLineEditTextPreference;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->ic_tether_password_zui:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->i:Landroid/graphics/drawable/Drawable;

    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lzui/platform/R$drawable;->ic_tether_password_visible_zui:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lzui/preference/InLineEditTextPreference;->j:Landroid/graphics/drawable/Drawable;

    sget v2, Lzui/platform/R$styleable;->InLineEditTextPreference_android_password:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->g:Z

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget v0, Lzui/platform/R$drawable;->button_focus_not_press_background_zui:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->o:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->p:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1, p2, p3, p4}, Lzui/util/PreferenceBase;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic a(Lzui/preference/InLineEditTextPreference;)V
    .locals 0

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    return-void
.end method

.method static synthetic b(Lzui/preference/InLineEditTextPreference;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic c(Lzui/preference/InLineEditTextPreference;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method private d(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->f(Landroid/view/View;Z)V

    :goto_0
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    :goto_1
    invoke-direct {p0, p1, v1}, Lzui/preference/InLineEditTextPreference;->f(Landroid/view/View;Z)V

    goto :goto_2

    :cond_0
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;->f(Landroid/view/View;Z)V

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-direct {p0, p1, v0}, Lzui/preference/InLineEditTextPreference;->f(Landroid/view/View;Z)V

    goto :goto_0

    :goto_2
    return-void
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    iget-boolean v1, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/preference/InLineEditTextPreference;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    iget-object v2, p0, Lzui/preference/InLineEditTextPreference;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->postInvalidate()V

    if-ltz v0, :cond_1

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    return-void
.end method

.method private f(Landroid/view/View;Z)V
    .locals 3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lzui/preference/InLineEditTextPreference;->o:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lzui/preference/InLineEditTextPreference;->o:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009d

    aput v2, v0, v1

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_0
    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
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


# virtual methods
.method public enablePasswordMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->g:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lzui/preference/InLineEditTextPreference;->e()V

    :cond_0
    return-void
.end method

.method public getEditorHintText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    :cond_0
    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getEditorText()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEditorView()Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    return-object p0
.end method

.method public isPasswordMode()Z
    .locals 0

    iget-boolean p0, p0, Lzui/preference/InLineEditTextPreference;->g:Z

    return p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    iget v0, p0, Lzui/preference/InLineEditTextPreference;->b:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lzui/platform/R$id;->editor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->g:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :cond_2
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->g:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->j:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->i:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    if-eqz p0, :cond_6

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lzui/preference/InLineEditTextPreference;->h:Z

    invoke-direct {p0}, Lzui/preference/InLineEditTextPreference;->e()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_1

    new-instance v0, Lzui/preference/InLineEditTextPreference$c;

    invoke-direct {v0}, Lzui/preference/InLineEditTextPreference$c;-><init>()V

    invoke-virtual {v0, v0}, Lzui/preference/InLineEditTextPreference$c;->setRealObject(Ljava/lang/Object;)V

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Lzui/preference/InLineEditTextPreference$c;->a(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    iget v0, p0, Lzui/preference/InLineEditTextPreference;->b:I

    if-lez v0, :cond_2

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lzui/preference/InLineEditTextPreference;->b:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget v0, Lzui/platform/R$id;->editor:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->q:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->k:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->p:Lzui/util/PreferenceBase;

    invoke-virtual {p0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    return-object p1

    :cond_2
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->p:Lzui/util/PreferenceBase;

    invoke-virtual {v0, p1}, Lzui/util/PreferenceBase;->adjustPaddings(Landroid/view/View;)V

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    return-object p0
.end method

.method public onKey(Landroid/view/KeyEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 v0, 0x3e

    const/4 v2, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    add-int/2addr p1, v1

    iput p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    if-le p1, v2, :cond_0

    iput v2, p0, Lzui/preference/InLineEditTextPreference;->n:I

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    sub-int/2addr p1, v1

    iput p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    if-gez p1, :cond_0

    iput v0, p0, Lzui/preference/InLineEditTextPreference;->n:I

    :cond_0
    :goto_0
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    invoke-direct {p0, p1}, Lzui/preference/InLineEditTextPreference;->d(I)V

    goto :goto_2

    :pswitch_2
    iput v0, p0, Lzui/preference/InLineEditTextPreference;->n:I

    invoke-direct {p0, v0}, Lzui/preference/InLineEditTextPreference;->d(I)V

    goto :goto_2

    :cond_1
    :pswitch_3
    iget p1, p0, Lzui/preference/InLineEditTextPreference;->n:I

    if-eq p1, v1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->f:Landroid/widget/ImageView;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    :goto_1
    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->onClick(Landroid/view/View;)V

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setActivated(Z)V
    .locals 2

    invoke-virtual {p0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lzui/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/Preference;->getParent()Landroid/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lzui/preference/PreferenceCategory;

    invoke-virtual {v0}, Lzui/preference/PreferenceCategory;->isCardStyle()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/preference/InLineEditTextPreference;->p:Lzui/util/PreferenceBase;

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    invoke-virtual {v1, p0, p1, v0}, Lzui/util/PreferenceBase;->setActivated(Landroid/view/View;ZZ)V

    return-void
.end method

.method public setBackGround(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->m:Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->l:Landroid/view/View;

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEditorHint(I)V
    .locals 1

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->setEditorHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorHint(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method

.method public setEditorText(I)V
    .locals 1

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lzui/preference/InLineEditTextPreference;->setEditorText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setEditorText(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->c:Ljava/lang/CharSequence;

    iget-object p1, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_3
    return-void
.end method

.method public setTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    iget-object v0, p0, Lzui/preference/InLineEditTextPreference;->k:Landroid/text/TextWatcher;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lzui/preference/InLineEditTextPreference;->k:Landroid/text/TextWatcher;

    iget-object p0, p0, Lzui/preference/InLineEditTextPreference;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method
