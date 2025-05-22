.class public final synthetic Lcom/zui/launcher/y0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/zui/launcher/y0;->a:F

    iput p2, p0, Lcom/zui/launcher/y0;->b:F

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    iget v0, p0, Lcom/zui/launcher/y0;->a:F

    iget p0, p0, Lcom/zui/launcher/y0;->b:F

    check-cast p1, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    check-cast p2, Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;

    invoke-static {v0, p0, p1, p2}, Lcom/zui/launcher/InvariantDeviceProfile;->n(FFLcom/zui/launcher/InvariantDeviceProfile$DisplayOption;Lcom/zui/launcher/InvariantDeviceProfile$DisplayOption;)I

    move-result p0

    return p0
.end method
