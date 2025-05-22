.class Lcom/zui/launcher/LauncherModel$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->H(Ljava/util/ArrayList;IIZ)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z


# direct methods
.method constructor <init>(IIZ)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/LauncherModel$h;->a:I

    iput p2, p0, Lcom/zui/launcher/LauncherModel$h;->b:I

    iput-boolean p3, p0, Lcom/zui/launcher/LauncherModel$h;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItemRough(Lcom/zui/launcher/ItemInfo;)Z
    .locals 3

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->screenId:I

    iget v1, p0, Lcom/zui/launcher/LauncherModel$h;->a:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->container:I

    iget v1, p0, Lcom/zui/launcher/LauncherModel$h;->b:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, Lcom/zui/launcher/LauncherModel$h;->c:Z

    if-eqz p0, :cond_0

    iget p0, p1, Lcom/zui/launcher/ItemInfo;->spanX:I

    if-ne p0, v2, :cond_0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method
