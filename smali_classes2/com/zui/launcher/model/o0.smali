.class public final synthetic Lcom/zui/launcher/model/o0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/model/o0;->a:I

    iput p2, p0, Lcom/zui/launcher/model/o0;->b:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/model/o0;->a:I

    iget p0, p0, Lcom/zui/launcher/model/o0;->b:I

    check-cast p1, Lcom/zui/launcher/ItemInfo;

    check-cast p2, Lcom/zui/launcher/ItemInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/model/ModelUtils;->e(IILcom/zui/launcher/ItemInfo;Lcom/zui/launcher/ItemInfo;)I

    move-result p0

    return p0
.end method
