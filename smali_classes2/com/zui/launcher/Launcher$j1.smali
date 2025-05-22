.class Lcom/zui/launcher/Launcher$j1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Launcher$e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->reorderItemsManualDown()V
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

    iput-object p1, p0, Lcom/zui/launcher/Launcher$j1;->a:Lcom/zui/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/Launcher$j1;->a:Lcom/zui/launcher/Launcher;

    invoke-virtual {p0}, Lcom/zui/launcher/Launcher;->reorderItemsManualDown()V

    return-void
.end method
