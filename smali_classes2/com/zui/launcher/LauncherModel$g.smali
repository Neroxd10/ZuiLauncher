.class Lcom/zui/launcher/LauncherModel$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->J(Ljava/util/ArrayList;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/LauncherModel$g;->a:I

    iput p2, p0, Lcom/zui/launcher/LauncherModel$g;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItemRough(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    iget v0, p1, Lcom/zui/launcher/ItemInfo;->id:I

    iget v1, p0, Lcom/zui/launcher/LauncherModel$g;->a:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->itemType:I

    iget p0, p0, Lcom/zui/launcher/LauncherModel$g;->b:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
