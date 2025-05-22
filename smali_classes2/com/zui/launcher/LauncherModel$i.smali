.class Lcom/zui/launcher/LauncherModel$i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->I(Ljava/util/ArrayList;JIII)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I


# direct methods
.method constructor <init>(JIII)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/LauncherModel$i;->a:J

    iput p3, p0, Lcom/zui/launcher/LauncherModel$i;->b:I

    iput p4, p0, Lcom/zui/launcher/LauncherModel$i;->c:I

    iput p5, p0, Lcom/zui/launcher/LauncherModel$i;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItemRough(Lcom/zui/launcher/ItemInfo;)Z
    .locals 4

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/zui/launcher/LauncherModel$i;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v2, p0, Lcom/zui/launcher/LauncherModel$i;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellX:I

    iget v2, p0, Lcom/zui/launcher/LauncherModel$i;->c:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->cellY:I

    iget p0, p0, Lcom/zui/launcher/LauncherModel$i;->d:I

    if-ne v0, p0, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz p0, :cond_1

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1

    if-eq p0, v1, :cond_1

    const/16 p1, 0x9

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
