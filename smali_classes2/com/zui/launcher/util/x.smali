.class public final synthetic Lcom/zui/launcher/util/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Lcom/zui/launcher/util/MainThreadInitializedObject;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/zui/launcher/util/MainThreadInitializedObject;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/x;->a:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iput-object p2, p0, Lcom/zui/launcher/util/x;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/x;->a:Lcom/zui/launcher/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/zui/launcher/util/x;->b:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/zui/launcher/util/MainThreadInitializedObject;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
