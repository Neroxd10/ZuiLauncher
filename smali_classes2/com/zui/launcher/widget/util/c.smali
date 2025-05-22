.class public final synthetic Lcom/zui/launcher/widget/util/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/widget/util/c;->a:F

    iput p2, p0, Lcom/zui/launcher/widget/util/c;->b:F

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/zui/launcher/widget/util/c;->a:F

    iget p0, p0, Lcom/zui/launcher/widget/util/c;->b:F

    check-cast p1, Landroid/util/SizeF;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/widget/util/WidgetSizes;->c(FFLandroid/util/SizeF;)Landroid/util/SizeF;

    move-result-object p0

    return-object p0
.end method
