.class Lcom/zui/launcher/AppWidgetResizeFrame$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/AppWidgetResizeFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/AppWidgetResizeFrame$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/AppWidgetResizeFrame$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZZILcom/zui/launcher/AppWidgetResizeFrame$b;)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    add-int/2addr p1, p3

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    :goto_0
    iput p1, p4, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    iget p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    if-eqz p2, :cond_1

    add-int/2addr p0, p3

    :cond_1
    iput p0, p4, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    return-void
.end method

.method public b(ZZIIIILcom/zui/launcher/AppWidgetResizeFrame$b;)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p7}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a(ZZILcom/zui/launcher/AppWidgetResizeFrame$b;)V

    iget p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    if-gez p3, :cond_0

    const/4 p3, 0x0

    iput p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    :cond_0
    iget p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    if-le p3, p6, :cond_1

    iput p6, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    :cond_1
    invoke-virtual {p7}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p3

    if-ge p3, p4, :cond_3

    if-eqz p1, :cond_2

    iget p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    sub-int/2addr p3, p4

    iput p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    add-int/2addr p3, p4

    iput p3, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    :cond_3
    :goto_0
    invoke-virtual {p7}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p3

    if-le p3, p5, :cond_5

    if-eqz p1, :cond_4

    iget p1, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    sub-int/2addr p1, p5

    iput p1, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    goto :goto_1

    :cond_4
    if-eqz p2, :cond_5

    iget p1, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    add-int/2addr p1, p5

    iput p1, p7, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    :cond_5
    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual {p7}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p1

    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p0

    sub-int/2addr p1, p0

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p0

    invoke-virtual {p7}, Lcom/zui/launcher/AppWidgetResizeFrame$b;->e()I

    move-result p1

    sub-int p1, p0, p1

    :goto_2
    return p1
.end method

.method public c(I)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    iget p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    invoke-static {p1, v0, p0}, Lcom/zui/launcher/Utilities;->boundToRange(III)I

    move-result p0

    return p0
.end method

.method public d(II)V
    .locals 0

    iput p1, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    iput p2, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    return-void
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->b:I

    iget p0, p0, Lcom/zui/launcher/AppWidgetResizeFrame$b;->a:I

    sub-int/2addr v0, p0

    return v0
.end method
