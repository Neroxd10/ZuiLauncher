.class final Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;
.super Lcom/zui/launcher/util/ComponentKey;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/zui/launcher/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iput-object p3, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/zui/launcher/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;

    iget-object p1, p1, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/zui/launcher/util/ComponentKey;->hashCode()I

    move-result v0

    iget-object p0, p0, Lcom/zui/launcher/widget/DatabaseWidgetPreviewLoader$c;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
