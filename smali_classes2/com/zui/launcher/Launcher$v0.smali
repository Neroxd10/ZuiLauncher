.class Lcom/zui/launcher/Launcher$v0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->w1(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$v0;->c:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$v0;->a:Ljava/lang/String;

    iput p3, p0, Lcom/zui/launcher/Launcher$v0;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/Launcher$v0;->c:Lcom/zui/launcher/Launcher;

    iget-object v0, v0, Lcom/zui/launcher/Launcher;->n:Lcom/zui/launcher/Workspace;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/zui/launcher/Launcher$v0;->a:Ljava/lang/String;

    iget p0, p0, Lcom/zui/launcher/Launcher$v0;->b:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/Workspace;->invalidateAllViews(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
