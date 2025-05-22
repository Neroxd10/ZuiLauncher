.class public Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;


# static fields
.field public static SCRIM_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static SYSUI_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static u:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/BroadcastReceiver;

.field private final b:Landroid/graphics/Rect;

.field private final c:Lcom/zui/launcher/Launcher;

.field private final d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

.field private final e:Landroid/view/View;

.field private f:Lcom/zui/launcher/Workspace;

.field private g:Z

.field private h:Z

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Bitmap;

.field private final l:I

.field private final m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:F

.field private p:I

.field private q:F

.field private r:Z

.field private s:Z

.field private t:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$a;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "scrimProgress"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$a;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->SCRIM_PROGRESS:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$b;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "sysUiProgress"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->SYSUI_PROGRESS:Landroid/util/Property;

    new-instance v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$c;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "sysUiAnimMultiplier"

    invoke-direct {v0, v1, v2}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->u:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$d;

    invoke-direct {v0, p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim$d;-><init>(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->a:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->b:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j:Landroid/graphics/Paint;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->p:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    iput-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    iput v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->t:F

    iput-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x43480000    # 200.0f

    invoke-static {v2, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iput v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->l:I

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f04036f

    invoke-static {v1, v2}, Lcom/zui/launcher/util/Themes;->getAttrDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->createDitheredAlphaMask()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->k:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->r:Z

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->o:F

    return p0
.end method

.method static synthetic b(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->k(F)V

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    return p0
.end method

.method static synthetic d(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->l(F)V

    return-void
.end method

.method static synthetic e(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->t:F

    return p0
.end method

.method static synthetic f(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;F)F
    .locals 0

    iput p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->t:F

    return p1
.end method

.method static synthetic g(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i()V

    return-void
.end method

.method static synthetic h(Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    return p1
.end method

.method private i()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j()V

    iget-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->r:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->invalidate()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 3

    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    iget v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->t:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j:Landroid/graphics/Paint;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_0
    return-void
.end method

.method private k(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->o:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->o:F

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->p:I

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->invalidate()V

    :cond_0
    return-void
.end method

.method private l(F)V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    invoke-direct {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i()V

    :cond_0
    return-void
.end method


# virtual methods
.method public createDitheredAlphaMask()Landroid/graphics/Bitmap;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v2

    const/high16 v3, 0x43fa0000    # 500.0f

    invoke-static {v3, v1}, Lcom/zui/launcher/ResourceUtils;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v1

    iget v0, v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->l:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/graphics/Paint;

    const/4 v4, 0x4

    invoke-direct {v8, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v4, Landroid/graphics/LinearGradient;

    int-to-float v7, v1

    const/4 v1, 0x3

    new-array v14, v1, [I

    const/4 v5, 0x0

    const v6, 0xffffff

    aput v6, v14, v5

    const/4 v5, -0x1

    const/16 v6, 0xf2

    invoke-static {v5, v6}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v6

    const/4 v9, 0x1

    aput v6, v14, v9

    const/4 v6, 0x2

    aput v5, v14, v6

    new-array v15, v1, [F

    fill-array-data v15, :array_0

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v9, v4

    move v13, v7

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    int-to-float v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->p:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->f:Lcom/zui/launcher/Workspace;

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getCurrentDragOverlappingLayout()Lcom/zui/launcher/CellLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getHotseat()Lcom/zui/launcher/HotseatLayout;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->b:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_0
    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->n:I

    iget v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->p:I

    invoke-static {v0, v1}, Lcom/zui/launcher/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    iget-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->r:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->q:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x0

    if-gtz v0, :cond_2

    iput-boolean v2, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->t:F

    invoke-direct {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j()V

    sget-object v0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->u:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v3, v1, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v2

    invoke-static {p0, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v3, 0x258

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getTransitionBackgroundFadeDuration()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-boolean v2, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    :cond_3
    iget-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->g:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    iget-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->h:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->k:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i:Landroid/graphics/RectF;

    iget-object p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public hideSysUiScrim(Z)V
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->r:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->s:Z

    :cond_2
    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->invalidate()V

    return-void
.end method

.method public invalidate()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->e:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->j:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getMainColor()I

    move-result v1

    const/high16 v2, 0x55000000

    invoke-static {v2, v1}, Landroidx/core/graphics/ColorUtils;->compositeColors(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i()V

    invoke-virtual {p1}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->getMainColor()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->n:I

    iget p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->p:I

    if-lez p1, :cond_0

    invoke-virtual {p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->invalidate()V

    :cond_0
    return-void
.end method

.method public onInsetsChanged(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->top:I

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->g:Z

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->k:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->c:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->h:Z

    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->addOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->onExtractedColorsChanged(Lcom/zui/launcher/uioverrides/WallpaperColorInfo;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->d:Lcom/zui/launcher/uioverrides/WallpaperColorInfo;

    invoke-virtual {p1, p0}, Lcom/zui/launcher/uioverrides/WallpaperColorInfo;->removeOnChangeListener(Lcom/zui/launcher/uioverrides/WallpaperColorInfo$OnChangeListener;)V

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->e:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->a:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public setSize(II)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->i:Landroid/graphics/RectF;

    const/4 v1, 0x0

    iget p0, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->l:I

    sub-int p0, p2, p0

    int-to-float p0, p0

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, v1, p0, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_0
    return-void
.end method

.method public setWorkspace(Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->f:Lcom/zui/launcher/Workspace;

    return-void
.end method
