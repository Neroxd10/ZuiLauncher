.class Lcom/zui/launcher/LauncherModel$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->E(Ljava/util/ArrayList;JIIJ)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(JJII)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/LauncherModel$f;->a:J

    iput-wide p3, p0, Lcom/zui/launcher/LauncherModel$f;->b:J

    iput p5, p0, Lcom/zui/launcher/LauncherModel$f;->c:I

    iput p6, p0, Lcom/zui/launcher/LauncherModel$f;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItemRough(Lcom/zui/launcher/ItemInfo;)Z
    .locals 4

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/zui/launcher/LauncherModel$f;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/zui/launcher/LauncherModel$f;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/zui/launcher/LauncherModel$f;->c:I

    iget v1, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    if-lt v0, v1, :cond_0

    iget v2, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget p0, p0, Lcom/zui/launcher/LauncherModel$f;->d:I

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    if-lt p0, v0, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->spanY:I

    add-int/2addr v0, p1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
