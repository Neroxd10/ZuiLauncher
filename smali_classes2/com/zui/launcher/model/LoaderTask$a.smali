.class Lcom/zui/launcher/model/LoaderTask$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/model/LoaderTask$ItemInfoFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/model/LoaderTask;->g(Landroid/content/ComponentName;Landroid/os/UserHandle;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/LoaderTask;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p2, p0, Lcom/zui/launcher/model/LoaderTask$a;->a:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterItem(Lcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;Landroid/content/ComponentName;Landroid/os/UserHandle;)Z
    .locals 0

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    :cond_0
    iget-object p0, p0, Lcom/zui/launcher/model/LoaderTask$a;->a:Landroid/content/ComponentName;

    invoke-virtual {p3, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p2, Lcom/zui/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0, p4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    :cond_1
    return p1
.end method
