.class Lcom/zui/launcher/LauncherModel$j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherModel$ItemInfoFilterRough;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/LauncherModel;->G(Ljava/util/ArrayList;J)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    iput-wide p1, p0, Lcom/zui/launcher/LauncherModel$j;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItemRough(Lcom/zui/launcher/ItemInfo;)Z
    .locals 2

    iget p1, p1, Lcom/zui/launcher/ItemInfo;->container:I

    int-to-long v0, p1

    iget-wide p0, p0, Lcom/zui/launcher/LauncherModel$j;->a:J

    cmp-long p0, v0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
