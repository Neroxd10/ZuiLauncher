.class public final synthetic Lcom/zui/quickstep/views/u1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskView;

.field public final synthetic b:Lcom/zui/quickstep/RecentsModel;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskView;Lcom/zui/quickstep/RecentsModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/u1;->a:Lcom/zui/quickstep/views/TaskView;

    iput-object p2, p0, Lcom/zui/quickstep/views/u1;->b:Lcom/zui/quickstep/RecentsModel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/zui/quickstep/views/u1;->a:Lcom/zui/quickstep/views/TaskView;

    iget-object p0, p0, Lcom/zui/quickstep/views/u1;->b:Lcom/zui/quickstep/RecentsModel;

    check-cast p1, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    invoke-virtual {v0, p0, p1}, Lcom/zui/quickstep/views/TaskView;->k0(Lcom/zui/quickstep/RecentsModel;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method
