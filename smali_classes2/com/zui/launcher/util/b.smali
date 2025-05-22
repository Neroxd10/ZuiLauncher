.class public final synthetic Lcom/zui/launcher/util/b;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/BgObjectWithLooper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/BgObjectWithLooper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/b;->a:Lcom/zui/launcher/util/BgObjectWithLooper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/util/b;->a:Lcom/zui/launcher/util/BgObjectWithLooper;

    invoke-static {p0}, Lcom/zui/launcher/util/BgObjectWithLooper;->a(Lcom/zui/launcher/util/BgObjectWithLooper;)V

    return-void
.end method
