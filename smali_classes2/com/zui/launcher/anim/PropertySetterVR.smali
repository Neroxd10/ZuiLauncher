.class public interface abstract Lcom/zui/launcher/anim/PropertySetterVR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/launcher/anim/PropertySetterVR$a;

    invoke-direct {v0}, Lcom/zui/launcher/anim/PropertySetterVR$a;-><init>()V

    sput-object v0, Lcom/zui/launcher/anim/PropertySetterVR;->NO_ANIM_PROPERTY_SETTER:Lcom/zui/launcher/anim/PropertySetter;

    return-void
.end method


# virtual methods
.method public setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;F",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1, p3}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;Landroid/util/IntProperty;ILandroid/animation/TimeInterpolator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;I",
            "Landroid/animation/TimeInterpolator;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1, p3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    return-void
.end method

.method public setViewAlpha(Landroid/view/View;FLandroid/animation/TimeInterpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    invoke-static {p1}, Lcom/zui/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_0
    return-void
.end method
