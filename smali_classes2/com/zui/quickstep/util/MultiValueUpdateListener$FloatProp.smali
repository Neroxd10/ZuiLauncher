.class public final Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/util/MultiValueUpdateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "FloatProp"
.end annotation


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F

.field private final d:F

.field private final e:Landroid/view/animation/Interpolator;

.field public value:F


# direct methods
.method public constructor <init>(Lcom/zui/quickstep/util/MultiValueUpdateListener;FFFFLandroid/view/animation/Interpolator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->a:F

    iput p2, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->value:F

    iput p3, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->b:F

    iput p4, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->c:F

    iput p5, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->d:F

    iput-object p6, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->e:Landroid/view/animation/Interpolator;

    invoke-static {p1}, Lcom/zui/quickstep/util/MultiValueUpdateListener;->a(Lcom/zui/quickstep/util/MultiValueUpdateListener;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->c:F

    return p0
.end method

.method static synthetic b(Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->d:F

    return p0
.end method

.method static synthetic c(Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;)Landroid/view/animation/Interpolator;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->e:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method static synthetic d(Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->b:F

    return p0
.end method

.method static synthetic e(Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;)F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->a:F

    return p0
.end method


# virtual methods
.method public getStartValue()F
    .locals 0

    iget p0, p0, Lcom/zui/quickstep/util/MultiValueUpdateListener$FloatProp;->a:F

    return p0
.end method
