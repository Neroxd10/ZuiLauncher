.class public Lcom/zui/launcher/folder/FolderIconPreviewVerifier;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:[I

.field private e:I

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/zui/launcher/InvariantDeviceProfile;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->d:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->f:Z

    invoke-static {}, Lcom/zui/launcher/LauncherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zui/launcher/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/zui/launcher/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/zui/launcher/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->b:I

    iput p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->a:I

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderColumns:I

    iput v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->a:I

    iget p1, p1, Lcom/zui/launcher/InvariantDeviceProfile;->numFolderRows:I

    iput p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->b:I

    :goto_0
    iget p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->a:I

    iget v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->b:I

    mul-int/2addr p1, v0

    iput p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->c:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method


# virtual methods
.method public isItemInPreview(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->isItemInPreview(II)Z

    move-result p0

    return p0
.end method

.method public isItemInPreview(II)Z
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->d:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "FolderPreviewVerifier"

    const-string v3, "setFolderInfo not called before checking if item is in preview."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz p1, :cond_3

    iget-boolean p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->f:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-ge p2, p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    :goto_0
    iget p0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->c:I

    rem-int/2addr p2, p0

    sget p0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-ge p2, p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public setFolderInfo(Lcom/zui/launcher/FolderInfo;)V
    .locals 7

    iget-object p1, p1, Lcom/zui/launcher/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->e:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->a:I

    iget v4, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->b:I

    iget v5, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->c:I

    iget-object v6, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->d:[I

    move v0, p1

    invoke-static/range {v0 .. v6}, Lcom/zui/launcher/folder/FolderPagedView;->calculateGridSize(IIIIII[I)V

    iget-object v0, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->d:[I

    aget v0, v0, v1

    sget v0, Lcom/zui/launcher/folder/ClippedFolderIconLayoutRule;->MAX_NUM_ITEMS_IN_PREVIEW:I

    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->f:Z

    iput p1, p0, Lcom/zui/launcher/folder/FolderIconPreviewVerifier;->e:I

    :cond_1
    return-void
.end method
