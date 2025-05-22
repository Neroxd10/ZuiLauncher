.class Lcom/zui/launcher/Workspace$c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Workspace$c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Workspace$c;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Workspace$c;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Workspace$c$a;->a:Lcom/zui/launcher/Workspace$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/zui/launcher/Workspace$c$a;->a:Lcom/zui/launcher/Workspace$c;

    iget-object p0, p0, Lcom/zui/launcher/Workspace$c;->a:Lcom/zui/launcher/Workspace;

    iget-object p0, p0, Lcom/zui/launcher/Workspace;->C:Lcom/zui/launcher/Launcher;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/Launcher;->showOutOfSpaceMessage(Z)V

    :cond_0
    return-void
.end method
