.class public final synthetic Lcom/zui/quickstep/util/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/TogglableFlag;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/TogglableFlag;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/quickstep/util/k;->a:Lcom/zui/launcher/TogglableFlag;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/quickstep/util/k;->a:Lcom/zui/launcher/TogglableFlag;

    invoke-virtual {p0}, Lcom/zui/launcher/config/BaseFlags$BaseTogglableFlag;->get()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
