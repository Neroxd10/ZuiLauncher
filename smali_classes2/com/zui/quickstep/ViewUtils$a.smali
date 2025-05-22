.class Lcom/zui/quickstep/ViewUtils$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/LongConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/quickstep/ViewUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/android/systemui/shared/system/ViewRootImplCompat;

.field final b:Ljava/lang/Runnable;

.field final c:Ljava/util/function/BooleanSupplier;

.field final d:Landroid/os/Handler;

.field e:I


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/lang/Runnable;Ljava/util/function/BooleanSupplier;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/zui/quickstep/ViewUtils$a;->e:I

    new-instance v0, Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-direct {v0, p1}, Lcom/android/systemui/shared/system/ViewRootImplCompat;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/zui/quickstep/ViewUtils$a;->a:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    iput-object p2, p0, Lcom/zui/quickstep/ViewUtils$a;->b:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/zui/quickstep/ViewUtils$a;->c:Ljava/util/function/BooleanSupplier;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/ViewUtils$a;->d:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/zui/quickstep/ViewUtils$a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/ViewUtils$a;->d()Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/zui/quickstep/ViewUtils$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/zui/quickstep/ViewUtils$a;->c()V

    return-void
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/ViewUtils$a;->c:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/zui/quickstep/ViewUtils$a;->e:I

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/zui/quickstep/ViewUtils$a;->e:I

    invoke-direct {p0}, Lcom/zui/quickstep/ViewUtils$a;->d()Z

    return-void

    :cond_1
    iget-object p0, p0, Lcom/zui/quickstep/ViewUtils$a;->b:Ljava/lang/Runnable;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method private d()Z
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/ViewUtils$a;->a:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/zui/quickstep/ViewUtils$a;->a:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->registerRtFrameCallback(Ljava/util/function/LongConsumer;)V

    iget-object p0, p0, Lcom/zui/quickstep/ViewUtils$a;->a:Lcom/android/systemui/shared/system/ViewRootImplCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/ViewRootImplCompat;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public accept(J)V
    .locals 0

    iget-object p1, p0, Lcom/zui/quickstep/ViewUtils$a;->d:Landroid/os/Handler;

    new-instance p2, Lcom/zui/quickstep/u2;

    invoke-direct {p2, p0}, Lcom/zui/quickstep/u2;-><init>(Lcom/zui/quickstep/ViewUtils$a;)V

    invoke-static {p1, p2}, Lcom/zui/launcher/Utilities;->postAsyncCallback(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
