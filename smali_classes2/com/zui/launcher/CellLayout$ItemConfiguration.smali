.class public Lcom/zui/launcher/CellLayout$ItemConfiguration;
.super Lcom/zui/launcher/util/CellAndSpan;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemConfiguration"
.end annotation


# instance fields
.field final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/zui/launcher/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Lcom/zui/launcher/util/CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/zui/launcher/util/CellAndSpan;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->e:Z

    return-void
.end method


# virtual methods
.method a(Landroid/view/View;Lcom/zui/launcher/util/CellAndSpan;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b:Landroid/util/ArrayMap;

    new-instance v0, Lcom/zui/launcher/util/CellAndSpan;

    invoke-direct {v0}, Lcom/zui/launcher/util/CellAndSpan;-><init>()V

    invoke-virtual {p2, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method b()I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    iget p0, p0, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    mul-int/2addr v0, p0

    return v0
.end method

.method c(Ljava/util/ArrayList;Landroid/graphics/Rect;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "ZI)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    iget v3, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    invoke-static {v3}, Lcom/zui/launcher/Utilities;->getExchangeCellH(I)I

    move-result v3

    iget v4, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v5, v1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    invoke-static {v4, v5, p4}, Lcom/zui/launcher/Utilities;->getExchangeCellV(III)I

    move-result v4

    if-eqz v0, :cond_0

    iget v0, v1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v3

    iget v1, v1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v4

    invoke-virtual {p2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_0
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v2, v3

    iget v1, v1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v4

    invoke-virtual {p2, v3, v4, v2, v1}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget v0, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v4, v1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v0

    iget v1, v1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v0, v3, v4, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    iget v2, v1, Lcom/zui/launcher/util/CellAndSpan;->cellX:I

    iget v3, v1, Lcom/zui/launcher/util/CellAndSpan;->cellY:I

    iget v4, v1, Lcom/zui/launcher/util/CellAndSpan;->spanX:I

    add-int/2addr v4, v2

    iget v1, v1, Lcom/zui/launcher/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v2, v3, v4, v1}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method d()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/CellAndSpan;->copyFrom(Lcom/zui/launcher/util/CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method e()V
    .locals 4

    iget-object v0, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->b:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/CellAndSpan;

    iget-object v3, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/zui/launcher/util/CellAndSpan;

    invoke-virtual {v2, v1}, Lcom/zui/launcher/util/CellAndSpan;->copyFrom(Lcom/zui/launcher/util/CellAndSpan;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  Solution is : \n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   child is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/zui/launcher/ItemInfo;

    iget-object v4, v4, Lcom/zui/launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "   c: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/zui/launcher/CellLayout$ItemConfiguration;->a:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " \n"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
