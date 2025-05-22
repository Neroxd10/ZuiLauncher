.class public final synthetic Lcom/zui/launcher/util/z;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/zui/launcher/util/MainThreadInitializedObject$ObjectProvider;


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/util/z;->a:Ljava/lang/Class;

    iput p2, p0, Lcom/zui/launcher/util/z;->b:I

    return-void
.end method


# virtual methods
.method public final get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/util/z;->a:Ljava/lang/Class;

    iget p0, p0, Lcom/zui/launcher/util/z;->b:I

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/util/MainThreadInitializedObject;->a(Ljava/lang/Class;ILandroid/content/Context;)Lcom/zui/launcher/util/ResourceBasedOverride;

    move-result-object p0

    return-object p0
.end method
