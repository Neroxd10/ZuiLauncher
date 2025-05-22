.class Lcom/zui/launcher/folder/Folder$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/zui/launcher/Workspace$ItemOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/launcher/folder/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/zui/launcher/folder/Folder;


# direct methods
.method constructor <init>(Lcom/zui/launcher/folder/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/zui/launcher/folder/Folder$d;->a:Lcom/zui/launcher/folder/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lcom/zui/launcher/ItemInfo;Landroid/view/View;)Z
    .locals 0

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder$d;->a:Lcom/zui/launcher/folder/Folder;

    iget-object p0, p0, Lcom/zui/launcher/folder/Folder;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x0

    return p0
.end method
