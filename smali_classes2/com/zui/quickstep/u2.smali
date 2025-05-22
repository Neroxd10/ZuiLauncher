.class public final synthetic Lcom/zui/quickstep/u2;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/quickstep/ViewUtils$a;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/quickstep/ViewUtils$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/u2;->a:Lcom/zui/quickstep/ViewUtils$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/u2;->a:Lcom/zui/quickstep/ViewUtils$a;

    invoke-static {p0}, Lcom/zui/quickstep/ViewUtils$a;->b(Lcom/zui/quickstep/ViewUtils$a;)V

    return-void
.end method
