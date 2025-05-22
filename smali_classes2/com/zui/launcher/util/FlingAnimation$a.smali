.class Lcom/zui/launcher/util/FlingAnimation$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/util/FlingAnimation;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:I

.field private b:F

.field final synthetic c:J

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/zui/launcher/util/FlingAnimation;JI)V
    .locals 0

    iput-wide p2, p0, Lcom/zui/launcher/util/FlingAnimation$a;->c:J

    iput p4, p0, Lcom/zui/launcher/util/FlingAnimation$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/zui/launcher/util/FlingAnimation$a;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/zui/launcher/util/FlingAnimation$a;->b:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5

    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation$a;->a:I

    if-gez v0, :cond_0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zui/launcher/util/FlingAnimation$a;->a:I

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/zui/launcher/util/FlingAnimation$a;->c:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    iget v2, p0, Lcom/zui/launcher/util/FlingAnimation$a;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/FlingAnimation$a;->b:F

    iget v0, p0, Lcom/zui/launcher/util/FlingAnimation$a;->a:I

    goto :goto_0

    :cond_1
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    iget p0, p0, Lcom/zui/launcher/util/FlingAnimation$a;->b:F

    add-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method
