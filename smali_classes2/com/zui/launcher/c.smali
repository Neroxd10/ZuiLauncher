.class public final synthetic Lcom/zui/launcher/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/AllAppsList;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/AllAppsList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/c;->a:Lcom/zui/launcher/AllAppsList;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/c;->a:Lcom/zui/launcher/AllAppsList;

    invoke-virtual {p0}, Lcom/zui/launcher/AllAppsList;->e()V

    return-void
.end method
