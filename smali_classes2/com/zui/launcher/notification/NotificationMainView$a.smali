.class Lcom/zui/launcher/notification/NotificationMainView$a;
.super Landroid/util/FloatProperty;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/notification/NotificationMainView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/zui/launcher/notification/NotificationMainView;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/notification/NotificationMainView;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/notification/NotificationMainView;->a(Lcom/zui/launcher/notification/NotificationMainView;)Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/notification/NotificationMainView;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/zui/launcher/notification/NotificationMainView;->setContentTranslation(F)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/notification/NotificationMainView$a;->a(Lcom/zui/launcher/notification/NotificationMainView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/notification/NotificationMainView;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/notification/NotificationMainView$a;->b(Lcom/zui/launcher/notification/NotificationMainView;F)V

    return-void
.end method
