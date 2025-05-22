.class Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:F

.field final synthetic c:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;


# direct methods
.method constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;Ljava/util/List;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/zui/launcher/model/WidgetItem;",
            ">;>;F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;->c:Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;->a:Ljava/util/List;

    iput p3, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;->b:F

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/widget/picker/WidgetsRecommendationTableLayout$a;->b:F

    return p0
.end method
