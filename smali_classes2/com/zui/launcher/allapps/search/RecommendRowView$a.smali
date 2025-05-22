.class Lcom/zui/launcher/allapps/search/RecommendRowView$a;
.super Landroid/util/IntProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/allapps/search/RecommendRowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/IntProperty<",
        "Lcom/zui/launcher/allapps/search/RecommendRowView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/allapps/search/RecommendRowView;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/allapps/search/RecommendRowView;->a(Lcom/zui/launcher/allapps/search/RecommendRowView;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/allapps/search/RecommendRowView;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/allapps/search/RecommendRowView;->setTextAlpha(I)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/allapps/search/RecommendRowView$a;->a(Lcom/zui/launcher/allapps/search/RecommendRowView;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/allapps/search/RecommendRowView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/allapps/search/RecommendRowView$a;->b(Lcom/zui/launcher/allapps/search/RecommendRowView;I)V

    return-void
.end method
