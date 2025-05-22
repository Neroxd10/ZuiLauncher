.class public Lcom/zui/quickstep/util/SplitScreenBounds;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/zui/quickstep/util/SplitScreenBounds;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/zui/launcher/util/WindowBounds;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/zui/quickstep/util/SplitScreenBounds;

    invoke-direct {v0}, Lcom/zui/quickstep/util/SplitScreenBounds;-><init>()V

    sput-object v0, Lcom/zui/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/zui/quickstep/util/SplitScreenBounds;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/zui/launcher/util/WindowBounds;
    .locals 7

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    new-instance v2, Lcom/zui/launcher/util/WindowBounds;

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    new-instance v3, Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Insets;->left:I

    iget v5, v1, Landroid/graphics/Insets;->top:I

    iget v6, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v3, v4, v5, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v0, v3}, Lcom/zui/launcher/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    sget-object v0, Lcom/zui/launcher/util/DefaultDisplay;->INSTANCE:Lcom/zui/launcher/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zui/launcher/util/DefaultDisplay;

    invoke-virtual {v0}, Lcom/zui/launcher/util/DefaultDisplay;->getInfo()Lcom/zui/launcher/util/DefaultDisplay$Info;

    move-result-object v0

    iget v0, v0, Lcom/zui/launcher/util/DefaultDisplay$Info;->rotation:I

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0704c8

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v1, 0x2

    div-int/2addr p0, v1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lcom/zui/launcher/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/zui/launcher/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v6, v2, Lcom/zui/launcher/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int/2addr v5, p0

    iput v5, v0, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v2, Lcom/zui/launcher/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v4, v2, Lcom/zui/launcher/util/WindowBounds;->insets:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, v2, Lcom/zui/launcher/util/WindowBounds;->availableSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v1

    add-int/2addr v5, v6

    add-int/2addr v5, p0

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iput v3, v4, Landroid/graphics/Rect;->top:I

    :goto_1
    new-instance p0, Lcom/zui/launcher/util/WindowBounds;

    iget-object v0, v2, Lcom/zui/launcher/util/WindowBounds;->bounds:Landroid/graphics/Rect;

    iget-object v1, v2, Lcom/zui/launcher/util/WindowBounds;->insets:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/zui/launcher/util/WindowBounds;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object p0
.end method


# virtual methods
.method public addOnChangeListener(Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getSecondaryWindowBounds(Landroid/content/Context;)Lcom/zui/launcher/util/WindowBounds;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->b:Lcom/zui/launcher/util/WindowBounds;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/zui/quickstep/util/SplitScreenBounds;->a(Landroid/content/Context;)Lcom/zui/launcher/util/WindowBounds;

    move-result-object p1

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->b:Lcom/zui/launcher/util/WindowBounds;

    :cond_0
    iget-object p0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->b:Lcom/zui/launcher/util/WindowBounds;

    return-object p0
.end method

.method public removeOnChangeListener(Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->a:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSecondaryWindowBounds(Lcom/zui/launcher/util/WindowBounds;)V
    .locals 1
    .param p1    # Lcom/zui/launcher/util/WindowBounds;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    iget-object v0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->b:Lcom/zui/launcher/util/WindowBounds;

    invoke-virtual {p1, v0}, Lcom/zui/launcher/util/WindowBounds;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->b:Lcom/zui/launcher/util/WindowBounds;

    iget-object p0, p0, Lcom/zui/quickstep/util/SplitScreenBounds;->a:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;

    invoke-interface {p1}, Lcom/zui/quickstep/util/SplitScreenBounds$OnChangeListener;->onSecondaryWindowBoundsChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
