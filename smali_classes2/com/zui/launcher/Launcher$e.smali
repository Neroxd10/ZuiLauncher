.class Lcom/zui/launcher/Launcher$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->bindAppsAdded(Lcom/zui/launcher/util/IntArray;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$e;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$e;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$e;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$e;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lcom/zui/launcher/Launcher;->bindCacheItems(Ljava/util/ArrayList;II)V

    return-void
.end method
