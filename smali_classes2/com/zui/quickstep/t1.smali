.class public final synthetic Lcom/zui/quickstep/t1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/android/systemui/shared/recents/model/Task;

.field public final synthetic b:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/t1;->a:Lcom/android/systemui/shared/recents/model/Task;

    iput-object p2, p0, Lcom/zui/quickstep/t1;->b:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/t1;->a:Lcom/android/systemui/shared/recents/model/Task;

    iget-object p0, p0, Lcom/zui/quickstep/t1;->b:Ljava/util/function/Consumer;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-static {v0, p0, p1}, Lcom/zui/quickstep/TaskThumbnailCache;->c(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
