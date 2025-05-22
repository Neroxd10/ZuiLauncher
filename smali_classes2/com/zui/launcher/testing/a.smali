.class public final synthetic Lcom/zui/launcher/testing/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/testing/TestInformationHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/testing/TestInformationHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/testing/a;->a:Lcom/zui/launcher/testing/TestInformationHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/testing/a;->a:Lcom/zui/launcher/testing/TestInformationHandler;

    invoke-virtual {p0}, Lcom/zui/launcher/testing/TestInformationHandler;->a()V

    return-void
.end method
