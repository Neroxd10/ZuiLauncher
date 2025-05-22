.class public final synthetic Lcom/zui/quickstep/views/e1;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/views/TaskMenuView;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/views/e1;->a:Lcom/zui/quickstep/views/TaskMenuView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/views/e1;->a:Lcom/zui/quickstep/views/TaskMenuView;

    invoke-static {p0}, Lcom/zui/quickstep/views/TaskMenuView;->k(Lcom/zui/quickstep/views/TaskMenuView;)V

    return-void
.end method
