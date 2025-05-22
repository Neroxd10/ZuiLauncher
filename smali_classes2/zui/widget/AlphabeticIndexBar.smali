.class public Lzui/widget/AlphabeticIndexBar;
.super Landroid/view/View;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;
    }
.end annotation


# instance fields
.field private A:Landroid/graphics/RectF;

.field private B:Landroid/graphics/RectF;

.field private C:Landroid/graphics/Paint;

.field private D:Landroid/text/TextPaint;

.field private E:Landroid/widget/PopupWindow;

.field private F:Landroid/widget/TextView;

.field private G:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

.field private H:Lzui/util/VibrationHelper;

.field private I:Landroid/os/Handler;

.field private J:Ljava/lang/Runnable;

.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Ljava/lang/String;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lzui/platform/R$attr;->alphabeticIndexBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lzui/widget/AlphabeticIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->B:Landroid/graphics/RectF;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->I:Landroid/os/Handler;

    new-instance v0, Lzui/widget/AlphabeticIndexBar$a;

    invoke-direct {v0, p0}, Lzui/widget/AlphabeticIndexBar$a;-><init>(Lzui/widget/AlphabeticIndexBar;)V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->J:Ljava/lang/Runnable;

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->m(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lzui/widget/AlphabeticIndexBar;->y:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lzui/widget/AlphabeticIndexBar;->k(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance p2, Landroid/text/TextPaint;

    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    new-instance p2, Lzui/util/VibrationHelper;

    invoke-direct {p2, p1}, Lzui/util/VibrationHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lzui/widget/AlphabeticIndexBar;->H:Lzui/util/VibrationHelper;

    return-void
.end method

.method static synthetic a(Lzui/widget/AlphabeticIndexBar;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private b(IF)V
    .locals 3

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lzui/widget/AlphabeticIndexBar;->l(IF)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    iget-boolean v2, p0, Lzui/widget/AlphabeticIndexBar;->z:Z

    invoke-direct {p0, p1, p2, v2}, Lzui/widget/AlphabeticIndexBar;->o(IFZ)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->p()V

    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    if-eq v0, p1, :cond_1

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->q()V

    :cond_1
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->G:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_2

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lzui/platform/R$layout;->alphabetic_index_bar_hint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lzui/widget/AlphabeticIndexBar;->F:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->j:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->F:Landroid/widget/TextView;

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->i:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->k:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    add-int/2addr v0, v1

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->m:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->k:I

    sub-int/2addr v0, v1

    iput v0, p0, Lzui/widget/AlphabeticIndexBar;->s:I

    iget-boolean v0, p0, Lzui/widget/AlphabeticIndexBar;->y:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    const-string v0, "status_bar_height_landscape"

    goto :goto_0

    :cond_1
    const-string v0, "status_bar_height_portrait"

    :goto_0
    invoke-static {v0, v1}, Lzui/util/CommonUtils;->getAndroidInternalResDimen(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_2

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->s:I

    add-int/2addr v1, v0

    iput v1, p0, Lzui/widget/AlphabeticIndexBar;->s:I

    :cond_2
    return-void
.end method

.method private d(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V
    .locals 2

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u2022"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    mul-int/2addr p2, v1

    int-to-float p2, p2

    add-float/2addr v0, p2

    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    add-float/2addr v0, p2

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->e:I

    int-to-float p0, p0

    invoke-virtual {p1, p3, v0, p0, p4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    invoke-direct {p0, v1, p2}, Lzui/widget/AlphabeticIndexBar;->i(Landroid/text/TextPaint;I)F

    move-result p0

    invoke-virtual {p1, v0, p3, p0, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private e(Landroid/graphics/Canvas;)V
    .locals 4

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->g:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    mul-int/2addr v3, v2

    int-to-float v3, v3

    add-float/2addr v0, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->f:I

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v0, v1, v2}, Lzui/widget/AlphabeticIndexBar;->d(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V

    :cond_0
    return-void
.end method

.method private f(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->b:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->C:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->c:I

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->d:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float/2addr v2, v1

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->D:Landroid/text/TextPaint;

    invoke-direct {p0, p1, v0, v2, v1}, Lzui/widget/AlphabeticIndexBar;->d(Landroid/graphics/Canvas;IFLandroid/text/TextPaint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private g(IFZ)Z
    .locals 4

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\u2022"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    add-int/lit8 p3, p1, 0x1

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_6

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_0

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_6

    sub-int/2addr p3, v1

    sub-int/2addr p3, v0

    int-to-float p3, p3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    float-to-double p1, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p1, v1

    :goto_1
    int-to-char p1, p1

    if-eq p1, v1, :cond_6

    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :goto_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    move v2, v0

    goto :goto_5

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p1, -0x1

    if-ltz p3, :cond_6

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    add-int/lit8 v1, p1, 0x1

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v1, :cond_6

    sub-int v3, v1, p3

    sub-int/2addr v3, v0

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr v3, p2

    float-to-double p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr p3, p1

    int-to-char p1, p3

    :goto_4
    if-eq p1, v1, :cond_6

    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->u:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p1, p1, 0x1

    int-to-char p1, p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->u:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v0, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    :cond_6
    :goto_5
    return v2
.end method

.method private h([Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-boolean p1, p0, Lzui/widget/AlphabeticIndexBar;->y:Z

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz p1, :cond_2

    sget p1, Lzui/platform/R$array;->alphabetic_index_bar_horizontal_values:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :cond_2
    sget p1, Lzui/platform/R$array;->alphabetic_index_bar_values:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    :cond_3
    :goto_2
    return-object p0
.end method

.method private i(Landroid/text/TextPaint;I)F
    .locals 2

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float p1, v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p1, v1

    sub-float/2addr p1, v0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    mul-int/2addr p2, p0

    int-to-float p2, p2

    add-float/2addr v0, p2

    div-int/lit8 p0, p0, 0x2

    int-to-float p0, p0

    add-float/2addr v0, p0

    add-float/2addr v0, p1

    return v0
.end method

.method private j()V
    .locals 3

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->I:Landroid/os/Handler;

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->J:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private k(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    sget-object v0, Lzui/platform/R$styleable;->AlphabeticIndexBar:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_background:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->b:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_textSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_text_size:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->d:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_dot_radius:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->e:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_textColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_text_color:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->c:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedCircleRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_focused_circle_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->h:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_focused_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->f:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_focusedBackgroundColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_focused_background:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->g:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintTextColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$color;->alphabetic_index_bar_hint_text_color:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->i:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintTextSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_hint_text_size:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->j:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_hintCircleRadius:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_hint_circle_radius:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->k:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_entries:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3}, Lzui/widget/AlphabeticIndexBar;->h([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_entryValues:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3}, Lzui/widget/AlphabeticIndexBar;->h([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Lzui/widget/AlphabeticIndexBar;->u:Ljava/util/List;

    iget-boolean p3, p0, Lzui/widget/AlphabeticIndexBar;->y:Z

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_item_height_horizontal:I

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_item_height:I

    :goto_0
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_itemHeight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_itemWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v0, Lzui/platform/R$dimen;->alphabetic_index_bar_width:I

    invoke-virtual {p4, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->l:I

    iget p3, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    iget-object p4, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    mul-int/2addr p3, p4

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->m:I

    iget-boolean p3, p0, Lzui/widget/AlphabeticIndexBar;->y:Z

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_horizontal_padding_horizontal:I

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_horizontal_padding:I

    :goto_1
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingStart:I

    const/4 v0, -0x1

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    if-ne p4, v0, :cond_2

    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingLeft:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    :cond_2
    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingEnd:I

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p4

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    if-ne p4, v0, :cond_3

    sget p4, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingRight:I

    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    :cond_3
    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    sget v1, Lzui/platform/R$dimen;->alphabetic_index_bar_vertical_padding:I

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    sget p3, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_paddingBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lzui/platform/R$dimen;->alphabetic_index_bar_vertical_padding:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->r:I

    sget p1, Lzui/platform/R$styleable;->AlphabeticIndexBar_android_defaultValue:I

    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    sget p1, Lzui/platform/R$styleable;->AlphabeticIndexBar_fallbackUpward:I

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lzui/widget/AlphabeticIndexBar;->z:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private l(IF)Z
    .locals 5

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "\u2022"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    if-ne p1, v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    if-ltz v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v4, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    int-to-float v3, v3

    int-to-float p1, p1

    sub-float/2addr p2, p1

    mul-float/2addr v3, p2

    float-to-double p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    add-int/2addr v0, p1

    int-to-char p1, v0

    iget-object p0, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private m(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private n(Z)V
    .locals 4

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    add-int/lit8 p1, v0, -0x1

    if-ltz p1, :cond_1

    add-int/lit8 p1, v0, -0x1

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    invoke-direct {p0, p1, v3, v2}, Lzui/widget/AlphabeticIndexBar;->o(IFZ)V

    goto :goto_0

    :cond_0
    add-int/lit8 p1, v0, 0x1

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    add-int/lit8 v3, p1, 0x1

    add-int/2addr p1, v2

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-direct {p0, v3, p1, v2}, Lzui/widget/AlphabeticIndexBar;->o(IFZ)V

    :cond_1
    :goto_0
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->q()V

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->p()V

    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->G:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->j()V

    :cond_3
    return-void
.end method

.method private o(IFZ)V
    .locals 1

    if-ltz p1, :cond_3

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-eqz p3, :cond_1

    :goto_0
    if-ltz p1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lzui/widget/AlphabeticIndexBar;->g(IFZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lzui/widget/AlphabeticIndexBar;->g(IFZ)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    goto :goto_3

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->c()V

    :cond_0
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->F:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    const/16 v1, 0x31

    const/4 v2, 0x0

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->s:I

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private q()V
    .locals 10

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->H:Lzui/util/VibrationHelper;

    const/4 v1, 0x2

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/16 v4, 0xa

    const/16 v5, 0xa

    const/16 v6, 0x32

    const/16 v7, 0x32

    const/4 v8, -0x1

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lzui/util/VibrationHelper;->startVibrationOrFail(IIIIIIIIZ)Z

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_3

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    const/16 v3, 0x1d

    if-lt v0, v3, :cond_0

    const/16 v4, 0x36

    if-gt v0, v4, :cond_0

    add-int/lit8 v0, v0, 0x41

    sub-int/2addr v0, v3

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-ne v0, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    const-string v0, "#"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lzui/widget/AlphabeticIndexBar;->setFocusAlphabet(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v1}, Lzui/widget/AlphabeticIndexBar;->n(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v2}, Lzui/widget/AlphabeticIndexBar;->n(Z)V

    :goto_1
    move v1, v2

    :cond_4
    if-eqz v1, :cond_5

    return v2

    :cond_5
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float v2, v1, v2

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->n:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iput v3, p0, Lzui/widget/AlphabeticIndexBar;->x:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gez v3, :cond_0

    iput v4, p0, Lzui/widget/AlphabeticIndexBar;->x:I

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v3, v6, :cond_1

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v5

    iput v3, p0, Lzui/widget/AlphabeticIndexBar;->x:I

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_4

    if-eq p1, v5, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_2
    :goto_1
    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->x:I

    invoke-direct {p0, p1, v2}, Lzui/widget/AlphabeticIndexBar;->b(IF)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->j()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->B:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :goto_2
    return v5

    :cond_5
    return v4
.end method

.method public getPaddingBottom()I
    .locals 0

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->r:I

    return p0
.end method

.method public getPaddingEnd()I
    .locals 0

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    return p0
.end method

.method public getPaddingStart()I
    .locals 0

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    return p0
.end method

.method public getPaddingTop()I
    .locals 0

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    return p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->I:Landroid/os/Handler;

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->J:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->E:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->f(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lzui/widget/AlphabeticIndexBar;->e(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget p1, p0, Lzui/widget/AlphabeticIndexBar;->l:I

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    add-int/2addr p1, p2

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    add-int/2addr p1, p2

    iget v0, p0, Lzui/widget/AlphabeticIndexBar;->m:I

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    add-int/2addr v0, v1

    add-int/2addr v0, p2

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget p2, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    int-to-float v0, p2

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    int-to-float v2, v1

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->l:I

    add-int/2addr v3, p2

    int-to-float p2, v3

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->m:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->B:Landroid/graphics/RectF;

    iget-object p2, p0, Lzui/widget/AlphabeticIndexBar;->A:Landroid/graphics/RectF;

    iget v0, p2, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    sub-float/2addr v0, v1

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    iget p0, p0, Lzui/widget/AlphabeticIndexBar;->r:I

    int-to-float p0, p0

    add-float/2addr p2, p0

    invoke-virtual {p1, v0, v2, v3, p2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public setFocusAlphabet(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lzui/widget/AlphabeticIndexBar;->setFocusAlphabet(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFocusAlphabet(Ljava/lang/String;Z)V
    .locals 5

    if-eqz p1, :cond_5

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lzui/widget/AlphabeticIndexBar;->t:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "\u2022"

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-le v3, v4, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_5

    iget-object v1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    iget v2, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    iput v0, p0, Lzui/widget/AlphabeticIndexBar;->v:I

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    if-eq v2, v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    if-nez p2, :cond_3

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->q()V

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->p()V

    :cond_3
    iget-object p1, p0, Lzui/widget/AlphabeticIndexBar;->G:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lzui/widget/AlphabeticIndexBar;->w:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;->OnFocusedAlphabetChanged(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-nez p2, :cond_5

    invoke-direct {p0}, Lzui/widget/AlphabeticIndexBar;->j()V

    :cond_5
    return-void
.end method

.method public setOnFocusedAlphabetChangeListener(Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;)V
    .locals 0

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->G:Lzui/widget/AlphabeticIndexBar$OnFocusedAlphabetChangeListener;

    return-void
.end method

.method public setPaddings(IIII)V
    .locals 0

    iput p1, p0, Lzui/widget/AlphabeticIndexBar;->o:I

    iput p2, p0, Lzui/widget/AlphabeticIndexBar;->q:I

    iput p3, p0, Lzui/widget/AlphabeticIndexBar;->p:I

    iput p4, p0, Lzui/widget/AlphabeticIndexBar;->r:I

    return-void
.end method

.method public setValidAlphabetList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lzui/widget/AlphabeticIndexBar;->u:Ljava/util/List;

    return-void
.end method
