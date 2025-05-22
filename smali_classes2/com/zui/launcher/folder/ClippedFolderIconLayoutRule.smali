.class public Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTER_INDEX:I = -0x3

.field public static final EXIT_INDEX:I = -0x2

.field public static MAX_NUM_ITEMS_IN_PREVIEW:I = 0x9


# instance fields
.field private a:[F

.field private b:F

.field private c:F

.field private d:F

.field private e:Z

.field private f:F

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    return-void
.end method

.method private a(II[F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p3}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b(II[F)V

    aget v2, p3, v0

    const/4 v3, 0x1

    aget v4, p3, v3

    const/4 v5, 0x3

    invoke-direct {p0, v5, v1, p3}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b(II[F)V

    aget p0, p3, v0

    sub-float/2addr p0, v2

    aget v1, p3, v3

    sub-float/2addr v1, v4

    int-to-float p2, p2

    mul-float/2addr p2, p0

    add-float/2addr v2, p2

    aput v2, p3, v0

    int-to-float p0, p1

    mul-float/2addr p0, v1

    add-float/2addr v4, p0

    aput v4, p3, v3

    return-void
.end method

.method private b(II[F)V
    .locals 10

    const/4 v0, 0x3

    iput v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object v1

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    const/16 v3, 0x10

    sput v3, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    iput v2, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    :cond_0
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-boolean v3, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->e:Z

    iget-boolean v3, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->e:Z

    iget v2, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->d:F

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result p2

    mul-float/2addr v2, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v2, p2

    iget v3, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b:F

    div-float v4, v3, p2

    div-float/2addr v3, p2

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/zui/launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_10

    const/high16 v1, 0x40800000    # 4.0f

    if-nez v5, :cond_1

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-eqz v9, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-ne v9, v0, :cond_3

    :cond_2
    mul-float v5, v2, v1

    sub-float/2addr v4, v5

    aput v4, p3, v7

    goto :goto_0

    :cond_3
    if-nez v5, :cond_4

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-eq v9, v8, :cond_5

    :cond_4
    if-eqz v5, :cond_6

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-ne v9, v6, :cond_6

    :cond_5
    mul-float v5, v2, p2

    sub-float/2addr v4, v5

    aput v4, p3, v7

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-eq v9, v6, :cond_8

    :cond_7
    if-eqz v5, :cond_9

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-ne v9, v8, :cond_9

    :cond_8
    aput v4, p3, v7

    goto :goto_0

    :cond_9
    if-nez v5, :cond_a

    iget v9, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v9, p1, v9

    if-eq v9, v0, :cond_b

    :cond_a
    if-eqz v5, :cond_c

    iget v5, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v5, p1, v5

    if-nez v5, :cond_c

    :cond_b
    mul-float v5, v2, p2

    add-float/2addr v4, v5

    aput v4, p3, v7

    :cond_c
    :goto_0
    iget p0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    div-int v4, p1, p0

    if-nez v4, :cond_d

    mul-float/2addr v2, v1

    sub-float/2addr v3, v2

    aput v3, p3, v8

    goto/16 :goto_2

    :cond_d
    div-int v1, p1, p0

    if-ne v1, v8, :cond_e

    mul-float/2addr v2, p2

    sub-float/2addr v3, v2

    aput v3, p3, v8

    goto :goto_2

    :cond_e
    div-int v1, p1, p0

    if-ne v1, v6, :cond_f

    aput v3, p3, v8

    goto :goto_2

    :cond_f
    div-int/2addr p1, p0

    if-ne p1, v0, :cond_1b

    mul-float/2addr v2, p2

    add-float/2addr v3, v2

    aput v3, p3, v8

    goto :goto_2

    :cond_10
    const/high16 p2, 0x40400000    # 3.0f

    if-nez v5, :cond_11

    iget v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v0, p1, v0

    if-eqz v0, :cond_12

    :cond_11
    if-eqz v5, :cond_13

    iget v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v0, p1, v0

    if-ne v0, v6, :cond_13

    :cond_12
    mul-float v0, v2, p2

    sub-float/2addr v4, v0

    aput v4, p3, v7

    goto :goto_1

    :cond_13
    iget v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v1, p1, v0

    if-ne v1, v8, :cond_14

    sub-float/2addr v4, v2

    aput v4, p3, v7

    goto :goto_1

    :cond_14
    if-nez v5, :cond_15

    rem-int v0, p1, v0

    if-eq v0, v6, :cond_16

    :cond_15
    if-eqz v5, :cond_17

    iget v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    rem-int v0, p1, v0

    if-nez v0, :cond_17

    :cond_16
    add-float/2addr v4, v2

    aput v4, p3, v7

    :cond_17
    :goto_1
    iget p0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    div-int v0, p1, p0

    if-nez v0, :cond_18

    mul-float/2addr v2, p2

    sub-float/2addr v3, v2

    aput v3, p3, v8

    goto :goto_2

    :cond_18
    div-int v0, p1, p0

    if-ne v0, v8, :cond_19

    sub-float/2addr v3, v2

    aput v3, p3, v8

    goto :goto_2

    :cond_19
    div-int/2addr p1, p0

    if-ne p1, v6, :cond_1a

    add-float/2addr v3, v2

    aput v3, p3, v8

    goto :goto_2

    :cond_1a
    mul-float/2addr v2, p2

    add-float/2addr v3, v2

    aput v3, p3, v8

    :cond_1b
    :goto_2
    return-void
.end method


# virtual methods
.method public computePreviewItemDrawingParams(IILcom/zui/launcher/folder/f;Z)Lcom/zui/launcher/folder/f;
    .locals 5

    invoke-virtual {p0, p2}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->scaleForItem(I)F

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-ne p1, v4, :cond_0

    iget-object p1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    invoke-direct {p0, v3, v1, p1}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a(II[F)V

    goto :goto_0

    :cond_0
    const/4 v4, -0x3

    if-ne p1, v4, :cond_1

    iget-object p1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    invoke-direct {p0, v2, v1, p1}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a(II[F)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-lt p1, v1, :cond_3

    if-eqz p4, :cond_2

    iget-object p4, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    invoke-direct {p0, p1, p2, p4}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b(II[F)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    iget p2, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b:F

    const/high16 p4, 0x40000000    # 2.0f

    div-float/2addr p2, p4

    iget v1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->d:F

    mul-float/2addr v1, v0

    div-float/2addr v1, p4

    sub-float/2addr p2, v1

    aput p2, p1, v2

    aput p2, p1, v3

    goto :goto_0

    :cond_3
    iget-object p4, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    invoke-direct {p0, p1, p2, p4}, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b(II[F)V

    :goto_0
    iget-object p0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->a:[F

    aget p1, p0, v3

    aget p0, p0, v2

    const/4 p2, 0x0

    if-nez p3, :cond_4

    new-instance p3, Lcom/zui/launcher/folder/f;

    invoke-direct {p3, p1, p0, v0, p2}, Lcom/zui/launcher/folder/f;-><init>(FFFF)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, p1, p0, v0}, Lcom/zui/launcher/folder/f;->a(FFF)V

    iput p2, p3, Lcom/zui/launcher/folder/f;->d:F

    :goto_1
    return-object p3
.end method

.method public getIconSize()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->d:F

    return p0
.end method

.method public init(IFZ)V
    .locals 2

    int-to-float p1, p1

    iput p1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->b:F

    const v0, 0x3faa3d71    # 1.33f

    mul-float/2addr v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->c:F

    iput p2, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->d:F

    iput-boolean p3, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->e:Z

    const/4 p3, 0x3

    iput p3, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zui/launcher/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/zui/launcher/InvariantDeviceProfile;

    move-result-object p3

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object p3

    iget-boolean p3, p3, Lcom/zui/launcher/DeviceProfile;->isTablet:Z

    if-eqz p3, :cond_0

    const p3, 0x3fa66666    # 1.3f

    const/16 v0, 0x10

    sput v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->g:I

    goto :goto_0

    :cond_0
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_0
    mul-float/2addr p2, p3

    div-float/2addr p1, p2

    iput p1, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->f:F

    return-void
.end method

.method public scaleForItem(I)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->f:F

    const p1, 0x3e947ae1    # 0.29f

    mul-float/2addr p0, p1

    return p0
.end method
