.class Lcom/zui/launcher/Launcher$l1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Launcher$e2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/Launcher;->bindCacheItems(Ljava/util/ArrayList;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/zui/launcher/Launcher;


# direct methods
.method constructor <init>(Lcom/zui/launcher/Launcher;Ljava/util/ArrayList;II)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/Launcher$l1;->d:Lcom/zui/launcher/Launcher;

    iput-object p2, p0, Lcom/zui/launcher/Launcher$l1;->a:Ljava/util/ArrayList;

    iput p3, p0, Lcom/zui/launcher/Launcher$l1;->b:I

    iput p4, p0, Lcom/zui/launcher/Launcher$l1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public o()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zui/launcher/Launcher$l1;->d:Lcom/zui/launcher/Launcher;

    iget-object v1, p0, Lcom/zui/launcher/Launcher$l1;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/zui/launcher/Launcher$l1;->b:I

    iget p0, p0, Lcom/zui/launcher/Launcher$l1;->c:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/zui/launcher/Launcher;->bindCacheItems(Ljava/util/ArrayList;II)V

    return-void
.end method
