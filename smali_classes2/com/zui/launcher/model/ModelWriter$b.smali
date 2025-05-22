.class Lcom/zui/launcher/model/ModelWriter$b;
.super Lcom/zui/launcher/model/ModelWriter$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/launcher/model/ModelWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final d:Lcom/zui/launcher/ItemInfo;

.field private final e:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/util/ContentWriter;",
            ">;"
        }
    .end annotation
.end field

.field private final f:I

.field final synthetic g:Lcom/zui/launcher/model/ModelWriter;


# direct methods
.method constructor <init>(Lcom/zui/launcher/model/ModelWriter;Lcom/zui/launcher/ItemInfo;Ljava/util/function/Supplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/zui/launcher/ItemInfo;",
            "Ljava/util/function/Supplier<",
            "Lcom/zui/launcher/util/ContentWriter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zui/launcher/model/ModelWriter$b;->g:Lcom/zui/launcher/model/ModelWriter;

    invoke-direct {p0, p1}, Lcom/zui/launcher/model/ModelWriter$a;-><init>(Lcom/zui/launcher/model/ModelWriter;)V

    iput-object p2, p0, Lcom/zui/launcher/model/ModelWriter$b;->d:Lcom/zui/launcher/ItemInfo;

    iput-object p3, p0, Lcom/zui/launcher/model/ModelWriter$b;->e:Ljava/util/function/Supplier;

    iget p1, p2, Lcom/zui/launcher/ItemInfo;->id:I

    iput p1, p0, Lcom/zui/launcher/model/ModelWriter$b;->f:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget v0, p0, Lcom/zui/launcher/model/ModelWriter$b;->f:I

    invoke-static {v0}, Lcom/zui/launcher/LauncherSettings$Favorites;->getContentUri(I)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/launcher/model/ModelWriter$b;->g:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v1}, Lcom/zui/launcher/model/ModelWriter;->a(Lcom/zui/launcher/model/ModelWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/zui/launcher/model/ModelWriter$b;->e:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zui/launcher/util/ContentWriter;

    iget-object v3, p0, Lcom/zui/launcher/model/ModelWriter$b;->g:Lcom/zui/launcher/model/ModelWriter;

    invoke-static {v3}, Lcom/zui/launcher/model/ModelWriter;->a(Lcom/zui/launcher/model/ModelWriter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/zui/launcher/util/ContentWriter;->getValues(Landroid/content/Context;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v0, p0, Lcom/zui/launcher/model/ModelWriter$b;->d:Lcom/zui/launcher/ItemInfo;

    iget v1, p0, Lcom/zui/launcher/model/ModelWriter$b;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/zui/launcher/model/ModelWriter$a;->a(Lcom/zui/launcher/ItemInfo;I)V

    return-void
.end method
