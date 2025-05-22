.class public final Lcom/amap/api/col/l3s/fr;
.super Landroid/view/View;
.source ""


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Landroid/graphics/Bitmap;

.field private d:Landroid/graphics/Bitmap;

.field private e:Landroid/graphics/Bitmap;

.field private f:Landroid/graphics/Bitmap;

.field private g:Landroid/graphics/Bitmap;

.field private h:Landroid/graphics/Paint;

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:Landroid/content/Context;

.field private u:Z

.field private v:F

.field private w:F

.field private x:Z

.field private y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->i:Z

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->j:I

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->l:I

    const/16 v1, 0xa

    iput v1, p0, Lcom/amap/api/col/l3s/fr;->m:I

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->n:I

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    iput v1, p0, Lcom/amap/api/col/l3s/fr;->p:I

    const/16 v1, 0x8

    iput v1, p0, Lcom/amap/api/col/l3s/fr;->q:I

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->r:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->s:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/amap/api/col/l3s/fr;->v:F

    iput v2, p0, Lcom/amap/api/col/l3s/fr;->w:F

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fr;->x:Z

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->y:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/col/l3s/fr;->t:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/col/l3s/er;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "ap.data"

    invoke-virtual {v2, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    sget v4, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {v3, v4}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-static {p1}, Lcom/amap/api/col/l3s/er;->a(Landroid/content/Context;)Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "ap1.data"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/fr;->g:Landroid/graphics/Bitmap;

    sget v4, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {v3, v4}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iget-object v3, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/amap/api/col/l3s/fr;->j:I

    iget-object v3, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/icon_web_day.data"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_DAY_NAME:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/icon_web_night.data"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/autonavi/amap/mapcore/AMapEngineUtils;->LOGO_CUSTOM_ICON_NIGHT_NAME:Ljava/lang/String;

    invoke-static {}, Lcom/amap/api/col/l3s/ew;->a()Lcom/amap/api/col/l3s/ew;

    move-result-object p1

    new-instance v1, Lcom/amap/api/col/l3s/fr$1;

    invoke-direct {v1, p0}, Lcom/amap/api/col/l3s/fr$1;-><init>(Lcom/amap/api/col/l3s/fr;)V

    invoke-virtual {p1, v1}, Lcom/amap/api/col/l3s/ew;->a(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p0

    move-object p1, v0

    move-object v0, v2

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object p1, v0

    :goto_2
    :try_start_4
    const-string v1, "WaterMarkerView"

    const-string v2, "create"

    invoke-static {p0, v1, v2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    if-eqz v0, :cond_3

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    if-eqz p1, :cond_4

    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-void

    :catchall_6
    move-exception p0

    if-eqz v0, :cond_5

    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_5

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    if-eqz p1, :cond_6

    :try_start_8
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_6
    throw p0
.end method

.method static synthetic a(Lcom/amap/api/col/l3s/fr;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->t:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/col/l3s/fr;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/col/l3s/fr;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/fr;->f()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/col/l3s/fr;->g()V

    :goto_0
    iget v0, p0, Lcom/amap/api/col/l3s/fr;->p:I

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->m:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->q:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->j:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->n:I

    iget v0, p0, Lcom/amap/api/col/l3s/fr;->m:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    iput v1, p0, Lcom/amap/api/col/l3s/fr;->m:I

    :cond_2
    iget v0, p0, Lcom/amap/api/col/l3s/fr;->n:I

    if-gez v0, :cond_3

    iput v1, p0, Lcom/amap/api/col/l3s/fr;->n:I

    :cond_3
    return-void
.end method

.method private f()V
    .locals 2

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->v:F

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->v:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_0
    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->p:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->w:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->q:I

    return-void
.end method

.method private g()V
    .locals 3

    iget v0, p0, Lcom/amap/api/col/l3s/fr;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/amap/api/col/l3s/fr;->k:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/amap/api/col/l3s/fr;->p:I

    goto :goto_1

    :cond_0
    const/16 v2, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/amap/api/col/l3s/fr;->p:I

    :goto_1
    const/16 v0, 0x8

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->q:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    :cond_1
    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->g:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->g:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->g:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_4
    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_5
    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    iput-object v1, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string v0, "WaterMarkerView"

    const-string v1, "destory"

    invoke-static {p0, v0, v1}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->l:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->c()V

    return-void
.end method

.method public final a(IF)V
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sub-float/2addr v2, p2

    iput v2, p0, Lcom/amap/api/col/l3s/fr;->w:F

    goto :goto_0

    :cond_2
    sub-float/2addr v2, p2

    iput v2, p0, Lcom/amap/api/col/l3s/fr;->v:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->x:Z

    goto :goto_0

    :cond_3
    iput p2, p0, Lcom/amap/api/col/l3s/fr;->v:F

    iput-boolean v1, p0, Lcom/amap/api/col/l3s/fr;->x:Z

    :goto_0
    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->c()V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_2

    invoke-static {p2}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    iget-object p2, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fr;->f:Landroid/graphics/Bitmap;

    sget v0, Lcom/amap/api/col/l3s/u;->a:F

    invoke-static {p1, v0}, Lcom/amap/api/col/l3s/ex;->a(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-static {p2}, Lcom/amap/api/col/l3s/ex;->c(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "WaterMarkerView"

    const-string p2, "create"

    invoke-static {p0, p1, p2}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->i:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "WaterMarkerView"

    const-string v0, "changeBitmap"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public final b()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, Lcom/amap/api/col/l3s/fr;->m:I

    iget p0, p0, Lcom/amap/api/col/l3s/fr;->n:I

    add-int/lit8 p0, p0, -0x2

    invoke-direct {v0, v1, p0}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->q:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->c()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->y:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->j:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->j:I

    :cond_2
    return-void
.end method

.method public final c()V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/col/l3s/fr;->e()V

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/col/l3s/fr;->o:I

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->p:I

    invoke-virtual {p0}, Lcom/amap/api/col/l3s/fr;->c()V

    return-void
.end method

.method public final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    return-void
.end method

.method public final d(I)F
    .locals 3

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget p0, p0, Lcom/amap/api/col/l3s/fr;->w:F

    goto :goto_0

    :cond_2
    iget p0, p0, Lcom/amap/api/col/l3s/fr;->v:F

    :goto_0
    sub-float v1, v2, p0

    goto :goto_1

    :cond_3
    iget v1, p0, Lcom/amap/api/col/l3s/fr;->v:F

    :goto_1
    return v1
.end method

.method public final d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->s:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->s:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/amap/api/col/l3s/fr;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->j:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->k:I

    iget-object p1, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/amap/api/col/l3s/fr;->j:I

    :cond_3
    return-void
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lcom/amap/api/col/l3s/fr;->i:Z

    return p0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->u:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->r:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/amap/api/col/l3s/fr;->e()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->r:Z

    :cond_3
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->y:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->e:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->i:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->s:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->d:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->b:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_6
    iget-boolean v0, p0, Lcom/amap/api/col/l3s/fr;->s:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->c:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/amap/api/col/l3s/fr;->a:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, p0, Lcom/amap/api/col/l3s/fr;->m:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/col/l3s/fr;->n:I

    int-to-float v2, v2

    iget-object p0, p0, Lcom/amap/api/col/l3s/fr;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "WaterMarkerView"

    const-string v0, "onDraw"

    invoke-static {p0, p1, v0}, Lcom/amap/api/col/l3s/ka;->c(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
