.class Lcom/zui/launcher/Launcher$s1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->m1(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/util/PendingRequestArgs;

.field final synthetic d:Lcom/zui/launcher/CellLayout;

.field final synthetic e:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;IILcom/zui/launcher/util/PendingRequestArgs;Lcom/zui/launcher/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$s1;->e:Lcom/zui/launcher/Launcher;

    iput p2, p0, Lcom/zui/launcher/Launcher$s1;->a:I

    iput p3, p0, Lcom/zui/launcher/Launcher$s1;->b:I

    iput-object p4, p0, Lcom/zui/launcher/Launcher$s1;->c:Lcom/zui/launcher/util/PendingRequestArgs;

    iput-object p5, p0, Lcom/zui/launcher/Launcher$s1;->d:Lcom/zui/launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/Launcher$s1;->e:Lcom/zui/launcher/Launcher;

    iget v1, p0, Lcom/zui/launcher/Launcher$s1;->a:I

    iget v2, p0, Lcom/zui/launcher/Launcher$s1;->b:I

    iget-object v3, p0, Lcom/zui/launcher/Launcher$s1;->c:Lcom/zui/launcher/util/PendingRequestArgs;

    invoke-virtual {v0, v1, v2, v3}, Lcom/zui/launcher/Launcher;->T0(IILcom/zui/launcher/util/PendingRequestArgs;)V

    iget-object p0, p0, Lcom/zui/launcher/Launcher$s1;->d:Lcom/zui/launcher/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zui/launcher/CellLayout;->setDropPending(Z)V

    return-void
.end method
