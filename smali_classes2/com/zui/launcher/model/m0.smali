.class public final synthetic Lcom/zui/launcher/model/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/IntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/IntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/m0;->a:Lcom/zui/launcher/util/IntArray;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/m0;->a:Lcom/zui/launcher/util/IntArray;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/util/IntArray;->add(I)V

    return-void
.end method
