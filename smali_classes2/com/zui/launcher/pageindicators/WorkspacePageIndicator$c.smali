.class Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$c;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->d(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p1, p0}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;->e(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;I)I

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$c;->a(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/pageindicators/WorkspacePageIndicator$c;->b(Lcom/zui/launcher/pageindicators/WorkspacePageIndicator;Ljava/lang/Integer;)V

    return-void
.end method
