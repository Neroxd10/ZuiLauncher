.class public final synthetic Lcom/zui/launcher/popup/n;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:[Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zui/launcher/popup/n;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/zui/launcher/popup/n;->b:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/zui/launcher/popup/n;->a:Ljava/lang/String;

    iget-object p0, p0, Lcom/zui/launcher/popup/n;->b:[Ljava/lang/String;

    check-cast p1, Lcom/zui/launcher/notification/NotificationKeyData;

    invoke-static {v0, p0, p1}, Lcom/zui/launcher/popup/PopupDataProvider;->c(Ljava/lang/String;[Ljava/lang/String;Lcom/zui/launcher/notification/NotificationKeyData;)Z

    move-result p0

    return p0
.end method
