.class public final synthetic Lcom/zui/launcher/j;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic a:Landroid/content/res/Resources;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/j;->a:Landroid/content/res/Resources;

    iput p2, p0, Lcom/zui/launcher/j;->b:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/j;->a:Landroid/content/res/Resources;

    iget p0, p0, Lcom/zui/launcher/j;->b:I

    invoke-static {v0, p0}, Lcom/zui/launcher/AutoInstallsLayout;->d(Landroid/content/res/Resources;I)Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p0

    return-object p0
.end method
