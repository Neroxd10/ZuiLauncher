.class public final synthetic Lcom/zui/quickstep/views/g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/RunnableList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/RunnableList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/g;->a:Lcom/zui/launcher/util/RunnableList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/g;->a:Lcom/zui/launcher/util/RunnableList;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/zui/quickstep/views/GroupedTaskView;->B0(Lcom/zui/launcher/util/RunnableList;Ljava/lang/Boolean;)V

    return-void
.end method
