.class public final synthetic Lcom/zui/launcher/globalsearch/widgetview/cpu/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/globalsearch/widgetview/cpu/a;->a:Ljava/util/List;

    invoke-static {p0}, Lcom/zui/launcher/globalsearch/widgetview/cpu/PollingUtil;->b(Ljava/util/List;)V

    return-void
.end method
