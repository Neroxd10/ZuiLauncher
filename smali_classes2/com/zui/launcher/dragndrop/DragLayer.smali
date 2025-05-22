.class public Lcom/zui/launcher/dragndrop/DragLayer;
.super Lcom/zui/launcher/views/BaseDragLayer;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/launcher/views/BaseDragLayer<",
        "Lcom/zui/launcher/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALPHA_INDEX_LAUNCHER_LOAD:I = 0x1

.field public static final ALPHA_INDEX_OVERLAY:I = 0x0

.field public static final ALPHA_INDEX_TRANSITIONS:I = 0x2

.field public static final ANIMATION_END_DISAPPEAR:I = 0x0

.field public static final ANIMATION_END_REMAIN_VISIBLE:I = 0x2


# instance fields
.field private A:I

.field B:Z

.field f:Lcom/zui/launcher/dragndrop/DragController;

.field private g:Landroid/animation/ValueAnimator;

.field private final h:Landroid/animation/TimeInterpolator;

.field i:Lcom/zui/launcher/dragndrop/DragView;

.field j:I

.field k:Landroid/view/View;

.field private l:Z

.field private m:I

.field private n:I

.field private final o:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

.field private final p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

.field private final q:Lcom/zui/launcher/Launcher;

.field private r:Lcom/zui/launcher/dragndrop/DragDeleteView;

.field private s:Landroid/animation/ValueAnimator;

.field private t:Landroid/animation/ValueAnimator;

.field u:F

.field v:F

.field w:Z

.field x:Z

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0}, Lcom/zui/launcher/views/BaseDragLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->DEACCEL_1_5:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->h:Landroid/animation/TimeInterpolator;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->j:I

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->k:Landroid/view/View;

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->l:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->n:I

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->r:Lcom/zui/launcher/dragndrop/DragDeleteView;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->t:Landroid/animation/ValueAnimator;

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->x:Z

    iput-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setChildrenDrawingOrderEnabled(Z)V

    new-instance p2, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    invoke-direct {p2, p0}, Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->o:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    new-instance p2, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    invoke-direct {p2, p0}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object p2

    iput-object p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080096

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr p2, v0

    float-to-int p2, p2

    iput p2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->z:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x42dc0000    # 110.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    mul-int/2addr p1, p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->A:I

    return-void
.end method

.method static synthetic c(Lcom/zui/launcher/dragndrop/DragLayer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic d(Lcom/zui/launcher/dragndrop/DragLayer;)Lcom/zui/launcher/dragndrop/DragDeleteView;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->r:Lcom/zui/launcher/dragndrop/DragDeleteView;

    return-object p0
.end method

.method static synthetic e(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/dragndrop/DragDeleteView;)Lcom/zui/launcher/dragndrop/DragDeleteView;
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->r:Lcom/zui/launcher/dragndrop/DragDeleteView;

    return-object p1
.end method

.method static synthetic f(Lcom/zui/launcher/dragndrop/DragLayer;)Landroid/animation/ValueAnimator;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method private g(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;IIFIILandroid/view/View;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v1, v2}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v2, v1, Lcom/zui/launcher/dragndrop/DragDeleteView;->mPadding:I

    sub-int v5, p3, v2

    sub-int v6, p4, v2

    new-instance v11, Lcom/zui/launcher/dragndrop/DragLayer$e;

    move-object/from16 v2, p2

    move/from16 v7, p9

    invoke-direct {v11, p0, v7, v2}, Lcom/zui/launcher/dragndrop/DragLayer$e;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;ZLandroid/view/View;)V

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move/from16 v9, p5

    move/from16 v10, p5

    move/from16 v13, p7

    move-object/from16 v14, p8

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method private getBlurBitmap()Landroid/graphics/Bitmap;
    .locals 8

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lastsetting_wallpaper_value"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "============  lastsettingvalue is   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ZLauncher"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "set_wallpaper_value"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "   :  set wallpaper value is    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getBlurBitmap 1 failed: "

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-eq v1, v4, :cond_8

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    if-ne v0, v4, :cond_0

    goto/16 :goto_7

    :cond_0
    if-ne v1, v2, :cond_4

    if-ne v1, v2, :cond_4

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/system/etc/wallpaper/blur_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-object v0, v5

    :catch_2
    :try_start_3
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-object p0

    :catch_4
    move-exception p0

    :try_start_6
    const-string v1, "getBlurBitmap 2 failed: "

    invoke-static {v1, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v0, :cond_2

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_2

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v5

    :catchall_1
    move-exception p0

    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_3

    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw p0

    :cond_4
    const/4 v2, 0x4

    if-eq v1, v2, :cond_7

    const/4 v4, 0x6

    if-eq v1, v4, :cond_7

    if-ne v1, v6, :cond_5

    if-eq v0, v2, :cond_7

    if-ne v0, v4, :cond_5

    goto/16 :goto_6

    :cond_5
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    :try_start_9
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v3, v1, 0xa

    div-int/lit8 v4, v2, 0x14

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    goto :goto_5

    :cond_6
    move v3, v4

    :goto_5
    div-int/2addr v1, v3

    div-int/2addr v2, v3

    :try_start_a
    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v0, v1, v2}, Lcom/zui/launcher/Utilities;->zoomBitmapAll(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/zui/launcher/Utilities;->getBlurBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v5, v5, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/zui/launcher/Utilities;->getPolationColor(Landroid/graphics/Bitmap;)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    invoke-static {v1, v5, v3, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getPolationColor(Landroid/graphics/Bitmap;)I

    move-result v3

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    const-string v5, "window"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    move-result p0

    invoke-static {v5, p0, v2, v3, v4}, Lcom/zui/launcher/Utilities;->getLinearGradientBitmap(IIIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    return-object p0

    :catch_7
    return-object v0

    :catch_8
    move-exception p0

    invoke-static {v3, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :cond_7
    :goto_6
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    :try_start_b
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_9

    return-object p0

    :catch_9
    move-exception p0

    const-string v0, "getBlurBitmap 3 failed: "

    invoke-static {v0, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v5

    :cond_8
    :goto_7
    :try_start_c
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/sdcard/.keyguard/customized/blur_wallpaper"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_b
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_8

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_8
    return-object p0

    :catchall_2
    move-exception p0

    goto :goto_b

    :catch_b
    move-object v0, v5

    :catch_c
    :try_start_f
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v0, :cond_9

    :try_start_11
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d

    goto :goto_9

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_9
    return-object p0

    :catch_e
    move-exception p0

    :try_start_12
    invoke-static {v3, p0}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v0, :cond_a

    :try_start_13
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_f

    goto :goto_a

    :catch_f
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_a
    return-object v5

    :catchall_3
    move-exception p0

    move-object v5, v0

    :goto_b
    if-eqz v5, :cond_b

    :try_start_14
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_10

    goto :goto_c

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_c
    throw p0
.end method

.method private h(Landroid/view/MotionEvent;Z)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/zui/launcher/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v1

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewExcludeZuiView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v2, :cond_c

    :cond_0
    if-eqz p2, :cond_c

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lcom/zui/launcher/AbstractFloatingView;->getActiveTextView()Lcom/zui/launcher/ExtendedEditText;

    move-result-object p2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/zui/launcher/AbstractFloatingView;->getActiveTextView()Lcom/zui/launcher/ExtendedEditText;

    move-result-object p2

    :goto_0
    const/4 v4, 0x1

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {p2}, Lcom/zui/launcher/ExtendedEditText;->dispatchBackKey()V

    return v4

    :cond_2
    invoke-virtual {p0, v1, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    const/high16 v5, 0x10000

    if-nez p2, :cond_b

    invoke-virtual {p0, v2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_b

    invoke-virtual {v0}, Lcom/zui/launcher/BaseActivity;->getUserEventDispatcher()Lcom/zui/launcher/logging/UserEventDispatcher;

    move-result-object p2

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/zui/launcher/AbstractFloatingView;->getLogContainerType()I

    move-result v6

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/zui/launcher/AbstractFloatingView;->getLogContainerType()I

    move-result v6

    :goto_1
    invoke-static {v6}, Lcom/zui/launcher/logging/LoggerUtils;->newContainerTarget(I)Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/zui/launcher/logging/UserEventDispatcher;->logActionTapOutside(Lcom/zui/launcher/userevent/nano/LauncherLogProto$Target;)V

    invoke-virtual {p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->isEventOverDockView(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v3

    :cond_4
    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/zui/launcher/folder/Folder;->isClickEmptySpace(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_2
    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {p0, v5}, Lcom/zui/launcher/AbstractFloatingView;->closeOpenContainer(Lcom/zui/launcher/views/ActivityContext;I)V

    return v3

    :cond_5
    const/16 p2, 0x1002

    invoke-static {v0, p2}, Lcom/zui/launcher/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/zui/launcher/views/ActivityContext;I)V

    const/4 p2, 0x0

    if-nez v1, :cond_6

    move-object v0, p2

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lcom/zui/launcher/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object v0

    :goto_3
    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2}, Lcom/zui/launcher/AbstractFloatingView;->getExtendedTouchView()Landroid/view/View;

    move-result-object p2

    :goto_4
    if-nez v0, :cond_8

    if-eqz p2, :cond_9

    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    move v3, v4

    :cond_a
    return v3

    :cond_b
    invoke-static {v0}, Lcom/zui/launcher/folder/Folder;->getOpen(Lcom/zui/launcher/Launcher;)Lcom/zui/launcher/folder/Folder;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_c

    instance-of p2, v1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    if-eqz p2, :cond_c

    check-cast v1, Lcom/zui/launcher/dragndrop/DeleteFloatingView;

    invoke-virtual {v1, p1}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->isEventValidForDragLayer(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_2

    :cond_c
    return v3
.end method

.method private i(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private j()Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getAccessibilityDelegate()Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result p0

    return p0
.end method

.method static synthetic k(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private l(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const p1, 0x7f1203c2

    goto :goto_0

    :cond_0
    const p1, 0x7f1203c1

    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/zui/launcher/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    return-void
.end method

.method private m()Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    iget v1, v0, Lcom/zui/launcher/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    div-int/lit8 v1, v1, 0x3

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    int-to-float v0, v0

    cmpg-float p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private n()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->m:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->m:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->n:I

    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    const v1, 0x7fcbf

    invoke-static {v0, v1}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenViewWithType(Lcom/zui/launcher/views/ActivityContext;I)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDropTargetBar()Lcom/zui/launcher/DropTargetBar;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->addAccessibleChildToList(Landroid/view/View;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public animateView(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->t:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->r:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->cancelAnimation()V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->r:Lcom/zui/launcher/dragndrop/DragDeleteView;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragDeleteView;->resetLayoutParams()V

    if-eqz p7, :cond_2

    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->j:I

    :cond_2
    iput-object p7, p0, Lcom/zui/launcher/dragndrop/DragLayer;->k:Landroid/view/View;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/launcher/dragndrop/DragLayer$d;

    invoke-direct {p2, p0, p5, p6}, Lcom/zui/launcher/dragndrop/DragLayer$d;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->s:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, v13, Landroid/graphics/Rect;->top:I

    iget v5, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p9, :cond_1

    const v3, 0x7f0b0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    int-to-float v3, v3

    iget-object v4, v14, Lcom/zui/launcher/dragndrop/DragLayer;->h:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    :cond_0
    const v0, 0x7f0b0021

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    const/4 v0, 0x0

    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    :cond_2
    iget-object v0, v14, Lcom/zui/launcher/dragndrop/DragLayer;->h:Landroid/animation/TimeInterpolator;

    :cond_3
    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    new-instance v17, Lcom/zui/launcher/dragndrop/DragLayer$c;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/zui/launcher/dragndrop/DragLayer$c;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v17

    move/from16 p5, v15

    move-object/from16 p6, v16

    move-object/from16 p7, p12

    move/from16 p8, p13

    move-object/from16 p9, p14

    invoke-virtual/range {p2 .. p9}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p1}, Lcom/zui/launcher/dragndrop/DragView;->cancelAnimation()V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    if-eqz p7, :cond_1

    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->j:I

    :cond_1
    iput-object p7, p0, Lcom/zui/launcher/dragndrop/DragLayer;->k:Landroid/view/View;

    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    int-to-long p3, p3

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/zui/launcher/dragndrop/DragLayer$b;

    invoke-direct {p2, p0, p5, p6}, Lcom/zui/launcher/dragndrop/DragLayer$b;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 18

    move-object/from16 v14, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    iget v0, v13, Landroid/graphics/Rect;->left:I

    iget v1, v12, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v2, v13, Landroid/graphics/Rect;->top:I

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    if-gez p9, :cond_1

    const v3, 0x7f0b0020

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    int-to-float v3, v3

    iget-object v4, v14, Lcom/zui/launcher/dragndrop/DragLayer;->h:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v4, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v3, v0

    float-to-int v3, v3

    :cond_0
    const v0, 0x7f0b0021

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_1
    move/from16 v15, p9

    :goto_0
    const/4 v0, 0x0

    if-eqz p11, :cond_2

    if-nez p10, :cond_3

    :cond_2
    iget-object v0, v14, Lcom/zui/launcher/dragndrop/DragLayer;->h:Landroid/animation/TimeInterpolator;

    :cond_3
    move-object/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAlpha()F

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v6

    new-instance v17, Lcom/zui/launcher/dragndrop/DragLayer$a;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p11

    move-object/from16 v4, p10

    move/from16 v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p4

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    invoke-direct/range {v0 .. v13}, Lcom/zui/launcher/dragndrop/DragLayer$a;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;Lcom/zui/launcher/dragndrop/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object/from16 p2, p0

    move-object/from16 p3, p1

    move-object/from16 p4, v17

    move/from16 p5, v15

    move-object/from16 p6, v16

    move-object/from16 p7, p12

    move/from16 p8, p13

    move-object/from16 p9, p14

    invoke-virtual/range {p2 .. p9}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    invoke-virtual/range {v1 .. v15}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragDeleteView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V
    .locals 15

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    invoke-direct {v4, v0, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v4

    move-object v3, v5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    move/from16 v9, p13

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateView(Lcom/zui/launcher/dragndrop/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Z)V

    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;Z)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v14, p3

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/ShortcutAndWidgetContainer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/CellLayout$LayoutParams;

    invoke-virtual {v0, v14}, Lcom/zui/launcher/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v15, v2, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, 0x2

    new-array v4, v3, [F

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getScaleX()F

    move-result v5

    iget v6, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->x:I

    int-to-float v6, v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v9, v8, v5

    mul-float/2addr v7, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v7, v10

    add-float/2addr v6, v7

    const/4 v7, 0x0

    aput v6, v4, v7

    iget v1, v1, Lcom/zui/launcher/CellLayout$LayoutParams;->y:I

    int-to-float v1, v1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v9

    div-float/2addr v6, v10

    add-float/2addr v1, v6

    const/4 v6, 0x1

    aput v1, v4, v6

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v15, v1, v4}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[F)F

    move-result v1

    mul-float v16, v1, v5

    aget v1, v4, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, v15, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/zui/launcher/DeviceProfile;->isLayoutHorizontal()Z

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/zui/launcher/ItemInfo;

    if-eqz v9, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/zui/launcher/ItemInfo;

    iget v9, v9, Lcom/zui/launcher/ItemInfo;->container:I

    const/16 v11, -0x65

    if-ne v9, v11, :cond_1

    move v7, v6

    :cond_1
    instance-of v6, v14, Landroid/widget/TextView;

    if-nez v6, :cond_5

    instance-of v6, v14, Lcom/zui/launcher/ActiveIconView;

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    instance-of v6, v14, Lcom/zui/launcher/folder/FolderIcon;

    if-eqz v6, :cond_4

    if-eqz v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    if-eq v5, v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v16

    div-float/2addr v3, v10

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    mul-float v3, v3, v16

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v1, v3

    goto :goto_1

    :cond_3
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragRegionTop()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getBlurSizeOutline()I

    move-result v5

    int-to-float v5, v5

    mul-float v5, v5, v16

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    sub-float v8, v8, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v8, v5

    div-float/2addr v8, v10

    sub-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v16

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    :goto_0
    div-int/2addr v5, v3

    sub-int/2addr v1, v5

    :goto_1
    move/from16 v17, v1

    move/from16 v18, v4

    move/from16 v10, v16

    goto/16 :goto_6

    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getIntrinsicIconScaleFactor()F

    move-result v6

    div-float v6, v16, v6

    if-eqz v5, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float v9, v9, v16

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    sub-int/2addr v5, v9

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_7

    mul-float v3, v6, v16

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    iget-object v7, v15, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v7}, Lcom/zui/launcher/Launcher;->getDeviceProfile()Lcom/zui/launcher/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/zui/launcher/DeviceProfile;->iconSizePx:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v3, v5

    goto :goto_3

    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    :goto_3
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v8, v6

    mul-float/2addr v3, v8

    div-float/2addr v3, v10

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    mul-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_5

    :cond_8
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v8, v6

    mul-float/2addr v5, v8

    div-float/2addr v5, v10

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/zui/launcher/dragndrop/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v4, v5

    :cond_9
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v16

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    sub-int/2addr v5, v7

    div-int/2addr v5, v3

    sub-int/2addr v1, v5

    :cond_a
    :goto_5
    move/from16 v17, v1

    move/from16 v18, v4

    move v10, v6

    :goto_6
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x4

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    new-instance v11, Lcom/zui/launcher/dragndrop/e;

    invoke-direct {v11, v14}, Lcom/zui/launcher/dragndrop/e;-><init>(Landroid/view/View;)V

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v3

    move v3, v4

    move/from16 v4, v17

    move/from16 v5, v18

    move v9, v10

    move/from16 v13, p4

    move-object/from16 v14, p6

    invoke-virtual/range {v0 .. v14}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    if-eqz p2, :cond_b

    if-eqz p7, :cond_b

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v16

    move/from16 v7, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/zui/launcher/dragndrop/DragLayer;->g(Lcom/zui/launcher/dragndrop/DragDeleteView;Landroid/view/View;IIFIILandroid/view/View;Z)V

    :cond_b
    return-void
.end method

.method public animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V
    .locals 16

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/zui/launcher/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    const/4 v0, 0x0

    aget v5, p2, v0

    const/4 v0, 0x1

    aget v6, p2, v0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    move/from16 v7, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p7

    move/from16 v13, p6

    move/from16 v14, p8

    invoke-virtual/range {v1 .. v15}, Lcom/zui/launcher/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/zui/launcher/dragndrop/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->n()V

    return-void
.end method

.method public buildWallpaperCache(Z)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/Utilities;->isHighlightWallpaper(Landroid/content/Context;)Z

    move-result v0

    sget-boolean v1, Lcom/zui/launcher/ImageConverterJNI;->isEnableImageConvert:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "DragLayer-------buildWallpaperCache failed: "

    invoke-static {v1, p1}, Lcom/zui/launcher/util/Debug;->printException(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->getBlurBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/zui/launcher/Launcher;->calImageGray(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {p1}, Lcom/zui/launcher/Launcher;->setBubbleTextViewColor()V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->revertStatusIcon()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public clearAnimatedView()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->g:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->f:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/dragndrop/DragController;->onDeferredEndDrag(Lcom/zui/launcher/dragndrop/DragView;)V

    :cond_1
    iput-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->f:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/dragndrop/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :try_start_0
    invoke-super {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {p1, p0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    throw v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->f:Lcom/zui/launcher/dragndrop/DragController;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/dragndrop/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public getAnimatedView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->i:Lcom/zui/launcher/dragndrop/DragView;

    return-object p0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->n:I

    if-eq v0, p1, :cond_0

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->n()V

    :cond_0
    iget p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->m:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return p2

    :cond_1
    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_2

    return p0

    :cond_2
    if-ge p2, p0, :cond_3

    return p2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    return p2
.end method

.method public getFocusIndicatorHelper()Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->o:Lcom/zui/launcher/keyboard/ViewGroupFocusHelper;

    return-object p0
.end method

.method public getLauncher()Lcom/zui/launcher/Launcher;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    return-object p0
.end method

.method public getScreenHeight()I
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getScrim()Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    return-object p0
.end method

.method public getUpDownSlop()I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->z:I

    return p0
.end method

.method public initOnePageWallpaper(Z)V
    .locals 2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    if-eqz v0, :cond_0

    const-string v1, "Launcher.DragLayer"

    invoke-static {v1, v0}, Lcom/zui/launcher/util/SettingsValue;->isFrameworkBlur(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "will use frameworkBlur, not wallpaper bitmap."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Lcom/zui/launcher/dragndrop/DragLayer$f;

    invoke-direct {v0, p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer$f;-><init>(Lcom/zui/launcher/dragndrop/DragLayer;Z)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isEventOverDockView(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->isInEditViewMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/XDockView;->getLayout()Lcom/zui/launcher/XDockViewLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getDockView()Lcom/zui/launcher/XDockView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isEventTypeTwoProcess()Z
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->getCurrentEventType()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/views/ActivityContext;

    invoke-static {v0}, Lcom/zui/launcher/AbstractFloatingView;->getTopOpenView(Lcom/zui/launcher/views/ActivityContext;)Lcom/zui/launcher/AbstractFloatingView;

    move-result-object v0

    instance-of v2, v0, Lcom/zui/launcher/folder/Folder;

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v2, v0

    check-cast v2, Lcom/zui/launcher/folder/Folder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x7

    const/4 v5, 0x1

    if-eq v3, v4, :cond_6

    const/16 v4, 0x9

    if-eq v3, v4, :cond_2

    goto :goto_5

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->i(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move p1, v1

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v5

    :goto_1
    if-nez p1, :cond_5

    :goto_2
    invoke-virtual {v2}, Lcom/zui/launcher/folder/Folder;->isEditingName()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->l(Z)V

    iput-boolean v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->l:Z

    return v5

    :cond_5
    iput-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->l:Z

    goto :goto_5

    :cond_6
    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/zui/launcher/dragndrop/DragLayer;->i(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move p1, v1

    goto :goto_4

    :cond_8
    :goto_3
    move p1, v5

    :goto_4
    if-nez p1, :cond_9

    iget-boolean v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->l:Z

    if-nez v0, :cond_9

    goto :goto_2

    :cond_9
    if-nez p1, :cond_5

    return v5

    :cond_a
    :goto_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "DragLayer, onInterceptTouchEvent, ev:"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->getIsFingShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string p0, "searchAnimators"

    const-string p1, "GlobalSearchAnimators  onInterceptTouchEvent  showing"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v2, :cond_4

    const/4 v5, 0x3

    if-ne v3, v5, :cond_3

    goto :goto_1

    :cond_3
    if-nez v3, :cond_5

    iget-object v5, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v5, Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/BaseDraggingActivity;->finishAutoCancelActionMode()Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->u:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    iget-object v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v5}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/zui/launcher/Workspace;->setCurrentEventType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->y:J

    goto :goto_2

    :cond_4
    :goto_1
    invoke-direct {p0, p1, v2}, Lcom/zui/launcher/dragndrop/DragLayer;->h(Landroid/view/MotionEvent;Z)Z

    iput-boolean v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    iput-boolean v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    iput-boolean v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->x:Z

    :cond_5
    :goto_2
    const/16 v4, 0x105

    if-ne v3, v4, :cond_6

    iput-boolean v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->x:Z

    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->isInNormalState()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v2, :cond_9

    iget-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->x:Z

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v3

    iget-boolean v3, v3, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-nez v3, :cond_9

    invoke-static {}, Lcom/zui/launcher/Utilities;->isMTKPlatform()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zui/launcher/Workspace;->getWidgetDown()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->isFolderOpened()Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->isShown(Lcom/zui/launcher/Launcher;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->u:F

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    mul-float v5, v3, v3

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/zui/launcher/dragndrop/DragLayer;->A:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_7

    iput-boolean v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    :cond_7
    float-to-double v4, v4

    float-to-double v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMoveUp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " angle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "DragLayer"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, -0x6e

    if-le v3, v4, :cond_8

    const/16 v4, -0x46

    if-ge v3, v4, :cond_8

    iput-boolean v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    :cond_8
    iget-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v3

    if-nez v3, :cond_9

    iget v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_9

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->m()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v3, v2}, Lcom/zui/launcher/Launcher;->checkLauncherState(Z)Z

    move-result v3

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->getIsRemoveRunning()Z

    move-result v0

    if-eqz v3, :cond_9

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/zui/launcher/Workspace;->doAddExcessiveView()V

    sget-object p0, Lcom/zui/launcher/views/BaseDragLayer;->TAG:Ljava/lang/String;

    const-string p1, "return true, excessive view will handle event."

    goto/16 :goto_0

    :cond_9
    invoke-super {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    :cond_b
    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v0

    iget-boolean v1, v0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/zui/launcher/views/BaseDragLayer;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_e

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    goto/16 :goto_a

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    instance-of v2, v1, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;

    iget-boolean v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->customPosition:Z

    if-eqz v3, :cond_2

    iget v1, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->x:I

    iget v3, v2, Lcom/zui/launcher/views/BaseDragLayer$LayoutParams;->y:I

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v4, v1

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v2, v3

    invoke-virtual {p3, v1, v3, v4, v2}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_a

    :cond_2
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    const v4, 0x800033

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v5

    invoke-static {v4, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v4

    instance-of v5, p3, Lcom/zui/launcher/views/Transposable;

    const/16 v6, 0x50

    const/16 v7, 0x10

    const/4 v8, 0x5

    const/4 v9, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v0, v4}, Lcom/zui/launcher/graphics/RotationMode;->toNaturalGravity(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x7

    if-eq v5, v9, :cond_5

    if-eq v5, v8, :cond_4

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v5, p5, v5

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v5, v8

    :goto_1
    div-int/lit8 v8, v3, 0x2

    goto :goto_2

    :cond_4
    div-int/lit8 v5, v2, 0x2

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v8

    goto :goto_1

    :cond_5
    sub-int v5, p5, v3

    div-int/lit8 v5, v5, 0x2

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v5, v8

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_2
    sub-int/2addr v5, v8

    and-int/lit8 v4, v4, 0x70

    if-eq v4, v7, :cond_7

    if-eq v4, v6, :cond_6

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v6, v2, 0x2

    sub-int/2addr v4, v6

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    goto :goto_9

    :cond_6
    div-int/lit8 v4, v2, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v4, v6

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_3

    :cond_7
    sub-int v4, p4, v2

    div-int/lit8 v4, v4, 0x2

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v6

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :goto_3
    sub-int/2addr v4, v1

    goto :goto_9

    :cond_8
    and-int/lit8 v5, v4, 0x7

    if-eq v5, v9, :cond_a

    if-eq v5, v8, :cond_9

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_5

    :cond_9
    sub-int v5, p4, v2

    goto :goto_4

    :cond_a
    sub-int v5, p4, v2

    div-int/lit8 v5, v5, 0x2

    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v5, v8

    :goto_4
    iget v8, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    :goto_5
    and-int/lit8 v4, v4, 0x70

    if-eq v4, v7, :cond_d

    const/16 v7, 0x30

    if-eq v4, v7, :cond_c

    if-eq v4, v6, :cond_b

    goto :goto_6

    :cond_b
    sub-int v4, p5, v3

    goto :goto_7

    :cond_c
    :goto_6
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_8

    :cond_d
    sub-int v4, p5, v3

    div-int/lit8 v4, v4, 0x2

    iget v6, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v6

    :goto_7
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v1, v4, v1

    :goto_8
    move v4, v5

    move v5, v1

    :goto_9
    add-int/2addr v2, v4

    add-int/2addr v3, v5

    invoke-virtual {p3, v4, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    :goto_a
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getRotationMode()Lcom/zui/launcher/graphics/RotationMode;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v1

    iget-boolean v2, v0, Lcom/zui/launcher/graphics/RotationMode;->isTransposed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_4

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    instance-of v4, v2, Lcom/zui/launcher/views/Transposable;

    const/4 v7, 0x0

    const/4 v9, 0x0

    if-nez v4, :cond_2

    move-object v4, p0

    move-object v5, v2

    move v6, p1

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1

    :cond_2
    move-object v4, p0

    move-object v5, v2

    move v6, p2

    move v8, p1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setPivotY(F)V

    iget v4, v0, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    goto :goto_3

    :cond_4
    :goto_2
    if-ge v3, v1, :cond_5

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v4, v0, Lcom/zui/launcher/graphics/RotationMode;->surfaceRotation:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_3
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/zui/launcher/DropTargetBar;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/zui/launcher/views/BaseDragLayer;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p0

    return p0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->setSize(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DragLayer, onTouchEvent, ev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zui/launcher/testing/TestProtocol;->eventDispatchLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getSearchAnimators()Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/globalsearch/GlobalSearchAnimators;->getIsFingShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "searchAnimators"

    const-string p1, "GlobalSearchAnimators  onTouchEvent  showing"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v0}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eq v2, v1, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->u:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    iget-object v4, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v4}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/zui/launcher/Workspace;->setCurrentEventType(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->y:J

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    iput-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    iput-boolean v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->x:Z

    if-eqz v0, :cond_3

    iget v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    invoke-virtual {v0, v3, p1}, Lcom/zui/launcher/Workspace;->handleUpEvent(FLandroid/view/MotionEvent;)V

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getWorkspace()Lcom/zui/launcher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/Workspace;->getOverlayShown()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->getDragController()Lcom/zui/launcher/dragndrop/DragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zui/launcher/dragndrop/DragController;->isDragging()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v2}, Lcom/zui/launcher/Launcher;->isInNormalState()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-static {}, Lcom/zui/launcher/Utilities;->isMTKPlatform()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/zui/launcher/Workspace;->getWidgetDown()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getStateManager()Lcom/zui/launcher/LauncherStateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zui/launcher/LauncherStateManager;->getState()Lcom/zui/launcher/LauncherState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/LauncherState;->overviewUi:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getDragLayer()Lcom/zui/launcher/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->isShown(Lcom/zui/launcher/Launcher;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/config/FeatureFlags;->isSingleLayerDesktop(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v1}, Lcom/zui/launcher/Utilities;->isVersionForRow(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->w:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->B:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-virtual {v1}, Lcom/zui/launcher/Launcher;->getSearchState()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->u:F

    iget v2, p0, Lcom/zui/launcher/dragndrop/DragLayer;->v:F

    iget-wide v3, p0, Lcom/zui/launcher/dragndrop/DragLayer;->y:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/zui/launcher/Workspace;->handlerSearchEvent(Landroid/view/MotionEvent;FFLjava/lang/Long;)V

    :cond_4
    invoke-super {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/InsettableFrameLayout;->onViewAdded(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->n()V

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/views/BaseDragLayer;->onViewRemoved(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->n()V

    iget-object p0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast p0, Lcom/zui/launcher/Launcher;

    invoke-static {p0}, Lcom/zui/launcher/uioverrides/UiFactory;->onLauncherStateOrFocusChanged(Lcom/zui/launcher/Launcher;)V

    return-void
.end method

.method public recreateControllers()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mActivity:Landroid/content/Context;

    check-cast v0, Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/uioverrides/RecentsUiFactory;->createTouchControllers(Lcom/zui/launcher/Launcher;)[Lcom/zui/launcher/util/TouchController;

    move-result-object v0

    iput-object v0, p0, Lcom/zui/launcher/views/BaseDragLayer;->mControllers:[Lcom/zui/launcher/util/TouchController;

    return-void
.end method

.method public removeAllDragDeleteView()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/zui/launcher/dragndrop/DragDeleteView;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/zui/launcher/InsettableFrameLayout;->setInsets(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->onInsetsChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setup(Lcom/zui/launcher/dragndrop/DragController;Lcom/zui/launcher/Workspace;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->f:Lcom/zui/launcher/dragndrop/DragController;

    iget-object p1, p0, Lcom/zui/launcher/dragndrop/DragLayer;->p:Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;

    invoke-virtual {p1, p2}, Lcom/zui/launcher/graphics/WorkspaceAndHotseatScrim;->setWorkspace(Lcom/zui/launcher/Workspace;)V

    invoke-virtual {p0}, Lcom/zui/launcher/dragndrop/DragLayer;->recreateControllers()V

    return-void
.end method

.method public verifyClickLocation(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/dragndrop/DragLayer;->q:Lcom/zui/launcher/Launcher;

    invoke-static {v0}, Lcom/zui/launcher/dragndrop/DeleteFloatingView;->findCurrentDeleteView(Lcom/zui/launcher/Launcher;)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/zui/launcher/LeosWidgetInterface;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
