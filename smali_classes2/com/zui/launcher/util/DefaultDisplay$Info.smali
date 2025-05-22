.class public Lcom/zui/launcher/util/DefaultDisplay$Info;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/util/DefaultDisplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Info"
.end annotation


# instance fields
.field public final id:I

.field public final largestSize:Landroid/graphics/Point;

.field public final metrics:Landroid/util/DisplayMetrics;

.field public final realSize:Landroid/graphics/Point;

.field public final rotation:I

.field public final singleFrameMs:I

.field public final smallestSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->id:I

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    :goto_0
    iput v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->singleFrameMs:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    invoke-virtual {p1, v0, v1}, Landroid/view/Display;->getCurrentSizeRange(Landroid/graphics/Point;Landroid/graphics/Point;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method static synthetic a(Lcom/zui/launcher/util/DefaultDisplay$Info;Lcom/zui/launcher/util/DefaultDisplay$Info;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/zui/launcher/util/DefaultDisplay$Info;->b(Lcom/zui/launcher/util/DefaultDisplay$Info;)Z

    move-result p0

    return p0
.end method

.method private b(Lcom/zui/launcher/util/DefaultDisplay$Info;)Z
    .locals 7

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    iget-object v1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const-string v2, "DefaultDisplay"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    iget-object v5, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->y:I

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Point;->equals(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    aput-object p1, v0, v3

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    aput-object p0, v0, v4

    const-string p0, "Display size changed from %s to %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    iget-object v5, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    invoke-virtual {v0, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    iget-object v5, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    invoke-virtual {v0, v5}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return v3

    :cond_2
    :goto_1
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    aput-object v5, v0, v3

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    aput-object p0, v0, v4

    iget-object p0, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    aput-object p0, v0, v1

    const/4 p0, 0x3

    iget-object p1, p1, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    aput-object p1, v0, p0

    const-string p0, "Available size changed from [%s, %s] to [%s, %s]"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Info{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", singleFrameMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->singleFrameMs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", realSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->realSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", smallestSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->smallestSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", largestSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->largestSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", metrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/zui/launcher/util/DefaultDisplay$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
