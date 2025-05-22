.class public final synthetic Lcom/zui/launcher/icons/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/icons/ComponentWithLabel;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/icons/ComponentWithLabel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/icons/j;->a:Lcom/zui/launcher/icons/ComponentWithLabel;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/icons/j;->a:Lcom/zui/launcher/icons/ComponentWithLabel;

    invoke-static {p0}, Lcom/zui/launcher/icons/IconCache;->s(Lcom/zui/launcher/icons/ComponentWithLabel;)Lcom/zui/launcher/icons/ComponentWithLabel;

    return-object p0
.end method
