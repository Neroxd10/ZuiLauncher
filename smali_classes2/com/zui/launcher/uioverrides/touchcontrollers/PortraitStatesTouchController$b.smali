.class Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/animation/TimeInterpolator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;->a:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/uioverrides/touchcontrollers/PortraitStatesTouchController$b;->a:Landroid/animation/TimeInterpolator;

    invoke-interface {p0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p0

    return p0
.end method
