.class public final synthetic Lcom/zui/launcher/model/q0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/IntSet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/IntSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/model/q0;->a:Lcom/zui/launcher/util/IntSet;

    return-void
.end method


# virtual methods
.method public final test(I)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/model/q0;->a:Lcom/zui/launcher/util/IntSet;

    invoke-static {p0, p1}, Lcom/zui/launcher/model/ModelUtils;->d(Lcom/zui/launcher/util/IntSet;I)Z

    move-result p0

    return p0
.end method
