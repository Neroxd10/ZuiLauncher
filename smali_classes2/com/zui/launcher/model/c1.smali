.class public final synthetic Lcom/zui/launcher/model/c1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/model/ModelWriter;

.field public final synthetic b:Lcom/zui/launcher/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/c1;->a:Lcom/zui/launcher/model/ModelWriter;

    iput-object p2, p0, Lcom/zui/launcher/model/c1;->b:Lcom/zui/launcher/ItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/model/c1;->a:Lcom/zui/launcher/model/ModelWriter;

    iget-object p0, p0, Lcom/zui/launcher/model/c1;->b:Lcom/zui/launcher/ItemInfo;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/model/ModelWriter;->u(Lcom/zui/launcher/ItemInfo;)Lcom/zui/launcher/util/ContentWriter;

    move-result-object p0

    return-object p0
.end method
