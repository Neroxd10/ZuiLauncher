.class public final synthetic Lcom/zui/quickstep/util/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/util/DisplayManagerWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/util/DisplayManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/j;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/j;->a:Lcom/zui/quickstep/util/DisplayManagerWrapper;

    invoke-virtual {p0}, Lcom/zui/quickstep/util/DisplayManagerWrapper;->l()V

    return-void
.end method
