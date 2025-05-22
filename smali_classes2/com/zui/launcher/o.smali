.class public final synthetic Lcom/zui/launcher/o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/CheckLongPressHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/CheckLongPressHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/o;->a:Lcom/zui/launcher/CheckLongPressHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/o;->a:Lcom/zui/launcher/CheckLongPressHelper;

    invoke-static {p0}, Lcom/zui/launcher/CheckLongPressHelper;->c(Lcom/zui/launcher/CheckLongPressHelper;)V

    return-void
.end method
