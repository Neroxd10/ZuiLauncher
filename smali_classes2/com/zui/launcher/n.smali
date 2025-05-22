.class public final synthetic Lcom/zui/launcher/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/ButtonDropTarget;

.field public final synthetic b:Lcom/zui/launcher/DropTarget$DragObject;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/ButtonDropTarget;Lcom/zui/launcher/DropTarget$DragObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/n;->a:Lcom/zui/launcher/ButtonDropTarget;

    iput-object p2, p0, Lcom/zui/launcher/n;->b:Lcom/zui/launcher/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/n;->a:Lcom/zui/launcher/ButtonDropTarget;

    iget-object p0, p0, Lcom/zui/launcher/n;->b:Lcom/zui/launcher/DropTarget$DragObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/ButtonDropTarget;->c(Lcom/zui/launcher/DropTarget$DragObject;)V

    return-void
.end method
