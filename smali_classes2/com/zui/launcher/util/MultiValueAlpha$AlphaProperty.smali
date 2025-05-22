.class public Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/MultiValueAlpha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AlphaProperty"
.end annotation


# instance fields
.field private final a:I

.field private b:F

.field private c:F

.field final synthetic d:Lcom/zui/launcher/util/MultiValueAlpha;


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/MultiValueAlpha;I)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    iput p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->c:F

    iput p2, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->a:I

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;)F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    return p0
.end method


# virtual methods
.method public getValue()F
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    return p0
.end method

.method public setValue(F)V
    .locals 5

    iget v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-static {v0}, Lcom/zui/launcher/util/MultiValueAlpha;->a(Lcom/zui/launcher/util/MultiValueAlpha;)I

    move-result v0

    iget v1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->a:I

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->c:F

    iget-object v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-static {v0}, Lcom/zui/launcher/util/MultiValueAlpha;->c(Lcom/zui/launcher/util/MultiValueAlpha;)[Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    if-eq v3, p0, :cond_1

    iget v4, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->c:F

    iget v3, v3, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    mul-float/2addr v4, v3

    iput v4, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->c:F

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    iget v1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->a:I

    invoke-static {v0, v1}, Lcom/zui/launcher/util/MultiValueAlpha;->b(Lcom/zui/launcher/util/MultiValueAlpha;I)I

    iput p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    iget-object p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-static {p1}, Lcom/zui/launcher/util/MultiValueAlpha;->d(Lcom/zui/launcher/util/MultiValueAlpha;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->c:F

    iget v1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-static {p1}, Lcom/zui/launcher/util/MultiValueAlpha;->e(Lcom/zui/launcher/util/MultiValueAlpha;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->d:Lcom/zui/launcher/util/MultiValueAlpha;

    invoke-static {p0}, Lcom/zui/launcher/util/MultiValueAlpha;->d(Lcom/zui/launcher/util/MultiValueAlpha;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/zui/launcher/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/zui/launcher/util/MultiValueAlpha$AlphaProperty;->b:F

    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
