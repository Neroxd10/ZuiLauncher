.class public final synthetic Lcom/zui/launcher/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/DeleteDropTarget2;

.field public final synthetic b:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/DeleteDropTarget2;Lcom/zui/launcher/model/ModelWriter;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/s;->a:Lcom/zui/launcher/DeleteDropTarget2;

    iput-object p2, p0, Lcom/zui/launcher/s;->b:Lcom/zui/launcher/model/ModelWriter;

    iput p3, p0, Lcom/zui/launcher/s;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/s;->a:Lcom/zui/launcher/DeleteDropTarget2;

    iget-object v1, p0, Lcom/zui/launcher/s;->b:Lcom/zui/launcher/model/ModelWriter;

    iget p0, p0, Lcom/zui/launcher/s;->c:I

    invoke-virtual {v0, v1, p0}, Lcom/zui/launcher/DeleteDropTarget2;->f(Lcom/zui/launcher/model/ModelWriter;I)V

    return-void
.end method
