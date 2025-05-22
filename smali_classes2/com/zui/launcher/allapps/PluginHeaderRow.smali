.class public Lcom/zui/launcher/allapps/PluginHeaderRow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/allapps/FloatingHeaderRow;


# instance fields
.field private final a:Lcom/android/systemui/plugins/AllAppsRow;

.field final b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugins/AllAppsRow;Lcom/zui/launcher/allapps/FloatingHeaderView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->a:Lcom/android/systemui/plugins/AllAppsRow;

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/AllAppsRow;->setup(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getExpectedHeight()I
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->a:Lcom/android/systemui/plugins/AllAppsRow;

    invoke-interface {p0}, Lcom/android/systemui/plugins/AllAppsRow;->getExpectedHeight()I

    move-result p0

    return p0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/zui/launcher/allapps/PluginHeaderRow;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/zui/launcher/allapps/PluginHeaderRow;

    return-object p0
.end method

.method public hasVisibleContent()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setContentVisibility(ZZLcom/zui/launcher/anim/PropertySetter;Landroid/view/animation/Interpolator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    if-eqz p2, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p0, p1, p2, p4}, Lcom/zui/launcher/anim/PropertySetter;->setFloat(Ljava/lang/Object;Landroid/util/Property;FLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/zui/launcher/DeviceProfile;)V
    .locals 0

    return-void
.end method

.method public setVerticalScroll(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/zui/launcher/allapps/PluginHeaderRow;->b:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    return-void
.end method

.method public setup(Lcom/zui/launcher/allapps/FloatingHeaderView;[Lcom/zui/launcher/allapps/FloatingHeaderRow;Z)V
    .locals 0

    return-void
.end method

.method public shouldDraw()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
