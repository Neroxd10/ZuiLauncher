.class public Lcom/zui/quickstep/SimpleOrientationTouchTransformer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;


# static fields
.field public static final INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/zui/launcher/util/MainThreadInitializedObject<",
            "Lcom/zui/quickstep/SimpleOrientationTouchTransformer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/zui/quickstep/OrientationRectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/zui/launcher/util/MainThreadInitializedObject;

    sget-object v1, Lcom/zui/quickstep/w2;->a:Lcom/zui/quickstep/w2;

    invoke-direct {v0, v1}, Lcom/zui/launcher/util/MainThreadInitializedObject;-><init>(Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/zui/launcher/util/DisplayController;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DisplayController;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/DisplayController;->addChangeListener(Lcom/zui/launcher/util/DisplayController$DisplayInfoChangeListener;)V

    sget-object v0, Lcom/zui/launcher/util/DisplayController;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DisplayController;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DisplayController;->getInfo()Lcom/zui/launcher/util/DisplayController$Info;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {p0, p1, v0, v1}, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->onDisplayInfoChanged(Landroid/content/Context;Lcom/zui/launcher/util/DisplayController$Info;I)V

    return-void
.end method


# virtual methods
.method public onDisplayInfoChanged(Landroid/content/Context;Lcom/zui/launcher/util/DisplayController$Info;I)V
    .locals 6

    and-int/lit8 p1, p3, 0x3

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onDisplayInfoChanged, info.rotation:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p2, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SimpleOrientationTouchTransformer"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/zui/quickstep/OrientationRectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object p3, p2, Lcom/zui/launcher/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, p3, Landroid/graphics/Point;->y:I

    int-to-float v3, v0

    iget p3, p3, Landroid/graphics/Point;->x:I

    int-to-float v4, p3

    iget v5, p2, Lcom/zui/launcher/util/DisplayController$Info;->rotation:I

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/zui/quickstep/OrientationRectF;-><init>(FFFFI)V

    iput-object p1, p0, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->a:Lcom/zui/quickstep/OrientationRectF;

    return-void
.end method

.method public transform(Landroid/view/MotionEvent;I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "transform, ev:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleOrientationTouchTransformer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "transform, recents activity rotation:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " vs "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->a:Lcom/zui/quickstep/OrientationRectF;

    invoke-virtual {v2}, Lcom/zui/quickstep/OrientationRectF;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/zui/quickstep/SimpleOrientationTouchTransformer;->a:Lcom/zui/quickstep/OrientationRectF;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/zui/quickstep/OrientationRectF;->applyTransformToRotation(Landroid/view/MotionEvent;IZ)Z

    return-void
.end method
