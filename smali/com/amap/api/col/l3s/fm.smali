.class public Lcom/amap/api/col/l3s/fm;
.super Landroid/widget/ScrollView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/col/l3s/fm$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/LinearLayout;

.field private e:I

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Bitmap;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/Runnable;

.field private q:I

.field private r:Lcom/amap/api/col/l3s/fm$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/amap/api/col/l3s/fm;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/col/l3s/fm;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/fm;->e:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->g:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    const-string v1, "#eeffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->j:I

    const-string v1, "#44383838"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->k:I

    const/4 v1, 0x4

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->l:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->m:I

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->b:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/amap/api/col/l3s/fm;->q:I

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/amap/api/col/l3s/er;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v2, "map_indoor_select.png"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object p1, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    new-instance p1, Lcom/amap/api/col/l3s/fm$1;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/fm$1;-><init>(Lcom/amap/api/col/l3s/fm;)V

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm;->p:Ljava/lang/Runnable;

    return-void
.end method

.method private static a(Landroid/content/Context;F)I
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->o:I

    return p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fm;I)I
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/fm;->o:I

    return p1
.end method

.method private a(I)V
    .locals 4

    iget v0, p0, Lcom/amap/api/col/l3s/fm;->e:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    div-int v1, p1, v0

    iget v2, p0, Lcom/amap/api/col/l3s/fm;->m:I

    add-int/2addr v1, v2

    rem-int v3, p1, v0

    div-int/2addr p1, v0

    if-nez v3, :cond_1

    add-int v1, p1, v2

    goto :goto_0

    :cond_1
    div-int/lit8 v0, v0, 0x2

    if-le v3, v0, :cond_2

    add-int/2addr p1, v2

    add-int/lit8 v1, p1, 0x1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_5

    iget-object v2, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-nez v2, :cond_3

    return-void

    :cond_3
    if-ne v1, v0, :cond_4

    const-string v3, "#0288ce"

    goto :goto_2

    :cond_4
    const-string v3, "#bbbbbb"

    :goto_2
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->e:I

    return p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->m:I

    return p0
.end method

.method private c()V
    .locals 10

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget v0, p0, Lcom/amap/api/col/l3s/fm;->m:I

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/amap/api/col/l3s/fm;->n:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    const/4 v3, 0x0

    if-ltz v0, :cond_2

    iget-object v4, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/amap/api/col/l3s/fm;->c:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0x11

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v5, p0, Lcom/amap/api/col/l3s/fm;->c:Landroid/content/Context;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v5, v7}, Lcom/amap/api/col/l3s/fm;->a(Landroid/content/Context;F)I

    move-result v5

    iget-object v7, p0, Lcom/amap/api/col/l3s/fm;->c:Landroid/content/Context;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/amap/api/col/l3s/fm;->a(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v6, v5, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    iget v5, p0, Lcom/amap/api/col/l3s/fm;->e:I

    if-nez v5, :cond_1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const v5, 0x1fffffff

    const/high16 v7, -0x80000000

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {v6, v3, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3s/fm;->e:I

    iget-object v5, p0, Lcom/amap/api/col/l3s/fm;->d:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    iget v8, p0, Lcom/amap/api/col/l3s/fm;->n:I

    mul-int/2addr v3, v8

    invoke-direct {v7, v9, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, p0, Lcom/amap/api/col/l3s/fm;->e:I

    iget v7, p0, Lcom/amap/api/col/l3s/fm;->n:I

    mul-int/2addr v5, v7

    invoke-direct {v3, v9, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/amap/api/col/l3s/fm;->a(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/amap/api/col/l3s/fm;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->r:Lcom/amap/api/col/l3s/fm$a;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v3, p0, Lcom/amap/api/col/l3s/fm;->b:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/amap/api/col/l3s/fm;->m:I

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->m:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v3, p0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_1
    :goto_0
    invoke-interface {v0, v2}, Lcom/amap/api/col/l3s/fm$a;->a(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method static synthetic e(Lcom/amap/api/col/l3s/fm;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm;->p:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic f(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->q:I

    return p0
.end method

.method static synthetic g(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->j:I

    return p0
.end method

.method static synthetic h(Lcom/amap/api/col/l3s/fm;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic i(Lcom/amap/api/col/l3s/fm;)[I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/amap/api/col/l3s/fm;->e:I

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->m:I

    mul-int v2, v1, p0

    const/4 v3, 0x0

    aput v2, v0, v3

    const/4 v2, 0x1

    add-int/2addr p0, v2

    mul-int/2addr v1, p0

    aput v1, v0, v2

    return-object v0
.end method

.method static synthetic j(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->h:I

    return p0
.end method

.method static synthetic k(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->k:I

    return p0
.end method

.method static synthetic l(Lcom/amap/api/col/l3s/fm;)I
    .locals 0

    iget p0, p0, Lcom/amap/api/col/l3s/fm;->l:I

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/fm;->i:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->r:Lcom/amap/api/col/l3s/fm$a;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/amap/api/col/l3s/fm;->r:Lcom/amap/api/col/l3s/fm$a;

    :cond_1
    return-void
.end method

.method public final a(Lcom/amap/api/col/l3s/fm$a;)V
    .locals 0

    iput-object p1, p0, Lcom/amap/api/col/l3s/fm;->r:Lcom/amap/api/col/l3s/fm$a;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3s/fm;->m:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    add-int/2addr v1, v0

    iput v1, p0, Lcom/amap/api/col/l3s/fm;->b:I

    new-instance p1, Lcom/amap/api/col/l3s/fm$3;

    invoke-direct {p1, p0, v0}, Lcom/amap/api/col/l3s/fm$3;-><init>(Lcom/amap/api/col/l3s/fm;I)V

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setVisibility(I)V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    aget-object v3, p1, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_1
    iget v1, p0, Lcom/amap/api/col/l3s/fm;->m:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fm;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/amap/api/col/l3s/fm;->c()V

    return-void
.end method

.method public final b()Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public fling(I)V
    .locals 0

    div-int/lit8 p1, p1, 0x3

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    invoke-direct {p0, p2}, Lcom/amap/api/col/l3s/fm;->a(I)V

    if-le p2, p4, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/amap/api/col/l3s/fm;->g:I

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onSizeChanged(IIII)V

    iput p1, p0, Lcom/amap/api/col/l3s/fm;->h:I

    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/col/l3s/fm;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/amap/api/col/l3s/fm;->o:I

    iget-object v0, p0, Lcom/amap/api/col/l3s/fm;->p:Ljava/lang/Runnable;

    iget v1, p0, Lcom/amap/api/col/l3s/fm;->q:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/ScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/amap/api/col/l3s/fm;->j:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget p1, p0, Lcom/amap/api/col/l3s/fm;->h:I

    if-nez p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/amap/api/col/l3s/fm;->c:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fm;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance p1, Lcom/amap/api/col/l3s/fm$2;

    invoke-direct {p1, p0}, Lcom/amap/api/col/l3s/fm$2;-><init>(Lcom/amap/api/col/l3s/fm;)V

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
