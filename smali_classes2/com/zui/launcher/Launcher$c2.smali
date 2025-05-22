.class Lcom/zui/launcher/Launcher$c2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/LauncherOverlayCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c2"
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$c2;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(F)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$c2;->a:Lcom/zui/launcher/Launcher;

    iget-object p0, p0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zui/launcher/Workspace;->onOverlayScrollChanged(F)V

    :cond_0
    return-void
.end method
