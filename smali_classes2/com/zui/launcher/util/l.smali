.class public final synthetic Lcom/zui/launcher/util/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/FlagOp;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/util/l;->a:I

    return-void
.end method


# virtual methods
.method public final apply(I)I
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/l;->a:I

    invoke-static {p0, p1}, Lcom/zui/launcher/util/FlagOp;->a(II)I

    move-result p0

    return p0
.end method
