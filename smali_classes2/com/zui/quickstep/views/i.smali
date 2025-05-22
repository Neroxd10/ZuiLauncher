.class public final synthetic Lcom/zui/quickstep/views/i;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/GroupedTaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/GroupedTaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/i;->a:Lcom/zui/quickstep/views/GroupedTaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/i;->a:Lcom/zui/quickstep/views/GroupedTaskView;

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1}, Lcom/zui/quickstep/views/GroupedTaskView;->D0(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method
