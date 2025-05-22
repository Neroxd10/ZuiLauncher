.class public Lzui/widget/StandardKeyboardViewX;
.super Landroid/inputmethodservice/KeyboardView;
.source ""

# interfaces
.implements Lzui/widget/IKeyboardViewX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/StandardKeyboardViewX$b;
    }
.end annotation


# static fields
.field public static final INVALID_COLOR:I = -0x1


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:Landroid/widget/EditText;

.field private F:I

.field private G:I

.field private H:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

.field private I:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

.field private J:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

.field private K:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

.field private L:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

.field private M:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

.field private a:Landroid/content/Context;

.field private b:Landroid/graphics/Paint;

.field private c:I

.field private d:Lzui/widget/StandardKeyboardViewX$b;

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field public mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

.field public mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

.field public mReDrawKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lzui/widget/StandardKeyboardViewX$b;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I

.field private y:Landroid/graphics/Canvas;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/StandardKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/StandardKeyboardViewX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/inputmethodservice/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->w:Z

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->A:I

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->B:I

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->C:I

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->D:I

    const/4 v1, 0x0

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->E:Landroid/widget/EditText;

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->F:I

    const v0, 0x7fffffff

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->H:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->I:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->J:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->K:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    iput-object v1, p0, Lzui/widget/StandardKeyboardViewX;->L:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    new-instance v0, Lzui/widget/StandardKeyboardViewX$a;

    invoke-direct {v0, p0}, Lzui/widget/StandardKeyboardViewX$a;-><init>(Lzui/widget/StandardKeyboardViewX;)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->M:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-direct {p0, p1, p2, p3}, Lzui/widget/StandardKeyboardViewX;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private A()V
    .locals 1

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->L:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;->onKeyPressPlaySoundEffect()V

    :cond_0
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->K:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;->onKeyPressHapticFeedback()V

    :cond_1
    return-void
.end method

.method private B()V
    .locals 6

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/StandardKeyboardViewX$b;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v0}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v5, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v3

    if-ne v5, v2, :cond_4

    iput-object v4, v0, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->n:I

    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->r:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    if-eqz v2, :cond_5

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->o:I

    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->q:Landroid/graphics/drawable/Drawable;

    iput-object v2, v0, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    :cond_5
    iput v1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->invalidate()V

    return-void
.end method

.method private C(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_9

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzui/widget/StandardKeyboardViewX$b;

    iget-object v2, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v3

    iget-object v2, v2, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    if-ne v4, v2, :cond_2

    goto :goto_4

    :cond_2
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v2, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    invoke-interface {v2, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_4

    :cond_3
    iget v2, v1, Lzui/widget/StandardKeyboardViewX$b;->b:I

    const/high16 v4, -0x40800000    # -1.0f

    if-eq v2, v3, :cond_4

    iget-object v5, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, p1, v5, v2, v4}, Lzui/widget/StandardKeyboardViewX;->i(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, p1, v2, v3, v4}, Lzui/widget/StandardKeyboardViewX;->i(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v2

    :goto_1
    iget-object v4, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v5, v4, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v5, :cond_6

    iget v5, v1, Lzui/widget/StandardKeyboardViewX$b;->c:I

    if-eq v5, v3, :cond_5

    invoke-direct {p0, p1, v4, v2, v5}, Lzui/widget/StandardKeyboardViewX;->k(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    goto :goto_2

    :cond_5
    invoke-direct {p0, p1, v4, v2, v3}, Lzui/widget/StandardKeyboardViewX;->k(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    :cond_6
    :goto_2
    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v1, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v2, :cond_7

    :goto_3
    invoke-direct {p0, p1, v1, v2}, Lzui/widget/StandardKeyboardViewX;->j(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_7
    iget-object v2, v1, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->l(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private D()V
    .locals 7

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v4, v1

    const/4 v6, -0x4

    if-ne v5, v6, :cond_2

    new-instance v4, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->k:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->e:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->c:I

    :goto_2
    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->mReDrawKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_2
    aget v5, v4, v1

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    new-instance v4, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->j:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->q:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_3
    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->n:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->p:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    :cond_4
    aget v5, v4, v1

    const/4 v6, -0x5

    if-ne v5, v6, :cond_5

    new-instance v4, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->n:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object v3, p0, Lzui/widget/StandardKeyboardViewX;->s:Landroid/graphics/drawable/Drawable;

    :goto_3
    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_5
    aget v4, v4, v1

    const/4 v5, -0x2

    if-ne v4, v5, :cond_6

    new-instance v4, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v4}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    iput-object v3, v4, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->g:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->c:I

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->n:I

    iput v3, v4, Lzui/widget/StandardKeyboardViewX$b;->b:I

    goto :goto_2

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method static synthetic a(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->B()V

    return-void
.end method

.method static synthetic b(Lzui/widget/StandardKeyboardViewX;I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->y(I)V

    return-void
.end method

.method static synthetic c(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->v()V

    return-void
.end method

.method static synthetic d(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->z()V

    return-void
.end method

.method static synthetic e(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->x()V

    return-void
.end method

.method static synthetic f(Lzui/widget/StandardKeyboardViewX;)V
    .locals 0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->w()V

    return-void
.end method

.method static synthetic g(Lzui/widget/StandardKeyboardViewX;I)V
    .locals 0

    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->u(I)V

    return-void
.end method

.method private getThemeFont()Landroid/graphics/Typeface;
    .locals 2

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    invoke-static {p0}, Lzui/themes/ThemeManager;->getInstance(Landroid/content/Context;)Lzui/themes/ThemeManager;

    move-result-object p0

    invoke-virtual {p0}, Lzui/themes/ThemeManager;->getSystemFont()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "system"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/system/theme/fonts/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".ttf"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_1
    return-object v0
.end method

.method private h()V
    .locals 12

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v0

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    mul-int/lit8 v2, v1, 0x9

    sub-int v2, v0, v2

    const/16 v3, 0xa

    div-int/2addr v2, v3

    mul-int/lit8 v4, v2, 0xa

    sub-int v4, v0, v4

    mul-int/lit8 v5, v1, 0x9

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v4, 0x2

    sub-int v5, v0, v5

    mul-int/lit8 v6, v1, 0x8

    sub-int v6, v5, v6

    mul-int/lit8 v7, v2, 0x7

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v1, 0x4

    sub-int v7, v5, v7

    mul-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    mul-int/lit8 v8, v6, 0x2

    sub-int/2addr v7, v8

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v5, v1

    sub-int/2addr v5, v8

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    const/4 v8, 0x0

    move v10, v4

    move v9, v8

    :goto_0
    if-ge v9, v3, :cond_1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/inputmethodservice/Keyboard$Key;

    iput v10, v11, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput v2, v11, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v11, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v11, v2

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v4

    :goto_1
    const/16 v10, 0x14

    if-ge v3, v10, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/inputmethodservice/Keyboard$Key;

    iput v9, v10, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput v2, v10, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v10, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v10, v2

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v3, v2, 0x9

    sub-int/2addr v0, v3

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    :goto_2
    const/16 v3, 0x1d

    if-ge v10, v3, :cond_3

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iput v0, v3, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iput v2, v3, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_3
    const/16 v9, 0x26

    if-ge v3, v9, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    iput v0, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v10, v9, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v10, v10, v8

    invoke-direct {p0, v10}, Lzui/widget/StandardKeyboardViewX;->r(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iput v6, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v9, v6

    goto :goto_4

    :cond_4
    iput v2, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v9, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v9, v2

    :goto_4
    add-int/2addr v0, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_9

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iput v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lzui/widget/StandardKeyboardViewX;->r(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iput v6, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v0, v6

    :goto_6
    add-int/2addr v4, v0

    goto :goto_7

    :cond_6
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    invoke-direct {p0, v3}, Lzui/widget/StandardKeyboardViewX;->t(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    if-eqz v3, :cond_7

    iput v7, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v0, v7

    goto :goto_6

    :cond_7
    iput v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v0, v5

    goto :goto_6

    :cond_8
    iput v2, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    add-int/2addr v0, v2

    goto :goto_6

    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->w:Z

    :cond_a
    :goto_8
    return-void
.end method

.method private i(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;
    .locals 4

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->k:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget p3, p0, Lzui/widget/StandardKeyboardViewX;->z:F

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move p4, p3

    :goto_1
    new-instance p3, Landroid/graphics/RectF;

    iget v0, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v1, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v3, p2

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingTop()I

    move-result p2

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    int-to-float p2, v3

    invoke-direct {p3, v0, v1, v2, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, p4, p4, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-object p3
.end method

.method private j(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget v0, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v4, p2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v4, v0

    iget p2, p2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getPaddingTop()I

    move-result p0

    add-int/2addr p2, p0

    add-int/2addr p2, v1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    add-int/2addr p2, p0

    invoke-virtual {p3, v2, v3, v4, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private k(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V
    .locals 2

    iget-object v0, p2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_1

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->g:I

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->i:Landroid/graphics/Typeface;

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->c:I

    int-to-float v0, v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p4, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p4

    iget v0, p3, Landroid/graphics/RectF;->bottom:F

    iget v1, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iget v1, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget p4, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float p4, p4

    sub-float/2addr v0, p4

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr v0, p4

    float-to-int p4, v0

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object p2, p2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Landroid/graphics/RectF;->centerX()F

    move-result p3

    int-to-float p4, p4

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private l(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    if-eqz v0, :cond_4

    iget v1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, -0x1

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->j:I

    :goto_0
    invoke-direct {p0, p1, v0, v1, v2}, Lzui/widget/StandardKeyboardViewX;->i(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;IF)Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    iget-object v2, v1, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    iget v1, v1, Lzui/widget/StandardKeyboardViewX$b;->c:I

    if-eq v1, v3, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->h:I

    :goto_1
    invoke-direct {p0, p1, v2, v0, v1}, Lzui/widget/StandardKeyboardViewX;->k(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/RectF;I)V

    :cond_2
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    iget-object v1, v0, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    if-eqz v1, :cond_3

    :goto_2
    invoke-direct {p0, p1, v0, v1}, Lzui/widget/StandardKeyboardViewX;->j(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_3
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lzui/platform/R$styleable;->StandardKeyboardViewX:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lzui/platform/R$styleable;->StandardKeyboardViewX_standard_editTextMinLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->F:I

    sget p2, Lzui/platform/R$styleable;->StandardKeyboardViewX_standard_editTextMaxLength:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->n()V

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->o()V

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->p()V

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->q()V

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->j:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_function_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->m:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_capslock_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->o:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_function_key_normal_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->n:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_normal_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->k:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_press_bg_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->l:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_text_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->g:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_key_text_press_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->h:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_text_normal_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->e:I

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$color;->standard_keyboard_view_confirm_key_text_press_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->f:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_key_text_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->c:I

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_key_rectangle_radius_corner:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->z:F

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->keyboardx_view_keyboard_key_delete_press:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->t:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_capslock_press:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->q:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_caps_lock_normal:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->r:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->standard_keyboard_view_keyboard_key_caps_lock_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->p:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v1, Lzui/platform/R$drawable;->keyboardx_view_keyboard_key_delete_icon:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lzui/platform/R$dimen;->standard_keyboard_view_keyboard_default_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->x:I

    return-void
.end method

.method private o()V
    .locals 2

    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->i:Landroid/graphics/Typeface;

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->getThemeFont()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->i:Landroid/graphics/Typeface;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 3

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v2, Lzui/platform/R$xml;->standard_keyboard_view_letter_number_key:I

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    new-instance v0, Landroid/inputmethodservice/Keyboard;

    iget-object v1, p0, Lzui/widget/StandardKeyboardViewX;->a:Landroid/content/Context;

    sget v2, Lzui/platform/R$xml;->standard_keyboard_view_symbols_key:I

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/Keyboard;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

    return-void
.end method

.method private q()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lzui/widget/StandardKeyboardViewX;->b:Landroid/graphics/Paint;

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->M:Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->setOnKeyboardActionListener(Landroid/inputmethodservice/KeyboardView$OnKeyboardActionListener;)V

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method

.method private r(I)Z
    .locals 5

    iget-boolean p0, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x2

    const/4 v3, -0x4

    const/4 v4, -0x5

    if-eqz p0, :cond_1

    if-eq p1, v4, :cond_0

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    return v0

    :cond_0
    return v1

    :cond_1
    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_2

    const/16 p0, 0x2e

    if-eq p1, p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method private s(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 p1, -0x1

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setTouchKey(Lzui/widget/StandardKeyboardViewX$b;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    return-void
.end method

.method private t(I)Z
    .locals 0

    const/16 p0, 0x20

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private u(I)V
    .locals 1

    int-to-char p1, p1

    :try_start_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->J:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->J:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    invoke-interface {p0, p1}, Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;->onKeyCharPress(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onKeyCharPress: get input char happens "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StandardKeyboardView"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private v()V
    .locals 3

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->H:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;->onKeyDeletePress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->E:Landroid/widget/EditText;

    if-eqz p0, :cond_1

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_1
    return-void
.end method

.method private w()V
    .locals 0

    iget-object p0, p0, Lzui/widget/StandardKeyboardViewX;->I:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;->onKeyDonePress()Z

    :cond_0
    return-void
.end method

.method private x()V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardSymbols:Landroid/inputmethodservice/Keyboard;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->v:Z

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    :goto_0
    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->requestSizeChanged()V

    return-void
.end method

.method private y(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v3, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_4

    new-instance v0, Lzui/widget/StandardKeyboardViewX$b;

    invoke-direct {v0}, Lzui/widget/StandardKeyboardViewX$b;-><init>()V

    iput-object v3, v0, Lzui/widget/StandardKeyboardViewX$b;->a:Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, -0x5

    if-eq p1, v1, :cond_3

    const/4 v1, -0x4

    if-eq p1, v1, :cond_2

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    goto :goto_2

    :cond_0
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->m:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->q:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->B()V

    goto :goto_2

    :cond_1
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->m:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->g:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->l:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->f:I

    :goto_1
    iput p1, v0, Lzui/widget/StandardKeyboardViewX$b;->c:I

    goto :goto_2

    :cond_3
    iget p1, p0, Lzui/widget/StandardKeyboardViewX;->m:I

    iput p1, v0, Lzui/widget/StandardKeyboardViewX$b;->b:I

    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->t:Landroid/graphics/drawable/Drawable;

    iput-object p1, v0, Lzui/widget/StandardKeyboardViewX$b;->d:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-direct {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setTouchKey(Lzui/widget/StandardKeyboardViewX$b;)V

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private z()V
    .locals 5

    invoke-virtual {p0}, Landroid/inputmethodservice/KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzui/widget/StandardKeyboardViewX;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v1, v3

    add-int/lit8 v4, v4, 0x20

    aput v4, v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->B()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lzui/widget/StandardKeyboardViewX;->u:Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lzui/widget/StandardKeyboardViewX;->s(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v1, v3

    add-int/lit8 v4, v4, -0x20

    aput v4, v1, v3

    goto :goto_1

    :cond_4
    iget-object v1, v1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    if-ne v1, v2, :cond_3

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->B()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->mKeyboardLetterNumber:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {p0, v0}, Lzui/widget/StandardKeyboardViewX;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    return-void
.end method


# virtual methods
.method public hideKeyboard()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    iget-boolean v0, p0, Lzui/widget/StandardKeyboardViewX;->w:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->h()V

    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onDraw(Landroid/graphics/Canvas;)V

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->y:Landroid/graphics/Canvas;

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->D()V

    iget-object p1, p0, Lzui/widget/StandardKeyboardViewX;->y:Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Lzui/widget/StandardKeyboardViewX;->C(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onEditTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/inputmethodservice/KeyboardView;->onSizeChanged(IIII)V

    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->A:I

    iput p2, p0, Lzui/widget/StandardKeyboardViewX;->B:I

    iput p3, p0, Lzui/widget/StandardKeyboardViewX;->C:I

    iput p4, p0, Lzui/widget/StandardKeyboardViewX;->D:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->d:Lzui/widget/StandardKeyboardViewX$b;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->A()V

    :goto_0
    return v0
.end method

.method public requestSizeChanged()V
    .locals 4

    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->A:I

    if-eqz v0, :cond_0

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->B:I

    if-eqz v1, :cond_0

    iget v2, p0, Lzui/widget/StandardKeyboardViewX;->C:I

    iget v3, p0, Lzui/widget/StandardKeyboardViewX;->D:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lzui/widget/StandardKeyboardViewX;->onSizeChanged(IIII)V

    :cond_0
    return-void
.end method

.method public setBindEditText(Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->E:Landroid/widget/EditText;

    return-void
.end method

.method public setEditTextMaxLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setEditTextMinLength(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lzui/widget/StandardKeyboardViewX;->F:I

    invoke-virtual {p0}, Lzui/widget/StandardKeyboardViewX;->updateKeyboardViewStatus()V

    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/inputmethodservice/KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    invoke-direct {p0}, Lzui/widget/StandardKeyboardViewX;->h()V

    return-void
.end method

.method public setOnKeyCharPressListener(Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->J:Lzui/widget/IKeyboardViewX$OnKeyCharPressListener;

    return-void
.end method

.method public setOnKeyDeletePressListener(Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->H:Lzui/widget/IKeyboardViewX$OnKeyDeletePressListener;

    return-void
.end method

.method public setOnKeyDonePressListener(Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->I:Lzui/widget/IKeyboardViewX$OnKeyDonePressListener;

    return-void
.end method

.method public setOnKeyPressHapticFeedbackListener(Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->K:Lzui/widget/IKeyboardViewX$OnKeyPressHapticFeedbackListener;

    return-void
.end method

.method public setOnKeyPressPlaySoundEffectListener(Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/StandardKeyboardViewX;->L:Lzui/widget/IKeyboardViewX$OnKeyPressPlaySoundEffectListener;

    return-void
.end method

.method public showKeyboard()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/inputmethodservice/KeyboardView;->setVisibility(I)V

    return-void
.end method

.method public updateKeyboardViewStatus()V
    .locals 5

    iget-object v0, p0, Lzui/widget/StandardKeyboardViewX;->E:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7fffffff

    iget v2, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    instance-of v4, v3, Landroid/text/InputFilter$LengthFilter;

    if-eqz v4, :cond_1

    check-cast v3, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {v3}, Landroid/text/InputFilter$LengthFilter;->getMax()I

    move-result v0

    iput v0, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget v0, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    iget v1, p0, Lzui/widget/StandardKeyboardViewX;->F:I

    if-ge v0, v1, :cond_3

    iput v1, p0, Lzui/widget/StandardKeyboardViewX;->G:I

    :cond_3
    return-void
.end method
