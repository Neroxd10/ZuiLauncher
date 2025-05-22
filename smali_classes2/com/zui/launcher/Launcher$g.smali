.class Lcom/zui/launcher/Launcher$g;
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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$g;->b:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$g;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$g;->b:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher$g;->a:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/zui/launcher/Launcher;->bindItems(Ljava/util/List;Z)V

    return-void
.end method
