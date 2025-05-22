.class Lcom/zui/quickstep/TaskIconCache$a;
.super Lcom/zui/quickstep/util/CancellableTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/zui/quickstep/util/CancellableTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zui/quickstep/util/CancellableTask<",
        "Lcom/zui/quickstep/TaskIconCache$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic c:Ljava/util/function/Consumer;

.field final synthetic d:Lcom/zui/quickstep/TaskIconCache;


# direct methods
.method constructor <init>(Lcom/zui/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/quickstep/TaskIconCache$a;->d:Lcom/zui/quickstep/TaskIconCache;

    iput-object p2, p0, Lcom/zui/quickstep/TaskIconCache$a;->b:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p3, p0, Lcom/zui/quickstep/TaskIconCache$a;->c:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/zui/quickstep/util/CancellableTask;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/zui/quickstep/TaskIconCache$b;
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/TaskIconCache$a;->d:Lcom/zui/quickstep/TaskIconCache;

    iget-object p0, p0, Lcom/zui/quickstep/TaskIconCache$a;->b:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0, p0}, Lcom/zui/quickstep/TaskIconCache;->a(Lcom/zui/quickstep/TaskIconCache;Lcom/android/systemui/shared/recents/model/Task;)Lcom/zui/quickstep/TaskIconCache$b;

    move-result-object p0

    return-object p0
.end method

.method public c(Lcom/zui/quickstep/TaskIconCache$b;)V
    .locals 2

    iget-object v0, p0, Lcom/zui/quickstep/TaskIconCache$a;->b:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, p1, Lcom/zui/quickstep/TaskIconCache$b;->a:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iget-object p1, p1, Lcom/zui/quickstep/TaskIconCache$b;->b:Ljava/lang/String;

    iput-object p1, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/quickstep/TaskIconCache$a;->c:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic getResultOnBg()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/zui/quickstep/TaskIconCache$a;->b()Lcom/zui/quickstep/TaskIconCache$b;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic handleResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/quickstep/TaskIconCache$b;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/TaskIconCache$a;->c(Lcom/zui/quickstep/TaskIconCache$b;)V

    return-void
.end method
