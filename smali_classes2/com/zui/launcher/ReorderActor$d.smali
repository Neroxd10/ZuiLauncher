.class Lcom/zui/launcher/ReorderActor$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/ReorderActor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:I

.field final synthetic b:Lcom/zui/launcher/ReorderActor;


# direct methods
.method public constructor <init>(Lcom/zui/launcher/ReorderActor;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/ReorderActor$d;->b:Lcom/zui/launcher/ReorderActor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/ReorderActor$d;->a:I

    iput p2, p0, Lcom/zui/launcher/ReorderActor$d;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget v0, p0, Lcom/zui/launcher/ReorderActor$d;->a:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/launcher/ReorderActor$d;->a:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/zui/launcher/ReorderActor$d;->b()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/launcher/ReorderActor$d;->a:I

    invoke-static {}, Lcom/zui/launcher/ReorderActor;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/zui/launcher/ReorderActor$d;->b:Lcom/zui/launcher/ReorderActor;

    invoke-static {v0}, Lcom/zui/launcher/ReorderActor;->b(Lcom/zui/launcher/ReorderActor;)Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/zui/launcher/ReorderActor$d;->b:Lcom/zui/launcher/ReorderActor;

    invoke-static {p0}, Lcom/zui/launcher/ReorderActor;->b(Lcom/zui/launcher/ReorderActor;)Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/zui/launcher/ReorderActor$ReorderingChangedListener;->onReorderEnd()V

    :cond_0
    return-void
.end method
