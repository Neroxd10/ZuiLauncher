.class public Lzui/widget/NumberKeyboardViewX;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lzui/widget/IKeyboardViewX;


# static fields
.field private static final m:[I


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ImageButton;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/EditText;

.field private f:I

.field private g:I

.field private h:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

.field private i:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

.field private j:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

.field private k:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private l:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    sget v1, Lzui/platform/R$id;->num_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_5:I

    const/4 v2, 0x5

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_6:I

    const/4 v2, 0x6

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_7:I

    const/4 v2, 0x7

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_8:I

    const/16 v2, 0x8

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_9:I

    const/16 v2, 0x9

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_delete:I

    const/16 v2, 0xa

    aput v1, v0, v2

    sget v1, Lzui/platform/R$id;->num_done:I

    const/16 v2, 0xb

    aput v1, v0, v2

    sput-object v0, Lzui/widget/NumberKeyboardViewX;->m:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/NumberKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/NumberKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->e:Landroid/widget/EditText;

    const/4 v1, 0x0

    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->f:I

    const v1, 0x7fffffff

    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->h:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->i:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->j:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->k:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->l:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    invoke-direct {p0, p1, p2, p3}, Lzui/widget/NumberKeyboardViewX;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lzui/widget/NumberKeyboardViewX;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->h(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lzui/platform/R$styleable;->NumberKeyboardViewX:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->NumberKeyboardViewX_number_editTextMinLength:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/NumberKeyboardViewX;->f:I

    sget p3, Lzui/platform/R$styleable;->NumberKeyboardViewX_number_editTextMaxLength:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->d(Landroid/content/Context;)V

    invoke-direct {p0}, Lzui/widget/NumberKeyboardViewX;->c()V

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lzui/widget/NumberKeyboardViewX;->m:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v1, v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initKeyboardButtonViews: mNumberKeyboardButtonViews size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NumberKeyboardView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    new-instance v2, Lzui/widget/NumberKeyboardViewX$a;

    invoke-direct {v2, p0}, Lzui/widget/NumberKeyboardViewX$a;-><init>(Lzui/widget/NumberKeyboardViewX;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_2
    sget v0, Lzui/platform/R$id;->num_done:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->d:Landroid/widget/Button;

    sget v0, Lzui/platform/R$id;->num_delete:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lzui/widget/NumberKeyboardViewX;->c:Landroid/widget/ImageButton;

    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lzui/platform/R$string;->keyboardx_view_key_delete_text:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lzui/platform/R$layout;->number_keyboard_view:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->j:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->j:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    invoke-interface {p0, p1}, Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onNumberButtonClick: get input number happens "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NumberKeyboardView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lzui/platform/R$id;->num_delete:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lzui/widget/NumberKeyboardViewX;->h:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->e:Landroid/widget/EditText;

    if-eqz p0, :cond_2

    new-instance p1, Landroid/view/KeyEvent;

    const/4 v0, 0x0

    const/16 v1, 0x43

    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_2
    return-void
.end method

.method private g(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lzui/platform/R$id;->num_done:I

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->i:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()Z

    :cond_1
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lzui/platform/R$id;->num_delete:I

    const-string v2, "NumberKeyboardView"

    if-ne v0, v1, :cond_0

    const-string v0, "onNumberKeyboardButtonClick: num_delete"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->f(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget v1, Lzui/platform/R$id;->num_done:I

    if-ne v0, v1, :cond_1

    const-string v0, "onNumberKeyboardButtonClick: num_done"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->g(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNumberKeyboardButtonClick: num_done "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lzui/widget/NumberKeyboardViewX;->e(Landroid/view/View;)V

    :goto_0
    invoke-direct {p0}, Lzui/widget/NumberKeyboardViewX;->i()V

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->l:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;->onKeyPressPlaySoundEffect()V

    :cond_0
    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->k:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;->onKeyPressHapticFeedback()V

    :cond_1
    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public onEditTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/NumberKeyboardViewX;->f:I

    invoke-virtual {p0}, Lzui/widget/NumberKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->j:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->h:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->i:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->k:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/NumberKeyboardViewX;->l:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public updateKeyboardViewStatus()V
    .locals 6

    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->e:Landroid/widget/EditText;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x7fffffff

    iget v2, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v1, v0

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_3

    aget-object v4, v0, v2

    instance-of v5, v4, Landroid/text/InputFilter$LengthFilter;

    if-eqz v5, :cond_2

    check-cast v4, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v4}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    iput v0, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget v0, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->f:I

    if-ge v0, v1, :cond_4

    iput v1, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    :cond_4
    iget-object v0, p0, Lzui/widget/NumberKeyboardViewX;->e:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->c:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_4

    :cond_5
    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->f:I

    if-eqz v1, :cond_6

    if-ge v0, v1, :cond_6

    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->d:Landroid/widget/Button;

    invoke-virtual {p0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    iget v1, p0, Lzui/widget/NumberKeyboardViewX;->g:I

    if-ne v0, v1, :cond_8

    iget-object p0, p0, Lzui/widget/NumberKeyboardViewX;->a:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_7
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lzui/platform/R$id;->num_delete:I

    if-eq v1, v2, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    sget v2, Lzui/platform/R$id;->num_done:I

    if-eq v1, v2, :cond_7

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_3

    :cond_8
    :goto_4
    return-void
.end method
