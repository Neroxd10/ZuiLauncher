.class Lcom/zui/launcher/Launcher$n1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$n1;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReorderEnd()V
    .locals 3

    const-string v0, "---------->onReorderEnd---------------- "

    invoke-static {v0}, Lcom/zui/launcher/ReorderActor;->printLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/zui/launcher/Launcher$n1;->a:Lcom/zui/launcher/Launcher;

    const/4 v1, 0x0

    const-string v2, "reorder"

    invoke-virtual {v0, v1, v2}, Lcom/zui/launcher/Launcher;->setAnimating(ZLjava/lang/String;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$n1;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->handlePendingRunnable()V

    return-void
.end method
