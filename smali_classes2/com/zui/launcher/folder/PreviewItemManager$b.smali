.class Lcom/zui/launcher/folder/PreviewItemManager$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/PreviewItemManager;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/PreviewItemManager;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/PreviewItemManager;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/PreviewItemManager$b;->a:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/PreviewItemManager$b;->a:Lcom/zui/launcher/folder/PreviewItemManager;

    invoke-static {p0}, Lcom/zui/launcher/folder/PreviewItemManager;->c(Lcom/zui/launcher/folder/PreviewItemManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
