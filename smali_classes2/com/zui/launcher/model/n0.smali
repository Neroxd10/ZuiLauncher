.class public final synthetic Lcom/zui/launcher/model/n0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/n0;->a:Lcom/zui/launcher/util/IntSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/n0;->a:Lcom/zui/launcher/util/IntSet;

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/ModelUtils;->c(Lcom/zui/launcher/util/IntSet;Lcom/zui/launcher/ItemInfo;)V

    return-void
.end method
