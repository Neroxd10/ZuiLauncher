.class Lcom/zui/launcher/folder/FolderIcon$f;
.super Landroid/util/Property;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/folder/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/zui/launcher/folder/FolderIcon;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/zui/launcher/folder/FolderIcon;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p1}, Lcom/zui/launcher/folder/FolderIcon;->e(Lcom/zui/launcher/folder/FolderIcon;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public b(Lcom/zui/launcher/folder/FolderIcon;Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/zui/launcher/folder/FolderIcon;->f(Lcom/zui/launcher/folder/FolderIcon;Ljava/lang/Integer;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/zui/launcher/folder/FolderIcon$f;->a(Lcom/zui/launcher/folder/FolderIcon;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/zui/launcher/folder/FolderIcon;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/zui/launcher/folder/FolderIcon$f;->b(Lcom/zui/launcher/folder/FolderIcon;Ljava/lang/Integer;)V

    return-void
.end method
