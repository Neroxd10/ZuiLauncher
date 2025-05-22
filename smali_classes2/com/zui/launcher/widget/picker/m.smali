.class public final synthetic Lcom/zui/launcher/widget/picker/m;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/widget/picker/WidgetsFullSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/widget/picker/m;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/widget/picker/m;->a:Lcom/zui/launcher/widget/picker/WidgetsFullSheet;

    invoke-virtual {p0}, Lcom/zui/launcher/widget/picker/WidgetsFullSheet;->B()V

    return-void
.end method
